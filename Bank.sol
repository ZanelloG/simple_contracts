// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract BankSystem {
    mapping(address => uint256) public balances;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event Transferred(address indexed from, address indexed to, uint256 amount);

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficent balance");
        payable(msg.sender).transfer(_amount);
        balances[msg.sender] -= _amount;

    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function transferBalance(address _to, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        require(_to != address(0), "Invalid address");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transferred(msg.sender, _to, _amount);
    }
}