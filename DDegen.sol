// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DDegen is ERC20, Ownable {

    // Define updated item names for redemption
    string[] public itemNames = ["1. Legendary Sword", "2. Magic Amulet", "3. Enchanted Shield", 
    "4. Novice Wand"];

     constructor() ERC20("Delloite_DGN", "DDGN") Ownable(msg.sender)  {}

    // Mint new tokens and assign to the specified address
    function mintTokens(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Transfer tokens with additional checks
    function transferTokens(address to, uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens, please try again");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }

    // Redeem specific items based on conditions
    function redeemItem(uint redeemCode) public returns (string memory) {
        uint requiredBalance;
        uint burnAmount;
        string memory itemName;

        if (redeemCode == 1111) {
            requiredBalance = 1000;
            burnAmount = 150;
            itemName = itemNames[3];
        } else if (redeemCode == 2222) {
            requiredBalance = 1000;
            burnAmount = 1000;
            itemName = itemNames[2];
        } else if (redeemCode == 3333) {
            requiredBalance = 1000;
            burnAmount = 500;
            itemName = itemNames[1];
        } else if (redeemCode == 4444) {
            requiredBalance = 1000;
            burnAmount = 100;
            itemName = itemNames[0];
        } else {
            return "Invalid redemption code";
        }

        require(balanceOf(msg.sender) >= requiredBalance, "Insufficient Tokens, please try again");
        _burn(msg.sender, burnAmount);
        return itemName;
    }

    // View the balance of the caller
    function viewBalanceOfCaller() public view returns (uint) {
        return balanceOf(msg.sender);
    }

    // Burn a specified amount of the caller's tokens
    function burnTokens(uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens, please try again");
        _burn(msg.sender, amount);
    }
}
