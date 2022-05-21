# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/

def containsDuplicate(nums) -> bool:
    counter = {}
    for n in nums:
        if n in counter:
            return True
        counter[n] = 1
    return False

if __name__ == "__main__":
    containsDuplicate([1,2,3,1])
    containsDuplicate([1,2,3,4])
