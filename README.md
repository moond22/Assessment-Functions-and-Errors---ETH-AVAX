# Error Handling Example

This Solidity program demonstrates the use of error handling statements `require()`, `assert()`, and `revert()` in a smart contract. The contract manages a simple integer value, ensuring robust error checking and handling.

## Description

This program includes a contract that showcases the basic syntax and functionality of error handling in Solidity. It serves as a starting point for developers who want to understand how to use `require()`, `assert()`, and `revert()` statements effectively. The contract includes functions to set, double, and reset an integer value, with appropriate error checks.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `ErrorHandlingExample.sol`). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {

    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender; // Setting the contract deployer as the owner
    }

    // Function to demonstrate the use of require()
    function setValue(uint256 _value) public {
        // Check that the sender is the owner
        require(msg.sender == owner, "Only the owner can set the value");
        // Check that the value is greater than 0
        require(_value > 0, "Value must be greater than 0");

        value = _value;
    }

    // Function to demonstrate the use of assert()
    function doubleValue() public {
        uint256 newValue = value * 2;
        // Use assert to ensure no overflow occurs
        assert(newValue / 2 == value);

        value = newValue;
    }

    // Function to demonstrate the use of revert()
    function resetValue() public {
        // Check that the sender is the owner
        if (msg.sender != owner) {
            revert("Only the owner can reset the value");
        }

        value = 0;
    }
}
'''solidity


### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `ErrorHandlingExample.sol`). Copy and paste the following code into the file:


