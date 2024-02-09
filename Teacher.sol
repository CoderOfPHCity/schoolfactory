// SPDX-License-Identifier: MIT
pragma solidity ^0.8;


contract Teacher {

     struct Student {
        string name;
        uint256 matNumber;
        uint256 scores;
    }

     mapping(address => bool) public teachers;
      Student[] public student;

         function updateScore(uint256 id, uint256 _score) public {
        require(
            teachers[msg.sender],
            "wida you!, no trespassing is allowed"
        );
        Student storage studentscore = student[id];
        studentscore.scores = _score;
    }
}
