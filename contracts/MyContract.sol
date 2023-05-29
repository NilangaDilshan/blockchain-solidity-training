// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    //unit only the positive integers
    uint public myUint = 1;
    //int can hold negative and positive integers
    int public myInt = -10;

    string public myString = "Hello World";
    bytes32 public myBytes32 = "Hellow World";
    address public myAddress = 0x5FC8d32690cc91D4c39d9d3abcBD16989F875707;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "MyStruct");

    function getValue() public pure returns (uint) {
        uint value = 1;
        return value;
    }
}
