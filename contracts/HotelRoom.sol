// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4 <0.9.0;

contract HotelRoom {
    
    address payable public owner;
    
    enum Statuses { Vacant, Occupied }
    
    event Occupy(address _occupant, uint256 _value);
    
    Statuses currentStatus;
    
    constructor() {
        currentStatus = Statuses.Vacant;
        owner = payable(msg.sender);
    }
    
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }
    
    modifier costs (uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;        
    }
    
    function book() external payable onlyWhileVacant costs(2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
}