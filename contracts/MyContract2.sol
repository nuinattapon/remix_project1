// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4 <0.9.0;

contract MyContract2 {
    
    // address
    address public owner;
    
    function isOwner() public view returns(bool) {
        return msg.sender == owner;
    }
    // mapping
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() {
        names[1] = "Nui";
        names[2] = "Somboon";
        names[3] = "Wassana";
    }
    
    function addBook(uint256 _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title,_author);
    }
}
