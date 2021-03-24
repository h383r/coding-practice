/*
7. Reverse Integer
https://leetcode.com/problems/reverse-integer/

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Example 1:
Input: x = 123
Output: 321

Example 2:
Input: x = -123
Output: -321

Example 3:
Input: x = 120
Output: 21

Example 4:
Input: x = 0
Output: 0

Constraints:
-231 <= x <= 231 - 1

*/

/**
 * @param {number} x
 * @return {number}
 */

// Solution 1

var reverse = function(x) {
    let y =  0
    
    // Sign
    let sign = 1
    if (x < 0){
        sign = -1
        x = x * -1
    }
    
    // Range -2^31 <= x <= 2^31 - 1 (2147483647)
    if (x >= ((Math.pow(2, 31))-1)) {
        return 0;
    }

    // Reverse
    while (x > 0){
         y = y * 10
         y = y + (x % 10) // x % 10 returns last character
         x = parseInt(x / 10) // delete last character
    };
    return y * sign
};

console.log(reverse(2147483647))
console.log(reverse(-2147483647))
console.log(reverse(123))
console.log(reverse(-123))

// Solution 2

var reverse2 = function(x) {
    let y = Number(Math.abs(x).toString().split("").reverse().join(""));
    if (y > (Math.pow(2, 31))-1) {
        return 0
    } else {
        return y * Math.sign(x);
    }
};

console.log(reverse2(2147483647))
console.log(reverse2(-2147483647))
console.log(reverse2(123))
console.log(reverse2(-123))