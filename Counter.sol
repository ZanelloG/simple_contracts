pragma solidity ^0.8.0;

contract Counter {
    
    uint256 public count;

    function viewCount oublic view return (uint256) {
        return count;
    }

    function increment(uint256) public return (uint256) {
        count += 1;
    }

    function decrement(uint256) public return (uint256) {
        require (count > 0, "Counter must have a value different from zero");
        count -= 1;
    }

    function reset(uint256) public return (uint256) {
        count = 0;
    }

}