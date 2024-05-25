// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {Lock} from "../../contracts/Lock.sol";
import {DeployLock} from "../../script/DeployLock.s.sol";

contract LockTest is Test {
    Lock lock;
    DeployLock deployLock;

    uint constant LOCK_TIME = 1893456000;

    function setUp() external {
        deployLock = new DeployLock();
        lock = deployLock.run();
    }

    function testUnlockTime() public view {
        uint lockTime = lock.unlockTime();
        assertEq(lockTime, LOCK_TIME);
    }

    function testOwner() public view {
        address owner = lock.owner();
        console.log("address(this)          ", address(this));
        console.log("msg.sender:            ", msg.sender);
        console.log("deployLock             ", address(deployLock));
        console.log("owner                  ", owner);
        assertEq(owner, msg.sender);
    }
}
