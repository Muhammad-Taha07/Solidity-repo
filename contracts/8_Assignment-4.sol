// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract assignment4
{
    
    /* Task 1 Calculating Power */
    function power(uint x, uint y) public pure returns (uint){
        return x**y;
    } 

    /* Task 2 Check if the number is palindrome */
    function palindrome(uint num) public pure returns (string memory) {
        uint temp = num;
        uint reverse = 0;
        string memory Palindrome = "Palindrome";
        string memory NotPalindrome = "Not Palindrome";

        while(num > 0) {
            uint digit = num%10;
            reverse = reverse * 10 + digit;
            num = num / 10;
        }

        if(temp == reverse) {
            return Palindrome;
        }
        else {
            return NotPalindrome;
        }
    }
}