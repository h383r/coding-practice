"""
13. Roman to Integer
https://leetcode.com/problems/roman-to-integer/


"""

class Solution:

    def romanToInt(self, s: str) -> int:
        
        result = 0
        temp = 0
        
        roman = {
            "I" : 1,
            "V" : 5,
            "X" : 10,
            "L" : 50,
            "C" : 100,
            "D" : 500,
            "M" : 1000,
        }

        for i in reversed(s):
            if roman[i] >= temp:
                result += roman[i]
            else:
                result -= roman[i]
            temp = roman[i]
        
        print(result)
        return result

if __name__ == "__main__":
    solution = Solution()
    solution.romanToInt("IX")
