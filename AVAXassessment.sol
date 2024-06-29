pragma solidity 0.8.26;

contract MyToken {
    // Public variables
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping to track balances
    mapping(address => uint256) public balances;

    // Mint function with assert and require
    function mint(address to, uint256 amount) public {
        require(to != address(0), "Invalid address");
        totalSupply += amount;
        balances[to] += amount;
        assert(balances[to] >= amount); // Ensure balance update is correct
    }

    // Burn function with require
    function burn(address from, uint256 amount) public {
        require(balances[from] >= amount, "Insufficient balance to burn");
        require(from != address(0), "Invalid address");
        require(totalSupply >= amount, "Cannot burn more than total supply");

        totalSupply -= amount;
        balances[from] -= amount;
    }

    // Transfer tokens from one address to another
    function transferFrom(address sender, address recipient, uint256 amount) public {
        require(sender != address(0), "Invalid sender address");
        require(recipient != address(0), "Invalid recipient address");
        require(balances[sender] >= amount, "Insufficient balance");
        
        balances[sender] -= amount;
        balances[recipient] += amount;

        // Simulate a condition where transfer fails and revert
        if (amount > 100) {
            revert("Transfer amount exceeds maximum limit of 100 tokens");
        }
    }
}
//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
