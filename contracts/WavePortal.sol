// SPDX-License-Identifier: UNLICENSED
// 0x5FbDB2315678afecb367f032d93F642f64180aa3 localhost
// 0x806765197e2A0685f0Fc88DB464119d458B93Ff4 rinkeby
// 0xa8cd2882c1445b0412eA9c966ff9c9Db179E165B rinkeby 2

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal{
  uint256 totalWaves;

  event NewWave(address indexed from, uint256 timestamp, string message);

  struct Wave{
    address waver;
    string message;
    uint256 timestamp;
  }

  Wave[] waves;

  constructor(){
    console.log("I AM SMART CONTRACT. POG.");
  }

  function wave(string memory _message) public{
    totalWaves += 1;
    console.log("%s waved w/ message %s", msg.sender, _message);

    waves.push(Wave(msg.sender, _message, block.timestamp));

    emit NewWave(msg.sender, block.timestamp, _message);
  }

  function getAllWaves() public view returns (Wave[] memory) {
    return waves;
  }

  function getTotalWaves() public view returns (uint256){
    console.log("We have %d total waves!", totalWaves);
    return totalWaves;
  }
}
