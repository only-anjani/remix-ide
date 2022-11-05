// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract moneySample{

    address owner=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

    //get currency you want to trnsfer into "this" SC
    function getEthToSC() public payable {}

    //to transfer from external wallet to "this" SC. This is not suggestable.
    //fallback() external payable{}  

    //check SC balance whether currency received to "this" SC or Not
    function checkSCBalance() public view returns(uint){
        return address(this).balance;
    }

    //transfer the recieved currency in SC to Owner(receipient) address
    function transferToAddress() public{
        payable(owner).transfer(address(this).balance);
    }

    //check the Owner address balance
    function checkOwnerBalance() public view returns(uint){
        return address(owner).balance;
    }
}