// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "./foo.sol";

contract TestImport {
    Foo foo = new Foo();

    function getFooName() public view returns (string memory ){
        return foo.name();
    }
}
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.7/contracts/token/ERC20/ERC20.sol";