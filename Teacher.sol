// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Teacher {

         function updateScore(uint256 id, uint256 _score) public {
        require(
            teachers[msg.sender],
            "wida you!, no trespassing is allowed"
        );
        Student storage studentscore = student[id];
        studentscore.scores = _score;
    }
}
