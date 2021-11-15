// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Score {
    uint24[] score;
    
    function addScore(uint24 s) public returns (uint24[] memory) {
        score.push(s);
        return score;
    }
    
    function getScore(uint24 index) public view returns(uint24) {
        if(index > score.length-1) {
            return 0;
        } else {
            return score[index];
        }
    }
    
    function getLength() public view returns(uint) {
        return score.length;
    }
    
    function clearArray() public returns(uint24[] memory) {
        delete score;
        return score;
    }
}
