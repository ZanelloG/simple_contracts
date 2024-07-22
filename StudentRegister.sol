// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract StudentRegister {
  
    struct Student {
        uint age;
        string Name;
        string Surname;

    }

    mapping(address => Student) public students;

    function addStudent(uint _age, string memory _Name, string memory _Surname) public {
            students[msg.sender] = Student(_age, _Name, _Surname);
    }

    function getStudent(address _studentAddress) public view returns (uint age, string memory Name, string memory Surname) {
        Student memory student = students[_studentAddress];
        return (student.age, student.Name, student.Surname);

    }
}