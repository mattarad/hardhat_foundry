// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {Lock} from "../contracts/Lock.sol";

contract DeployLock is Script {
    uint constant LOCK_TIME = 1893456000;

    function run() external returns (Lock) {
        vm.startBroadcast();
        Lock lock = new Lock(LOCK_TIME);
        vm.stopBroadcast();
        return lock;
    }
}
