// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }
    //how to use structs with other data types 
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    // initaialize values
    function example() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory maruti = Car({year:1999, model:"800", owner: msg.sender});
        Car memory tesla;
        tesla.model = "model x";
        tesla.year = 2010;
        tesla.owner = msg.sender;
    
    }
}

