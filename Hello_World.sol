pragma solidity ^0.8.0;

contract HelloWorld {

    construct() {
        greeting = 'Hello, World';
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function returnGreeting() public wiev return (strig memory) {
        return greeting;
    }
}