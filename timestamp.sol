

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract tiemstamp{
    
    uint public timestamh;
    uint public serialNumber;
    
    function setSerialNumber(uint num ) public {
     serialNumber = num;
    }
 
   function setTimeStamp() public {
    timestamh = block.timestamp;
   }
}