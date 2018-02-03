pragma solidity ^0.4.17;

contract Vote {
    address[20] public voters;
    function vote(uint voterId) public returns (uint) {
        require(voterId>0 && voterId<=20);
        voters[voterId] = msg.sender;
        return voterId;
    }
    function getVoters() public view returns (address[20]) {
        return voters;
    }
}