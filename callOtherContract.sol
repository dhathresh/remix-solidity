// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CallTestConttract {
    function seetX(address _test,uint _x) external {
        TestContract(_test).setX(_x); 
    }
    function geetX(address _test) external returns (uint) {
        return TestContract(_test).getX(); 


    }
    function setXandSendEther(address _test, uint _x) external payable{
        TestContract(_test).setXandRecieve(_x)
    }
}

contract TestContract{
    uint public x;
    uint public value= 123;

    function setX(uint _x) external {
        x= _x;
    }
    function getX() external view returns (uint){
        return x;
    }
}