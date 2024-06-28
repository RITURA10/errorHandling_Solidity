# ErrorHandling_Solidity

The purpose of this code is to demonstrate the implementation of error handling in Solidity smart contracts using all the three methods of error handling in solidity. This contract provides clear examples of how to validate input, ensure internal consistency, and handle exceptional conditions effectively.

## Description

The `ErrorHandlingExample` contract is a simple Solidity smart contract that demonstrates the use of error handling methods: `require()`, `assert()`, and `revert()`. This contract includes functions to set, double, and reset a balance with built-in checks to ensure proper error handling and validation.

## Language used

![Solidity](https://img.shields.io/badge/Solidity-0.8.0-blue)

## Getting Started

### Prerequisites

To work with this contract, you'll need the following:

- [Remix IDE](https://remix.ethereum.org/): A web-based Ethereum development environment.
- Basic understanding of Solidity and smart contracts.

### Installation

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file named `ErrorHandling.sol`.
3. Copy and paste the following code into the new file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint256 public balance;

    // Function to set balance with require for validation
    function setBalance(uint256 newBalance) public {
        require(newBalance > 0, "Balance must be positive");
        balance = newBalance;
    }

    // Function to double the balance with assert to check internal consistency
    function doubleBalance() public {
        balance *= 2;
        assert(balance % 2 == 0); // Check that balance is even
    }

    // Function to reset balance with revert for custom error handling
    function resetBalance() public {
        if (balance == 0) {
            revert("Balance is already zero");
        }
        balance = 0;
    }
}
```

## Authors

[@RiturajParash18](https://x.com/RiturajParash18?t=yIGVBeLdd_8ZXRQcSTfvIg&s=09)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details


