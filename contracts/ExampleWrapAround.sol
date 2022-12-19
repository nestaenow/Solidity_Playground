//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ExampleWrapAround {
    //declaring unsigned intergers
    uint256 public myUint; //uint256: 0 - (2^256)-1

    uint8 public myUint8 = 2**4; //uint8: 0 - (2^8)-1

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint8() public {
        unchecked {
            myUint8--;
        }
    }
    
}