//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";
import {Solinference} from "../src/Solinference.sol";
import {ZTableMapping} from "../src/Z-mapping.sol";

contract DeploySolinference is Script {
    function run() public returns (Solinference) {
        vm.startBroadcast();
        
        // Deploy ZTableMapping first
        ZTableMapping zTableMapping = new ZTableMapping();
        
        // Deploy Solinference with the ZTableMapping address
        Solinference solinference = new Solinference(address(zTableMapping));
        
        vm.stopBroadcast();
        return solinference;
    }
}
