pragma solidity ^0.4.18;

contract RankChoice{
    struct Election{
        mapping(uint256 =>uint256) candidate_votes; // mapping the id of the candidate to the number of votes the candidate received
        uint256 start; //when the election started
        uint256 end; // when the election ended
        uint256 candidate_with_most_votes; // the uint256 (id) of the candidate who got the most votes
        uint256 total_candiates; // total number of candidates
        uint256 total_votes; // total number of votes in the election
    }

    mapping(uint256 => Election) public all_elections; // mapping of all elections 

}
