// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Count {

    uint256 count;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        count = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return count;
    }
}