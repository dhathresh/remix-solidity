// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Delance{
    
    address public freelancer;
    uint public deadline;
    
    function setFreelancer(address _freelancer) public {
     freelancer = _freelancer;
    }
 
    function setDeadline(uint256 _deadline) public {
     deadline = _deadline;
    }
}