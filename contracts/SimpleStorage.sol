// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Hello all! I'm Dilshan!

contract SimpleStorage {
    // boolean, unit, int, address, bytes
    /*bool hasFavoriteNumber = true;    
    string favoriteNumberInText = "Slayer";
    address myAddress = 0x80947782223681115cD27CaDEF774c7D316b6619;
    bytes32 favoriteBytes = "cat";
    */

    //Initialized to zero once it is declared
    uint256 public favoriteNumber = 5;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "Slayer"});
    People[] public people;
    uint256[] public favoritreNumbers;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        retrieve();
    }

    // view, pure :- these are read keywords. This does not spend any gas fee on these keyword functions
    // Calling a view function is free unless its calling from a function that costs gas
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // calldata (temporary variables can't be modified)
    // memory (temporary variables can be modified)
    // storage (permenent variables can be modified)
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({name: _name, favoriteNumber: _favoriteNumber}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138
