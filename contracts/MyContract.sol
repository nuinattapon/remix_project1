// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4 <0.9.0;

contract MyContract {
    // mapping
    mapping(uint256 => string) public names;
    
    constructor() {
        names[1] = "Nui";
        names[2] = "Somboon";
        names[3] = "Wassana";
    }
    
}
