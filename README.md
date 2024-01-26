# Degen_gaming
Using Avalanche and creating a contract for degen gaming with some functionalities.

### Token Functionality 

1. `totalSupply()`: Returns the total supply of DegenTokens.
2. `viewBalanceOfCaller(address account)`: Returns the token balance of the specified account.
3. `transferToken(address to, uint256 value)`: Transfers tokens from the sender's account to the specified recipient.
4. `burnToken(uint256 value)`: Burns tokens from the sender's account, reducing the total supply.
5. `mintToken(address to, uint256 value)`: Mints new tokens and assigns them to the specified recipient. Only the contract owner can perform this operation.
6. `redeem(string memory itemName, uint256 value)`: Allows the sender to redeem tokens for an item in the in-game store.


## Contract Keyfeatures
1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2.Transferring tokens: Players should be able to transfer their tokens to others.
3.Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4.Checking token balance: Players should be able to check their token balance at any time.
5.Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

## License
This project is licensed under the [MIT License](LICENSE).

## Author
 Mamta Chintalwar
