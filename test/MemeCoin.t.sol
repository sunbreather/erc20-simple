// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MemeCoin.sol";
import "@openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MemeCoinTest is Test {
    MemeCoin coin;

    function setUp() public {
        coin = new MemeCoin();
    }

    function testMeme() public {
        assertEq(coin.name(), "This Is Fine");
        assertEq(coin.symbol(), "TIF");
        assertEq(coin.decimals(), 18);
        assertEq(coin.totalSupply(), 100 ether);
        assertEq(coin.balanceOf(address(this)), 100 ether);
    }
}