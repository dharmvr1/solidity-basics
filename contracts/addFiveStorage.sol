// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {SimpleStorage} from "contracts/simpleStorage.sol";
contract  AddFiveStorage is SimpleStorage{

    function Store(uint256 _newNumber) public override {
        myFavNum=_newNumber+5;
    }
     
}