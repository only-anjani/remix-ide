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
}