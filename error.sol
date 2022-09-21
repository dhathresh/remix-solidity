// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract error {
    //function testrequire(uint _i ) public pure {
      //  require(_i > 10, "input must be greater than 10");
    //}
    function testrevert(uint _i) public pure {
        if (_i<=10){
            revert("ERROR i <= 10");
        }
    }
}