// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Insurance {
    uint public maxClaims = 3;

    mapping(address => uint) public claimsMade;

    // Function to check claim eligibility
    function checkEligibility(address user) public view {
        require(claimsMade[user] < maxClaims, "Claim limit exceeded");
    }

    // Function to calculate claim amount
    function calculateClaim(uint damageCost) public pure {
        uint claimAmount = damageCost * 50 / 100;
        assert(claimAmount > 0);
    }

    // Function for claim disbursement
    function disburseClaim() public pure {
        revert("Claim disbursement failed");
    }
}
