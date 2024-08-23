pragma solidity ^0.8.0;

contract Counter {
    
    uint256 public count;

    function viewCount() public view returns (uint256) {
        return count;
    }

    function increment() public returns (uint256) {
        count += 1;
        return count;
    }

    function decrement() public returns (uint256) {
        require(count > 0, "Counter must have a value greater than zero");
        count -= 1;
        return count;
    }

    function reset() public returns (uint256) {
        count = 0;
        return count;
    }
}
