// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;

// August 21 - Assignment (Task-1) | Muhammad Taha
contract printTask

{
    string str;
    constructor()
    {
        str = "Hello Solidity";
    }

    /* Function to retrieve str */
    function getMessage() public view returns(string memory)
    {
        return (str);
    }

}