// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract will{

  address owner;
  bool deceased;
  uint amount;

  modifier onlyowner{
    require(owner==msg.sender);_;  }



  modifier mustbedead{
    require(deceased==true);_;  }


    address payable[] familywallet;
     
     mapping(address =>uint)inheritence;
     
     function set(address payable wallet , uint money) public{
         familywallet.push(wallet);
         inheritence[wallet]=money;
     }

}