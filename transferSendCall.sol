// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReceiveEther {
  event Log(uint amount , uint gas );
  receive() external payable {
      emit Log(msg.value, gasleft());
  }
    
}

contract SendEther {
    constructor ()payable {}
    
    receive() external payable {}

    function sendViaTransfer(address payable hey) external payable {
        hey.transfer(231);
    }
    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "send failed");
    

    }
    function sendViaCall(address payable _to) external{
        (bool success, )= _to.call{value:1234567891012345678910}("");
        require(success, "send failed");
    }
    
}

