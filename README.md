# MyToken Smart Contract

This repository contains the Solidity code for `MyToken`, a simple ERC-20-like token contract. The contract includes basic functionalities for minting, burning, and transferring tokens.

## Contract Overview

The `MyToken` contract provides the following functionalities:

1. **Minting Tokens**: Allows the creation of new tokens.
2. **Burning Tokens**: Allows the destruction of existing tokens.
3. **Transferring Tokens**: Allows the transfer of tokens from one address to another.

## Public Variables

- `name`: The name of the token (`MyToken`).
- `symbol`: The symbol of the token (`MTK`).
- `totalSupply`: The total supply of tokens in circulation.
- `balances`: A mapping that tracks the balance of each address.

## Functions

### `mint`

```solidity
function mint(address to, uint256 amount) public;
Mints new tokens and assigns them to the specified address.

to: The address to receive the minted tokens.
amount: The number of tokens to mint.

function burn(address from, uint256 amount) public;
Burns tokens from the specified address.

from: The address from which the tokens will be burned.
amount: The number of tokens to burn.

function transferFrom(address sender, address recipient, uint256 amount) public;

Transfers tokens from one address to another.

sender: The address from which the tokens will be sent.
recipient: The address to receive the tokens.
amount: The number of tokens to transfer.
