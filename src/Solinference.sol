// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { DSMath } from "lib/ds-math/src/math.sol";
import { ZTableMapping } from "./Z-mapping.sol";

contract Solinference  is DSMath {
    ZTableMapping private zTableInstance;

    constructor(address _zTableMappingAddress) {
        zTableInstance = ZTableMapping(_zTableMappingAddress);
    }

    // Calculate the mean of an array of integer values
    function mean(int[] memory data) public pure returns (int) {
        require(data.length > 0, "Data array is empty");
        int sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum += data[i];
        }
        return sum / int(data.length);
    }

    // Sort the array in ascending order
    function bubbleSort(int[] memory arr) public pure returns (int[] memory) {
        uint n = arr.length;
        for (uint i = 0; i < n - 1; i++) {
            for (uint j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]);
                }
            }
        }
        return arr;
    }

    // Calculate the median of an array of values
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

    // Calculate the range of an array of values
    function range(int[] memory data) public pure returns (uint256) {
        require(data.length > 0, "Data array is empty");
        int[] memory sortedArray = bubbleSort(data);
        int minValue = sortedArray[0];
        int maxValue = sortedArray[sortedArray.length - 1];
        return uint256(maxValue > minValue ? maxValue - minValue : minValue - maxValue);
    }
    
    // Calculate the mode of an array of values
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

    // Calculate the variance of an array of values
    function variance(int[] memory values) public pure returns (int) {
        require(values.length > 0, "Array is empty");
        int meanValue = mean(values);
        int sumOfSquaredDifferences = 0;
        for (uint i = 0; i < values.length; i++) {
            int difference = values[i] - meanValue;
            int squaredDifference = difference * difference;
            sumOfSquaredDifferences += squaredDifference;
        }
        // Calculate the variance
        int varianceResult = sumOfSquaredDifferences / int(values.length);
        // Adjust the scale by dividing by 10^22
        return varianceResult / 10**22;
    }

    // Custom square root function
    function sqrt(uint x) internal pure returns (int y) {
        uint z = (x + 1) / 2;
        uint y_uint = x;
        while (z < y_uint) {
            y_uint = z;
            z = (x / z + z) / 2;
        }
        y = int(y_uint);
        require(y >= 0, "Overflow: sqrt result doesn't fit in int");
    }

    // Calculate the standard deviation of an array of values
    function stdDev(int[] memory values) public pure returns (int) {
        int _variance = variance(values);
        return int(sqrt(uint256(_variance)));
    }
    
    // Function to round to the nearest integer (for both positive and negative numbers)
    function roundToNearestInteger(int256 number) public pure returns (int256) {
        if (number >= 0) {
            return (number + 5 * 10**17) / 10**18;
        } else {
            return (number - 5 * 10**17) / 10**18;
        }
    }

    // Function to calculate z-value
    // z = (proposed mean - sample mean) / (standard deviation / sqrt(array size))
    function zValue(int[] memory values, int _proposedMean) public pure returns (int) {
        require(values.length > 0, "Data array must not be empty");
        int sampleMean = mean(values);
        uint _stdDev = uint(stdDev(values));
        require(_stdDev != 0, "Standard deviation cannot be zero");
        uint arraySize = values.length * WAD;

        int sqrtSize = int(sqrt(arraySize));  // sqrt(array size)
        int stdError = int(_stdDev) * int(WAD) / sqrtSize;  // Standard error = stdDev / sqrt(array size)
        int numerator = (_proposedMean - sampleMean) * int(WAD);
        int _zValue = numerator / stdError;  // z = (proposedMean - sampleMean) / stdError
        int ZValue = roundToNearestInteger(_zValue);
        return ZValue;
    }

    // Function to retrieve the value from the zTable
    // The input will be the full z-value scaled by 100, e.g., -2.35 -> -235
    function getProbability(int[] memory values, int proposedMean) public view returns (int) {
        int phi = zValue(values, proposedMean);
        int prob = zTableInstance.zTable(phi);
        return prob;
    }
}
