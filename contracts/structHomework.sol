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

function carsDetails (uint8 _key, string memory _company, uint16 _year, string memory _color, uint16 _engineCc, uint32 _price) public{
        carDetails[_key].company=_company;
        carDetails[_key].year=_year;
        carDetails[_key].color=_color;
        carDetails[_key].engineCc-_engineCc;
        carDetails[_key].price=_price;
}

function getCarDetails (uint8 _key) public view returns (string memory, uint16, string memory, uint16, uint32) {
    return(carDetails[_key].company, carDetails[_key].year, carDetails[_key].color, carDetails[_key].engineCc, carDetails[_key].price);
}

}