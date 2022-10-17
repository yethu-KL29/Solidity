// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

contract Simple {
    uint256 public favno;

    struct people{
        uint256 favno;
        string name; 
    }
    people[] public yethu;
    function store(uint256 _favno)public{
        favno=_favno;
    }

    mapping(uint256 => string) public nameTofavno;

    function display()public view returns(uint256){
     return favno;
    }
    function addperson(string memory _name,uint256 _favno)public{
        people memory obj = people({favno:_favno,name:_name});
        yethu.push(obj);
        nameTofavno[_favno]=_name;
    }
}