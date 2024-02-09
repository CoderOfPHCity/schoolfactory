// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./Principal.sol";
import "./Teacher.sol";

contract Factory {


constructor(){
    createSchool();

}
    Teacher public teachers;
    Principal public principals;

    function createSchool() public {
        principals = new Principal();
        teachers = new Teacher();

    }
}
