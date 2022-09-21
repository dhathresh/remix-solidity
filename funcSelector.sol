// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract functionSelctor{
    function getSelctor(string calldata _func) external pure returns(bytes256) {
        return bytes256(keccak256(bytes(_func)));
    }
}

contract Reciever {
    event Log(bytes data);

    function transfer(address _to, uint _amount) external {
        emit Log(msg.data);
    }

    //0xa9059cbb
    //0xa9059cbb
    //0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4000000000000000000000000000000000000000000000000000000000000007c
}
