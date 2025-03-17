// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract TokenizedLoyalty {
    string public projectTitle = "Tokenized Loyalty Programs";
    string public projectDescription = "Create a blockchain-powered loyalty program that rewards users with tokens for purchases.";
    
    event RewardIssued(address indexed user, uint256 amount);
    
    mapping(address => uint256) public rewards;
    
    function issueReward(address _user, uint256 _amount) public {
        rewards[_user] += _amount;
        emit RewardIssued(_user, _amount);
    }
    
    function getRewardBalance(address _user) public view returns (uint256) {
        return rewards[_user];
    }
}
