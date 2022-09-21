// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Car {
    string public model;
    address public owner;

    constructor(string memory _model, address _owner) public payable {
        model= _model;
        owner = _owner;
    }

}

contract Carfactory {
    Car[] public cars;    

    function create(string memory _model)public  {
        Car car = new Car(_model, address(this));
        cars.push(car);
    }
    function createAndSendEther(string memory _model) public payable {
        Car car = (new Car).value(msg.value)(_model, address(this));    
    }
}