// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MemeCoin is ERC20("This Is Fine", "TIF") {
    constructor() {
        _mint(msg.sender, 100 ether);
    }
}
