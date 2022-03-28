/**
 * 1. Two Sum 
 * https://leetcode.com/problems/two-sum/
 * Map Solution
 * @param {*} nums 
 * @param {*} target 
 * @returns 
 */
function twoSumMap (nums, target) {
    let map = {};
    for(let i = 0; i < nums.length; i++){
        if (target - nums[i] in map){
            return [map[target - nums[i]], i];
        } else {
            map[nums[i]] = i;
        }
    }
};

/**
 * 1. Two Sum 
 * https://leetcode.com/problems/two-sum/
 * Bruteforce solution
 * @param {*} nums 
 * @param {*} target 
 * @returns 
 */
function twoSumBruteforce(nums,target) {
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
console.log("Hash Map Solution " + twoSumMap(nums, target))