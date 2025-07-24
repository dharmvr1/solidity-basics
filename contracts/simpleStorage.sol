// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18 ;// this is solidity version
contract simpleStorage{ 
   uint256    myFavNum;
   
//   uint256[] listOfFavNum;

  struct Person{
   uint256 favNum;
   string name;
  }
  mapping (string => uint256) public nameToFavNum;

  Person[] public listOfPeople;
  Person public  Pat=Person({favNum:10,name:"pat"});
  
  function addPerson(string memory _name , uint256 _favoriteNum) public    {
   listOfPeople.push(Person(_favoriteNum,_name));
   nameToFavNum[_name]=_favoriteNum;
  }
   function Store(uint256 _favNum)public {
    myFavNum=_favNum;
   
   }
   function retrieve() public view  returns(uint256) {
    
    return myFavNum;
   
   }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138