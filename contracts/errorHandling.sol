// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorHandling{

    uint balance = 100;

    function deductBalRevert(uint _amount) public returns(uint){

        if (_amount < 2){
            revert("Input amount not vaild");
        }

        balance = balance - _amount;
        return balance;
    }

    function deductBalRequire(uint _amount) public returns(uint){
        require(_amount >1, "Input amount is not valid");
        balance = balance - _amount;
        return balance;
    }

    function deductBalAsssert(uint _amount) public returns(uint){
        assert(_amount >1);
        balance = balance - _amount;
        return balance;
    }



}