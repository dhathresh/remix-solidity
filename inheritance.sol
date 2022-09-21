// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
    function bar() public pure virtual returns (string memory){
        return "A";
    }
    function bazz() public pure virtual returns (string memory){
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    uint public drink;
    
    }

