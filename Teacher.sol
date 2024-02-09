// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Teacher{
      mapping(address => bool) public teachers;

         function updateScore(uint256 id, uint256 _score) public {
        // require(
        //     teachers[msg.sender] || principal == msg.sender,
        //     "wida you!, no trespassing is allowed"
        // );
        // Student memory studentscore = student[id];
        // studentscore.scores = _score;
    }
}