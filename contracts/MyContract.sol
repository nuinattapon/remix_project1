// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4 <0.9.0;

contract Ownable {
    address payable public owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Must be owner.");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
    }
}

contract SecretVault is Ownable{
    string secret;

    constructor(string memory _secret) {
        super;
        secret = _secret;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return secret;
    }

}

contract MyContract {
    
}
