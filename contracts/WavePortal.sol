// SPDX-License-Identifier: UNLICENSED
// 0x5FbDB2315678afecb367f032d93F642f64180aa3 localhost
// 0x806765197e2A0685f0Fc88DB464119d458B93Ff4 rinkeby

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal{
  uint256 totalWaves;
  constructor(){
    console.log("Yo yo, I am a contract and I am smart");
  }

  function wave() public{
    totalWaves += 1;
    console.log("%s has waved", msg.sender);
  }

  function getTotalWaves() public view returns (uint256){
    console.log("We have %d total waves!", totalWaves);
    return totalWaves;
  }
}
