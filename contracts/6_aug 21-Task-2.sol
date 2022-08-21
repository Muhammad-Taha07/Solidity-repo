// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;

// August 21 - Assignment (Task-2) | Muhammad Taha
contract task2
{
    uint myVariable = 10;

/* Function to return State Variable that is declared above */
    function returnStateVariable() public view returns (uint)
    {
        return myVariable;
    } 

/* Function to declare and return the value from Local Variable */
    function returnLocalVariable() public view returns (uint)
    {
        uint myLocalVariable = 20;
        return myLocalVariable;
    }
}