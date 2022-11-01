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

    //Whenever we deploy a Smart Contract we will get a unique Smart Contract address.
    //for the above code/SC address is --> 0xd9145CCE52D386f254917e481eB44e9943F39138

    //2. Dynamic array = Here we exactly don't know the number of students. So we use dynamic array for unlimited entries.
    //phoneNumber[0]=9010, phoneNumber[1]=0280, phoneNumber[2]=0179.

    uint[] phoneNumber;

    //Write function
    //.push() is used to make dynamic array possible. The new value will push the old number up in the stack and the index is assigned accordingly.
    function studentPhoneNumber(uint _phoneNo) public{
        phoneNumber.push(_phoneNo);
    }

    //Read function
    function getPhoneNumber(uint8 _index) public view returns(uint){
        return phoneNumber[_index];
    }

    //for the above SC address is --> 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47
    //Also when the info./value is starting with '0' we are unable to get 0 from the read function.
    //In the above SC if we give index 1 the answer should be '0280' but the answer we get is '280'.
}

