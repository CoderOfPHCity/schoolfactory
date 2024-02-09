// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./Principal.sol";
import "./Teacher.sol";

contract Factory{

    constructor(){
        funcDeploy();

    }

          struct Student {
        string name;
        uint256 matNumber;
        uint256 scores;
    }
      Student[] public student;


    Teacher public teacher;
    Principal public principal;

    function funcDeploy() public {
        teacher = new Teacher();
        principal = new Principal(); 


    }

     function getScoreSheet() public view returns (Student[] memory) {
        return student;
    }

    function updateScores(uint256 id, uint256 Score) public {
    require(id < student.length, "Invalid student index");
    teacher.updateScore(id, Score);
    require(teacher.teachers(msg.sender) || principal.principalAddress() ==msg.sender, "Unauthorized");
    student[id].scores = Score;
}



}