// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Principal{

    address public principal;

    constructor(){
        principal = msg.sender;
    }


        struct Student {
        string name;
        uint256 matNumber;
        uint256 scores;
    }

     mapping(address => bool) public teachers;
      Student[] public student;


    modifier onlyPrincipal() {
        require(
            msg.sender == principal,
            "Commot body,Only oga at the top fit run this function!"
        );
        _;
    }

    function principalAddress() public view returns (address) {
    return principal;
}

    

      function addTeacher(address _teacher) public onlyPrincipal {
        teachers[_teacher] = true;
    }


        function addstudent(
        string memory _name,
        uint256 _matNumber,
        uint256 _scores
    ) public onlyPrincipal {
        Student memory updateStd = Student({
            name: _name,
            matNumber: _matNumber,
            scores: _scores
        });

        student.push(updateStd);
    }

}