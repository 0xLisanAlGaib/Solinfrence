//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Solinference} from "../src/Solinference.sol";

contract DeploySolinference is Script {

    function run() public returns (Solinference) {
        vm.startBroadcast();
        Solinference solInference = new Solinference(msg.sender);
        vm.stopBroadcast();
        return solInference;
    }
}
