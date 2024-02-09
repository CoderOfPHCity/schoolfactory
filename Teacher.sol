// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./Principal.sol";

contract Teacher {
    function updateScore(uint256 id, uint256 _score) public {
        // require(
        //     Principal.principalAddress(msg.sender),
        //     //  || IPrincipal(msg.sender).teachers,
        //     "wida you!, no trespassing is allowed"
        // );

        Principal principal = Principal(msg.sender);
        principal.updateScores(id, _score);
    }
}
