// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Loop {
    uint public num;
    function loop() public view returns (uint) {
        // for loop
        for (uint i = num; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                return 8;
            }
            if (i == 5) {
                // Exit loop with break
                return 9;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
