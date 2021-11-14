// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4 <0.9.0;

contract HelloWorld {
    
    string  helloMessage = "Hello, world";

    function getHelloMessage() public view returns (string memory) {
        return helloMessage;
    }

    uint256 secret;

    function setSecretNumber(uint256 _secret) public {
        secret = _secret;
    }

    function getSecretNumber() public view returns (uint256) {
        return secret;
    }
}
