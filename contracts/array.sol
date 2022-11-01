// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arraysample{

    //what is an array?
    //Array means Store a list of value of same data types. Eg: Store student details.
    //Array always starts with the number zero, '0'.
    //Array is always indicated with '[]' , Square brackets.
    //Array --> Fixed and Dynamic
    //1. Fixed length array = Here we already know no. of students. So, the data can only be entred for 42 students only.
    //age[0]=26, age[1]=38, age[2]=40...Here age[0]=26 --> item[_index]=_value --> 0 is index and 26 is value.

    uint8[42] age;

    //Write function
    function studentAgeData(uint8 _index, uint8 _value) public {
        age[_index] = _value;
    }

    //Read function, whenever we want to read/retreive a value/get info we have to use a key word "view".
    function getAge(uint8 _index) public view returns(uint8){
        return age[_index];
    }

}

