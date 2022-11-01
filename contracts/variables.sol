// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variable{

    //variable sample

    //Integer variable --> signed integer and unsigned integer
    //signed integer = int --> both -ve & +ve values
    //unsigned integer = uint --> only +ve values

    //for age there can be no -ve value so we can use uint
    //for bank balance there can be -ve values also
    uint8 age;
    uint height;
    int bank_balance;
    uint amount;

    //uint8 = [0:255] the age cannot be more than 255, so we can use "uint8"
    //If we use "uint" it may take more size let's say 0.1kb, becoz "unit = uint256" but for "uint8" it'll take only 0.001kb
    //So, to make a code efficient we should make the code in lesser size.
    //Less size of code means less "gas fee" to be paid at the time of publishing the code.
    //No. of lines of code does not affect the "gas fee".
    //"Gas fee" is based on the size of the code.

    
    //string variable --> bytes & string(characters, alphabets and symbols)
    //bytes is used if we know a defined no. of characters
    //like I know the name is anjani which is 6 characters
    //use string if we don't know the no. of characters
    //Surname = "kadava" I have defined/hardcoded the value the surname, so when the program is deployed automatically the value is hardcoded.
    //name I have left without defining, which means at the time of deployment we can assign a value to it.

    bytes6 surname = "Kadava";
    bytes name;
    string country;


    //bool/boolean variable --> true or false
    //Do you have a car? Yes or No. i.e., True or False

    bool flag;

}