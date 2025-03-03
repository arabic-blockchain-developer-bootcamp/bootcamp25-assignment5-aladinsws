// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Assignment5} from "../src/Assignment5.sol";

contract Assignment5Test is Test {
    Assignment5 assignment;

    function setUp() public {
        assignment = new Assignment5();
    }

    function testInitialCounter() public view {
        uint counter = assignment.counter();
        assertEq(counter, 0, "Counter should start at 0");
    }

    function testIncrementCounter() public {
        assignment.incrementCounter();
        uint counter = assignment.counter();
        assertEq(counter, 5, "Counter should increment by 5");
    }

    function testToggleActive() public {
        assignment.toggleActive();
        bool isActive = assignment.isActive();
        assertEq(isActive, false, "isActive should toggle to false");
    }

    function testAddUser() public {
        assignment.addUser(1, "Alice", makeAddr("test"));
        uint userCount = assignment.getUserCount();
        assertEq(userCount, 1, "User count should be 1");
    }
}
