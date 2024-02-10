 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8;

 import "./Principal.sol";

contract Teacher {
     PrincipalInterface principalContract;

    constructor(address  _principalContract) {
        principalContract = PrincipalInterface(_principalContract);
    }
    function updateStudentScore(uint256 id, uint256 score) external {
        principalContract.updateScores(id, score);
    }
}
