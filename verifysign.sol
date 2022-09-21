// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/*
4 steps to verfy the signature 
1. message to sign  - "Ethereum signed Message"
2.hash(message) - function getMessageHash 
3.sign(hash(message), private key )|| offchain. - function getEthSignedMessageHash (this returns keccak256 bytes)  
4. ecrecover (hash(message), signature )== signer - verifySign 
*/ 
contract VerifySig{
    function verify(address _signer, string memory _message, bytes memory _sig) external pure returns (bool) {
        bytes32 messageHash = getMessageHash(_message);
        bytes32 ethSignedMessageHash = getEthSignedMessageHash(messageHash);

       return recover(ethSignedMessageHash, _sig)== _signer;  
    }
    function getMessageHash( string memory _message) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_message));
    }
    function getEthSignedMessageHash( bytes32 _messageHash) public pure returns(bytes32){
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", _messageHash));
    }
    
    function recover(bytes32 _ethSignedMessageHash , bytes memory _sign) public pure returns(address){
        (bytes32 r, bytes32 s, uint8 v)= _split(_sign);
        return ecrecover(_ethSignedMessageHash, v, r ,s );
    }
    function _split(bytes memory _sign) internal pure returns (bytes32 r , bytes32 s, uint8 v){
        require(_sign.length == 65, "invalid signature length");
        
        assembly {
            r := mload(add(_sign,32))
            s := mload(add(_sign,64))
            v := byte(0,mload(add(_sign,96)))
        }
        }
    }
