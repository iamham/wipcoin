pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Vote.sol";

contract TestVote {
    Vote vote = Vote(DeployedAddresses.Vote());
    function testUserCanVote() public {
        uint returnedId = vote.vote(8);
        uint expected = 8;
        Assert.equal(returnedId, expected, "Vote of Id 8 should be recorded.");
    }
}