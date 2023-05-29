// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    enum Statuses {
        Vacant,
        Occupied
    }

    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWHileVacant() {
        //"require" will check the condition if true will run the rest of the code else stop
        //Check room availability
        require(currentStatus == Statuses.Vacant, "Currently Occupied.");
        _;
    }

    modifier costs(uint _amount) {
        //"require" will check the condition if true will run the rest of the code else stop
        //Check price
        require(msg.value >= _amount, "Not ennough ether provided.");
        _;
    }

    function book() public payable onlyWHileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        emit Occupy(msg.sender, msg.value);
    }
}
