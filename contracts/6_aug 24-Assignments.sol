// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;

/* Task 1:1)Create a state variable of uint type (need not to be public) */
contract Task
{

    uint stateVariable;

    function setStateVariable(uint x) public
    {
        stateVariable = x;
    }

    function getStateVariable() public view returns(uint)
    {
        return stateVariable;
    }   
// Task-1 End

/*  Task-2
/*  Create a function evaluate(int a , int b). 
    Subtract the difference of a and b from the sum of a and b.
    Return the result of the above task from the evaluate() */

    function evaluate(int a, int b) public pure returns(int)
    {
        int difference = a - b;
        int sum = a + b;
        int result = sum - difference;

        return result;
    }
// Task-2 End

/* Task-3
/* Create a function find(int a). Where a>0. Return the remainder when a is divided by 3. */

    function find(int a) public pure returns (int)
    {   
        require(a > 0, "Value for 'a' should be greater than 0");
        int remainder = a%3;
        return remainder;
    }
// Task-3 End

/* Task-4
/* Create a function average(int a, intb, int c), Where a>0, b>0, c>0.
   Return the average of a, b & c. */

   function average(int a, int b, int c) public pure returns (int)
   {
       require(a > 0 && b > 0 && c > 0, "Value provided should be greater than 0");
       int result = a + b + c;
       return result/3;
   }
// Task-4 End

}