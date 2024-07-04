// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LoyaltyPoints is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    // Function to mint tokens (Loyalty Points)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function for users to burn their own tokens (Loyalty Points)
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Explicitly adding the transfer function
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}

//0x1234567890abcdef1234567890abcdef12345678
