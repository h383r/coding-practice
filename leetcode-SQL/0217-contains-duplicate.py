# https://leetcode.com/problems/contains-duplicate/
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        counter = {}
        for n in nums:
            if n in counter:
                return True
            counter[n] = 1
        return False
    
    """
    test cases
    
    [1,2,3,1]
    [1,2,3,4]
    
    """