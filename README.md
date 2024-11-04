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
- **Phi Function (Φ)**: Calculates the cumulative distribution function (CDF) of the normal distribution.

## How It Works
The library is built with Solidity's constraints in mind, such as gas limits and the absence of floating-point arithmetic. It ensures compatibility by leveraging fixed-point math for handling decimal values and employs efficient algorithms for computations. We use **DS-Math** from DappHub to operate with floating-point arithmetic for calculating the Phi function, which is then used to compute the Z-value of the normal distribution.

```solidity
import "./Solinference.sol";

contract MyStatsContract is Solinference {

    function getStats(uint[] memory data) public view returns (uint _mean, uint _median, uint _mode, uint _range, uint _variance, uint _stdDev) {
        _mean = data.mean();
        _median = data.median();
        _mode = data.mode();
        _range = data.range();
        _variance = data.variance();
        _stdDev = data.stdDev();
    }

    // This function needs to be corrected; it is not working
    function getPhiValue(int z) public view returns (uint phi) {
        phi = StatsLibrary.phi(z);
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

## Future Work

We aim to continue improving the library by adding more advanced statistical functions (e.g., covariance, correlation), incorporating additional distributions (e.g., Chi-square, F, Binomial), and optimizing gas usage for larger datasets.
