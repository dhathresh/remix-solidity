// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Pay {

    constructor(){}
    
    function dep() external payable {}

    function getBalance() external view returns (uint){
        return address(this).balance;
    }

}