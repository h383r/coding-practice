/**

217. Contains Duplicate

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:

Input: nums = [1,2,3,1]
Output: true

Example 2:
Input: nums = [1,2,3,4]
Output: false

Example 3:
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true

Constraints:
1 <= nums.length <= 105
-109 <= nums[i] <= 109
 
*/

/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
  let sorted = nums.sort();
  for(let i = 0; i < sorted.length - 1; i++) {
    if ( sorted[i] === sorted[i+1] ) {
        return true
    } else {
        return false
    }
  }
};

let should_be_true = [1,4,6,1]
console.log(containsDuplicate(should_be_true))

let should_be_false = [1,4,6]
console.log(containsDuplicate(should_be_false))