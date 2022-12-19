//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract EampleViewPure {

    uint public myStorageVariable;

    function getMyStorageVariable() public view returns(uint) {
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public {
        myStorageVariable = _newVar;
    }

}