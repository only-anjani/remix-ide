// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variable{

    //variable sample

    //Integer variable --> signed integer and unsigned integer
    //signed integer = int --> both -ve & +ve values
    //unsigned integer = uint --> only +ve values

    //for age there can be no -ve value so we can use uint
    //for bank balance there can be -ve values also
    uint8 age = 26;
    uint height;
    int bank_balance;
    uint amount;

    //uint8 = [0:255] the age cannot be more than 255, so we can use "uint8"
    //If we use "uint" it may take more size let's say 0.1kb, becoz "unit = uint256" but for "uint8" it'll take only 0.001kb
    //So, to make a code efficient we should make the code in lesser size.
    //Less size of code means less "gas fee" to be paid at the time of publishing the code.
    //No. of lines of code does not affect the "gas fee".
    //"Gas fee" is based on the size of the code.

    uint phoneNumber;
}