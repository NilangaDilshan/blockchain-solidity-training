// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraysTest {
    uint[] public unitArray = [1, 2, 3];
    string[] public nameArray = ["Slayer", "Dimmu", "Testament"];
    string[] public emptyArray;
    uint256[][] public array2d = [[1, 2, 3], [4, 5, 6]];

    function addValueToArray(string memory _value) public {
        emptyArray.push(_value);
    }

    function getArrayCount() public view returns (uint) {
        return emptyArray.length;
    }
}
