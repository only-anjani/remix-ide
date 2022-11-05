// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structSample{
  address public Simplilearn;
        constructor() public{
        Simplilearn = msg.sender;
        }
  modifier onlySimplilearn(){
    require(msg.sender == Simplilearn);
    _;
  }
struct learner{
    string name;
    uint8 age;
}
//mapping (key => value) mapping name
//1 => ("Alice", 38)
//2 => ("Tom", 39)
//3 => ("Jerry", 40)
mapping (uint8 => learner) learners;
function setLearnerDetails (uint8 _key, string memory _name, uint8 _age) public onlySimplilearn  {
  //learners[1].name="Alice"
  //learners[1].age=38
    learners[_key].name=_name;
    learners[_key].age=_age;
}
function getLearnerDetails (uint8 _key) public view returns (string memory, uint8) {
  return (learners[_key].name, learners[_key].age);
}
}
