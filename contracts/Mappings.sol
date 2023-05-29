// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Does not work locally?
contract Mappings {
    mapping(uint => string) public names;
    mapping(uint => Book) public booksStore;
    mapping(address => mapping(uint => Book)) public booksPublication;
    address public currentAddress;

    struct Book {
        string title;
        string author;
    }

    constructor() {
        names[1] = "Slayer";
        names[2] = "Testament";
        names[3] = "Mayhem";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        booksStore[_id] = Book(_title, _author);
    }

    function addBooksPublication(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        booksPublication[msg.sender][_id] = Book(_title, _author);
        currentAddress = msg.sender;
    }

    function getPublicationData(uint _id) public view returns (Book memory) {
        return booksPublication[currentAddress][_id];
    }
}
