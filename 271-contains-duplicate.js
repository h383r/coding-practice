/**
 * 217. Contains Duplicate
 * @param {*} nums 
 * @returns 
 */
function containsDuplicate(nums) {
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