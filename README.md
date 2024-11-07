# BETA
This code is in Beta and is not ready for production.

# INFERENCE LIBRARY

**Solinference** is a statistical inference library implemented in Solidity that provides a set of statistical functions for performing basic descriptive statistics and statistical inference on-chain. The library is designed to operate efficiently within Solidity’s constraints and offers a variety of common statistical functions. It consists of two contracts: **Solinference** and **Z-mapping**.

The **Solinference** contract contains the main statistical inference functions, including mean, median, mode, range, variance, standard deviation, population variance, and population standard deviation. **Z-mapping** is a contract that contains a mapping from Phi to the normal distribution density. The normal distribution (also known as Gaussian or bell curve distribution) is used for modeling randomness and is commonly employed in the pricing of financial assets.

Using distribution functions in Solidity poses challenges because they often require handling irrational numbers and many decimals. By creating a library with Phi values corresponding to values within the density, we can eliminate the need to hardcode approximations for irrational numbers, allowing us to work exclusively with decimals of Phi in the range of [-3.49, 3.49]. By utilizing **DS-Math** from DappHub, we can safely use fixed-point decimal numbers to interact with the Inference library. Performing complex calculations related to probability distributions can be GAS inefficient, so having a library with the proper mapping of Phi values to probability density can be of great benefit to the community.

## Features
The following statistical functions are included in this library:

- **Mean**: Calculates the average of a given set of values.
- **Median**: Finds the middle value in a sorted dataset.
- **Mode**: Determines the most frequent value(s) in the dataset.
- **Range**: Computes the difference between the maximum and minimum values.
- **Variance**: Measures the dispersion of data points in relation to the mean.
- **Standard Deviation**: Assesses the amount of variation or dispersion of a dataset.
- **Z-Score**: Calculates the number of standard deviations a value is from the mean. The value is rounded to the nearest hundredth.
- **Get Probability**: Calculates the cumulative distribution function (CDF) of the normal distribution. The probability is defined between 0 and 10,000.

## How It Works
The library is built with Solidity's constraints in mind, such as gas limits and the absence of floating-point arithmetic. It ensures compatibility by leveraging fixed-point math for handling decimal values and employs efficient algorithms for computations. We use **DS-Math** from DappHub to operate with fixed-point arithmetic for calculating the Phi function, which is then used to compute the Z-value of the normal distribution. Therefore, all values must be in fixed-point format (WAD) for the functions to work.

```solidity
import { Solinference } from "./Solinference.sol";
import { ZTableMapping } from "./Z-mapping.sol";

contract MyStatsContract is Solinference {
    ZTableMapping private zTableInstance;

    constructor(address _zTableMappingAddress) {
        zTableInstance = ZTableMapping(_zTableMappingAddress);
    }

    // All these functions take as input an array of integers in fixed-point format (WAD).
    function getStats(uint[] memory data) public view returns (uint _mean, uint _median, int[] memory _mode, uint _range, uint _variance, uint _stdDev) {
        _mean = Solinference.mean(data); // Mean
        _median = Solinference.median(data); // Median
        _mode = Solinference.mode(data); // Mode
        _range = Solinference.range(data); // Range
        _variance = Solinference.variance(data); // Variance
        _stdDev = Solinference.stdDev(data); // Standard Deviation
    }

    // This function takes as input an array of integers in fixed-point format (WAD) and an integer representing the proposed mean.
    function getZScore(uint[] memory data, uint _proposedMean) public view returns (uint _zScore) {
        _zScore = Solinference.zScore(data, _proposedMean); // Z-Score
    }

    // This function takes as input an array of integers in fixed-point format (WAD) and an integer representing the proposed mean.
    function hypothesisTest(uint[] memory data, uint _proposedMean) public view returns (uint _probability) {
        _probability = Solinference.getProbability(data, _proposedMean); // Get Probability
    }
}
```

## Phi Function for Statistical Inference

The Phi function in this library calculates the CDF of the standard normal distribution. It allows users to compute the probability that a value drawn from a normal distribution is less than or equal to a specified z value. This is particularly useful in hypothesis testing, confidence intervals, and the pricing of financial assets (e.g., Black-Scholes), as well as in other statistical inference scenarios, all while being able to do this on-chain.

If a given dataset is normally distributed (X ~ N(μ, σ²)), we normalize the data by converting it into a Standard Normal Distribution (N(0, 1)) using the formula: 

z = (X - μ) / σ

This transformation allows us to use the Z-table to find the Phi value, which we can then use to calculate the probability of the value being within the z-value: 

P(X ≤ x) = Φ((x - μ) / σ)

## Solidity Version

This library is compatible with Solidity version >=0.8.0, leveraging the built-in overflow protections introduced in newer versions.

## Installation

1. Clone this repository.
2. Import `Solinference.sol` into your Solidity project.

In order to use the Z-mapping, you must deploy the ZTableMapping contract and pass the address to the Solinference contract.

```solidity
import { ZTableMapping } from "./Z-mapping.sol";

contract ContractNmae {
    ZTableMapping private zTableInstance;

    constructor(address _zTableMappingAddress) {
        zTableInstance = ZTableMapping(_zTableMappingAddress);

    ... //Rest of contract code
    }
}
```

## Future Work

We aim to continue improving the library by adding more advanced statistical functions (e.g., covariance, correlation), incorporating additional distributions (e.g., Chi-square, F, Binomial), optimizing gas usage for larger datasets, adding hypothesis testing (greater than, less than, in between), adding confidence intervals and more!
