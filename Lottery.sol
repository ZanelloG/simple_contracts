// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleLottery {
    address[] public players;

    function enter() public payable {
        require(msg.value > .01 ether, "Minimum Ether not met");
        players.push(msg.sender);
    }

    function getRandomNumber() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));
    }

    function pickWinner() public {
        uint index = getRandomNumber() % players.length;
        payable(players[index]).transfer(address(this).balance);
        players = new address;
    }
}
