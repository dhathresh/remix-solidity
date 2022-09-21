
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {

 function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }

}