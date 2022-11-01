// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    //Struct will make sure that all the "assets(student)" are present in the created 'struct'.
    //One asset may have multiple "properties/variables(name, age, ...)".
contract structSample{

struct student{
    bytes32 name;
    uint8 age;
    uint32 phoneNo;
    string addresses;
}

//syntax of mapping is mapping (key => value) mapping name
mapping (uint8 => student) simpliStudents;

}