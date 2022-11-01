// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structCar{

    struct car{
        string company;
        uint16 year;
        string color;
        uint16 engineCc;
        uint32 price;
    }

    mapping (uint8 => car) carDetails;

    

}