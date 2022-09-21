// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ICounter{
    function count() external view returns (uint);
    function inc() external;
    function dec() external ;
}
contract CallInterface{
    uint public counts;
    function example(address _counter) external {
        ICounter(_counter).inc();
    }
    function example1(address _counter) external {
        ICounter(_counter).dec();
        counts = ICounter(_counter).count();
    }
    
}