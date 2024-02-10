// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./Principal.sol";
import "./Teacher.sol";

contract Factory {


constructor(){
       createSchool();

} 
    Principal public principals;
    Teacher public teachers;
   

    function createSchool() public {
        teachers = new Teacher(address(principals)); 
        principals = new Principal();
       

    }
}
