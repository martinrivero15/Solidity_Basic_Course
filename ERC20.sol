// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MartinNicolasRivero is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("MartinNicolasRivero", "MNR")
        Ownable(initialOwner)
        ERC20Permit("MartinNicolasRivero")
    {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

// smart contract sepolia arbiscan https://sepolia.arbiscan.io/address/0x4129f5Eb2F5197B276258308D8D45d64f5b8fbAc
