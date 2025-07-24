

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import  {SimpleStorage} from "contracts/simpleStorage.sol";

contract StorageFactory{
  SimpleStorage[] public  listOfSimpleStorageContracts;
 
  function createSimpleStorage() public { 
    SimpleStorage newsimpleStorage=new SimpleStorage();
    listOfSimpleStorageContracts.push(newsimpleStorage); 
      }

    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStrageNumber) public {
       //adress
    //   Abi -application Binary interation  
    SimpleStorage mySimpleStorage=listOfSimpleStorageContracts[_simpleStorageIndex];
    mySimpleStorage.Store(_newSimpleStrageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256)  {
        SimpleStorage mySimpleStorage=listOfSimpleStorageContracts[_simpleStorageIndex];
        return  mySimpleStorage.retrieve();
    }

}