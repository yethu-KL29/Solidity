// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "./Simple.sol";

contract Lock {
    Simple public simple;

    function createcontratc() public {
     simple = new Simple();
    }

    
    
}