"""
https://leetcode.com/problems/valid-parentheses/

Given a string s containing just the characters
 '(', ')', '{', '}', '[' and ']', 
 determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
"""

class Solution:

    # Solution 1
    def isValid(s):
        return



if __name__ == "__main__":
    solution = Solution()
    print(isValid("()")) # true
    print(isValid("()[]{}")) #true
    print(isValid("(]")) #false
