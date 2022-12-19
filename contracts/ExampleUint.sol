//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ExampleUint {
    //declaring unsigned intergers
    uint256 public myUint; //0 - (2^256)-1

    uint8 public myUint8 = 250; //0 - (2^8)-1

    //declaring signed intergers
    int public myInt = -10; // -2^128 - (+2^128)-1

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint8() public {
        myUint8--;
    }
    
    function incrementInt() public {
        myInt++;
    }
}