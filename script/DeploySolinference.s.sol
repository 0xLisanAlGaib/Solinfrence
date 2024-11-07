//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Solinference} from "../src/Solinference.sol";
import {ZTableMapping} from "../src/Z-mapping.sol";

contract DeploySolinference is Script {
    ZTableMapping private zTableInstance;

    constructor(address _zTableMappingAddress) {
        zTableInstance = ZTableMapping(_zTableMappingAddress);
    }
    address public Z_TABLE_MAPPING_ADDRESS = address(zTableInstance);

    function run() public returns (Solinference) {
        vm.startBroadcast();
        Solinference solInference = new Solinference(msg.sender);
        vm.stopBroadcast();
        return solInference;
    }
}
