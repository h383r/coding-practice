/*
1. Two Sum
https://leetcode.com/problems/two-sum/

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Example 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:
Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:
Input: nums = [3,3], target = 6
Output: [0,1]
 
Constraints:
2 <= nums.length <= 103
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.

*/

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */

// Map solution

 var twoSum = function(nums, target) {
    let map = {}; //new Map()
    for(let i = 0; i < nums.length; i++){
        if (target - nums[i] in map){ //map.has
            return [map[target - nums[i]], i]; //map.get
        } else {
            map[nums[i]] = i; //map.set
        }
    }
};

// Bruteforce solution

var twoSumBruteforce = function(nums,target) {
    for(let i = 0; i < nums.length; i++){
        for(let e = i + 1; e < nums.length; e++){
            if(nums[i] + nums[e] === target){
                return [i, e];
            }
        }
    }
};

let nums = [3,2,3,3, 6,7,8]
let target = 6

console.log("Bruteforce Solution " + twoSumBruteforce(nums, target))
console.log("Hash Map Solution " + twoSum(nums, target))