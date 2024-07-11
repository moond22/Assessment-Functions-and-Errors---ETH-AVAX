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
