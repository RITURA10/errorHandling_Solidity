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
