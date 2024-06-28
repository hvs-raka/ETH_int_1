# ETH intermediate project 1

check out "main.sol" file

# Four Project Requirements

1. You will include a README.md file in your project's GitHub repository (root folder). The README should provide a concise and clear overview of your project's purpose and functionality. This will help other developers understand the motivation behind your project and how to use it.

- To assist you in creating your README, we have provided a starter template you can use.
- This is an example of a README. Note that yours does not need to be this detailed. This is simply a reference.

2. Specifically, your project must provide the following to be successfully completed:

- Functionality
  Contract successfully uses require()

Contract successfully uses assert()

Contract successfully uses revert() statements

# Code

```solidity

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


```

### Author

Harshveer Singh Raka
Email - hvsraka@gmail.com
