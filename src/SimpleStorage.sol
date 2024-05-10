// SPX-License-Identifier: Unlicensed

pragma solidity 0.8.24;

contract SimpleStorage {
    uint public myFavoriteNumber;

    struct Person {
        string name;
        uint favoriteNumber;
    }

    // array of Persons
    Person[] public listOfPerson;

    mapping(string name => uint favoriteNumber) public nameToFavoriteNumber;

    function store(uint _favNum) public {
        myFavoriteNumber = _favNum;
    }

    function addPerson(string calldata _name, uint _favNum) external {
        listOfPerson.push(Person(_name, _favNum));
        nameToFavoriteNumber[_name] = _favNum;
    }
}
