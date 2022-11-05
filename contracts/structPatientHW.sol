// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structPatient{
    
    struct patient{
    string name;
    uint8 age;
    string sex;
    string bloodGroup;
    bool healthInsurance;
    }

    mapping (uint8 => patient) patients;

    function patientDetails(uint8 _key, string memory _name, uint8 _age, string memory _sex, string memory _bloodGroup, bool _healthInsurance) public{
        patients[_key].name=_name;
        patients[_key].age=_age;
        patients[_key].sex=_sex;
        patients[_key].bloodGroup=_bloodGroup;
        patients[_key].healthInsurance=_healthInsurance;
    }

    function getPatientDetails(uint8 _key) public view returns(string memory, uint8, string memory, string memory, bool) {
        return(patients[_key].name, patients[_key].age, patients[_key].sex, patients[_key].bloodGroup, patients[_key].healthInsurance);
    }
}