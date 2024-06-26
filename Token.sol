// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract LoyaltyPoints is ERC20, Ownable {
 // Function to mint tokens (Loyalty Points)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
// Function for users to burn their own tokens (Loyalty Points)
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
   // Transfer function is already part of the ERC20 standard
}
//0x1234567890abcdef1234567890abcdef12345678


