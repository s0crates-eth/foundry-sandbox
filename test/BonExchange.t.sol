// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/BonExchange.sol";

contract contractTest is Test {
    bonExchange public contractTested;
    //address public RVLT = 0xf0f9D895aCa5c8678f706FB8216fa22957685A13;

    function setUp() public{
        // --- WALLETS ---
        address user = address(69);
        vm.startPrank(user);
        address[] memory testAddresses = new address[](3);
            testAddresses[0] = address(70);
            testAddresses[1] = address(71);
            testAddresses[2] = address(72);

        // --- TOKENS ---
        vm.deal(user, 1_000_000 ether);
        //deal(RVLT, user, 1_000_000_000_000 ether);
        //bool success = IERC20(RVLT).approve(0x8fA079a96cE08F6E8A53c1C00566c434b248BFC4, 115792089237316195423570985008687907853269984665640564039457584007913129639935);
        //require(success, "Approve failed");
        
        // --- CONTRACTS ---
        contractTested = new bonExchange();
    }

}