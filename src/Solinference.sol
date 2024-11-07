// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { DSMath } from "lib/ds-math/src/math.sol";
import { ZTableMapping } from "./Z-mapping.sol";


/**
 * @title Solinference
 * @dev A contract for statistical inference using Z-scores and mapping based on Z-tables.
 *      It inherits functionality from `DSMath` for mathematical operations.
 *      The contract interacts with a Z-table mapping contract to retrieve probability values.
 */
contract Solinference  is DSMath {
    ZTableMapping private zTableInstance;

    /**
     * @notice Constructor that initializes the contract with the address of a Z-table mapping contract.
     * @dev Sets the address of the `ZTableMapping` contract, which is used to fetch Z-table values
     *      for calculating probabilities based on Z-scores.
     * @param _zTableMappingAddress The address of the deployed `ZTableMapping` contract.
     */
    constructor(address _zTableMappingAddress) {
        zTableInstance = ZTableMapping(_zTableMappingAddress);
    }

    /**
    * @notice Calculates the mean (average) of a dataset.
    * @dev Computes the mean by summing all elements in `data` and dividing by the number of elements.
    *      Requires that the dataset is non-empty.
    * @param data An array of integer data points representing the dataset.
    * @return int The calculated mean of the dataset as an integer.
    * @custom:requirements The dataset must not be empty and in fixed-point WAD format
    */
    function mean(int[] memory data) public pure returns (int) {
        require(data.length > 0, "Data array is empty");
        int sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum += data[i];
        }
        return sum / int(data.length);
    }

    /**
    * @notice Sorts an array of integers in ascending order using the bubble sort algorithm.
    * @dev Performs an in-place sort on the array `data` by repeatedly swapping adjacent elements
    *      if they are out of order.
    * @param data An array of integers to be sorted in ascending order.
    * @return int[] The sorted array in ascending order.
    */
    function bubbleSort(int[] memory data) public pure returns (int[] memory) {
        uint n = data.length;
        for (uint i = 0; i < n - 1; i++) {
            for (uint j = 0; j < n - i - 1; j++) {
                if (data[j] > data[j + 1]) {
                    (data[j], data[j + 1]) = (data[j + 1], data[j]);
                }
            }
        }
        return data;
    }

    /**
    * @notice Calculates the median of a dataset.
    * @dev The function first sorts the array `data` in ascending order using `bubbleSort`. 
    *      It then finds the median: for an odd-length array, the middle element; for an even-length array, 
    *      the average of the two middle elements.
    * @param data An array of integer data points representing the dataset.
    * @return int The median of the dataset as an integer.
    * @custom:requirements The dataset must not be empty.
*/
    function median(int[] memory data) public pure returns (int) {
        require(data.length > 0, "Data array is empty");
        int[] memory sortedData = bubbleSort(data);
        uint middle = sortedData.length / 2;
        if (sortedData.length % 2 == 0) {
            return (sortedData[middle - 1] + sortedData[middle]) / 2;
        } else {
            return sortedData[middle];
        }
    }

    /**
    * @notice Calculates the range of values in a dataset.
    * @dev The function first sorts the array `data` in ascending order using `bubbleSort`. 
    *      It then calculates the range as the difference between the maximum and minimum values.
    * @param data An array of integer data points representing the dataset.
    * @return uint256 The range of the dataset as an unsigned integer.
    * @custom:requirements The dataset must not be empty.
    */
    function range(int[] memory data) public pure returns (uint256) {
        require(data.length > 0, "Data array is empty");
        int[] memory sortedArray = bubbleSort(data);
        int minValue = sortedArray[0];
        int maxValue = sortedArray[sortedArray.length - 1];
        return uint256(maxValue > minValue ? maxValue - minValue : minValue - maxValue);
    }
    
    /**
    * @notice Finds the mode(s) of a dataset, which is the most frequently occurring value(s).
    * @dev This function iterates through the array `data` to identify unique values and their frequencies.
    *      It stores each unique value along with its frequency in separate arrays. After determining 
    *      the highest frequency, it returns an array containing the mode(s) (i.e., values that appear 
    *      the most frequently).
    * @param data An array of integer data points representing the dataset.
    * @return int[] An array containing the mode(s) of the dataset. If multiple values have the highest 
    *               frequency, all such values are returned.
    * @custom:requirements The dataset must not be empty.
    */
    function mode(int[] memory data) public pure returns (int[] memory) {
        uint256 len = data.length;
        require(len > 0, "Array is empty");
        
        // Temporary arrays for unique numbers and their frequencies
        int[] memory uniqueNumbers = new int[](len);
        uint256[] memory frequencies = new uint256[](len);
        uint256 uniqueCount = 0;
        uint256 highestCount = 0;
        
        // Loop through the array and count occurrences
        for (uint256 i = 0; i < len; i++) {
            int num = data[i];
            bool found = false;
            
            // Check if the number has been encountered before
            for (uint256 j = 0; j < uniqueCount; j++) {
                if (uniqueNumbers[j] == num) {
                    frequencies[j]++;
                    found = true;
                    if (frequencies[j] > highestCount) {
                        highestCount = frequencies[j];
                    }
                    break;
                }
            }
            
            // If the number is unique, add it to the uniqueNumbers array
            if (!found) {
                uniqueNumbers[uniqueCount] = num;
                frequencies[uniqueCount] = 1;
                if (1 > highestCount) {
                    highestCount = 1;
                }
                uniqueCount++;
            }
        }
        
        // Count how many numbers have the highest frequency
        uint256 resultCount = 0;
        for (uint256 i = 0; i < uniqueCount; i++) {
            if (frequencies[i] == highestCount) {
                resultCount++;
            }
        }
        
        // Create a new array to store the result
        int[] memory result = new int[](resultCount);
        uint256 index = 0;
        
        // Populate the result array with numbers that have the highest frequency
        for (uint256 i = 0; i < uniqueCount; i++) {
            if (frequencies[i] == highestCount) {
                result[index] = uniqueNumbers[i];
                index++;
            }
        }
        
        return result;
    }

    /**
    * @notice Calculates the variance of a dataset.
    * @dev The variance is computed by finding the mean of the squared differences from the mean.
    *      First, the mean of `data` is calculated. Then, for each value, the squared difference from
    *      the mean is summed. The function divides the sum by the number of values to get the variance.
    * @param data An array of integer data points representing the dataset.
    * @return int The calculated variance of the dataset as an integer.
    * @custom:requirements The dataset must not be empty.
    */
    function variance(int[] memory data) public pure returns (int) {
        require(data.length > 0, "Array is empty");
        int meanValue = mean(data);
        int sumOfSquaredDifferences = 0;
        for (uint i = 0; i < data.length; i++) {
            int difference = data[i] - meanValue;
            int squaredDifference = (difference * difference) / int(WAD);
            sumOfSquaredDifferences += squaredDifference;
        }
        return sumOfSquaredDifferences / int(data.length);
    }

    /**
    * @notice Computes the square root of a given integer `x`.
    * @dev Uses the Babylonian method to iteratively approximate
    *      the square root of `x`. The result is scaled by 10^9 to maintain precision.
    * @param x The integer for which to calculate the square root.
    * @return y The square root of `x`, scaled by 10^9 for precision.
    * @custom:requirements The input `x` must be non-negative to avoid underflow. Also, negative numbers don't have square roots.
    */
    function sqrt(int x) public pure returns (int y) {
        // Compute the square root
        int z = (x + 1) / 2;
        int y_uint = x;
        while (z < y_uint) {
            y_uint = z;
            z = (x / z + z) / 2;
        }
        // We need to scale it by 10^9 to maintain ray precision
        // Since sqrt(x * 10^18) = sqrt(x) * 10^9
        y_uint = y_uint * 10**9;
        y = int(y_uint);
        require(y >= 0, "Underflow: sqrt result doesn't fit in int");
    }

    /**
    * @notice Calculates the standard deviation of a dataset.
    * @dev The standard deviation is computed by taking the square root of the variance of `values`.
    *      Requires that the dataset is non-empty, as `variance` requires a non-empty dataset.
    * @param values An array of integer data points representing the dataset.
    * @return int The calculated standard deviation of the dataset as an integer, scaled for precision.
    * @custom:requirements The dataset must not be empty.
    */
    function stdDev(int[] memory values) public pure returns (int) {
        int _variance = variance(values);
        return sqrt(_variance);
    }

    /**
    * @notice Rounds a given integer to the nearest hundredth.
    * @dev This function rounds the input `number` to the nearest integer in the hundredths place
    *      by adding or subtracting a scaling factor based on the sign of the number and then dividing 
    *      by 10^16 to maintain precision.
    * @param number The integer to be rounded.
    * @return int The rounded integer.
    * @custom:requirements The number must be in WAD format (10^18).
    */
    function roundToHundredths(int number) public pure returns (int) {
        if (number >= 0) {
            return (number + 5 * 10**15) / (10**16);
        } else {
            return (number - 5 * 10**15) / (10**16);
        }
    }


    /**
    * @notice Calculates the z-score of a proposed mean against a sample dataset.
    * @dev Computes the z-score using the formula: (proposedMean - sampleMean) / (stdDev / sqrt(n)),
    *      where `stdDev` is the standard deviation of the sample data, and `n` is the sample size.
    *      The function requires a non-empty dataset and a non-zero standard deviation.
    * @param values An array of integer data points representing the sample dataset.
    * @param _proposedMean The hypothesized population mean to test against.
    * @return int The calculated z-score, rounded to the nearest hundredths.
    * @custom:requirements All calculations are performed using WAD (10^18) precision,
    *                      the dataset must not be empty, and its standard deviation must not be zero.
    */
    function zScore(int[] memory values, int _proposedMean) public pure returns (int) {
        require(values.length > 0, "Data array must not be empty");
        int sampleMean = mean(values);
        int _stdDev = stdDev(values);
        require(_stdDev != 0, "Standard deviation cannot be zero");
        
        // Calculate sqrt(array size)
        int arraySize = int(values.length * WAD);
        int sqrtSize = sqrt(arraySize);
        
        // Calculate standard error (stdDev / sqrt(array size))
        int stdError = _stdDev * int(WAD) / sqrtSize;
        
        // Calculate z-score = (mean - proposedMean) / stdError
        int numerator = (_proposedMean - sampleMean) * int(WAD);
        int _zScore = numerator / stdError;
        
        return roundToHundredths(_zScore);
    }

    /**
    * @notice Calculates the probability of a given value within a dataset based on its z-score.
    * @dev The function first calculates the z-score of the specified `value` within the dataset `data`.
    *      It then retrieves the corresponding probability from a Z-score table using a contract instance.
    * @param data An array of integer data points representing the dataset.
    * @param value The specific value for which to calculate the probability within the dataset.
    * @return int256 The probability associated with the calculated z-score, as an integer between 0 and 10,000.
    */
    function getProbability(int[] memory data, int256 value) public view returns (int256) {
        // Calculate z-score first
        int256 zScoreResult = zScore(data, value);
        
        // Get probability from Z-mapping using contract instance
        return zTableInstance.zTable(zScoreResult);
    }
}
