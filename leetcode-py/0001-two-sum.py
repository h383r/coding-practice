"""
https://leetcode.com/problems/two-sum/

Given an array of integers nums and an integer target,
return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution,
and you may not use the same element twice.
"""

class Solution:

    # Solution 1 O(n^2)
    def twoSum(self, nums, target):

        answer = list()
        length = len(nums)

        for i in range(length-1):
            for j in range(i+1, length):
                if nums[i] + nums[j] == target:
                    answer = [i, j]
        return answer
    
    #TODO: Solution 2 O(n)
    
if __name__ == "__main__":
    solution = Solution()
    print(solution.twoSum([2,7,11,15], 9))
    print(solution.twoSum([3,2,4], 6))
    print(solution.twoSum([3,3], 6))
