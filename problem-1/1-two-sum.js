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