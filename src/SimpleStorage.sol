// SPX-License-Identifier: Unlicensed

pragma solidity 0.8.24;

contract SimpleStorage {
    uint256 public myFavoriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    // array of Persons
    Person[] public listOfPerson;

    mapping(string name => uint256 favoriteNumber) public nameToFavoriteNumber;

    function store(uint256 _favNum) public {
        myFavoriteNumber = _favNum;
    }

    function addPerson(string calldata _name, uint256 _favNum) external {
        listOfPerson.push(Person(_name, _favNum));
        nameToFavoriteNumber[_name] = _favNum;
    }
}
