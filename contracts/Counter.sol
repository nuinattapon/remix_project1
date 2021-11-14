// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.10 <0.9.0;

contract Count {

    uint256 count;
    
    /**
     * @dev A public constructor
     */    
    constructor() {
        count = 0;
    }

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        count = num;
    }

    /**
     * @dev Return value 
     * @return value of 'count'
     */
    function retrieve() public view returns (uint256){
        return count;
    }
    
    /**
     * @dev increment value 
     * @param num value to be added to 'count'
     * @return value of 'count'
     */
    function increment(uint256 num) public returns (uint256) {
        count += num;
        return count;
    }
    
    /**
     * @dev increment counter by 1
     * @return value of 'count'
     */
    function increment() public returns (uint256) {
        return increment(1);
    }
}