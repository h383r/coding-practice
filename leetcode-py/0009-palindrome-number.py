# https://leetcode.com/problems/palindrome-number/ 

def isPalindrome(x):
    """ Given an integer x, return true if x is palindrome integer.
    An integer is a palindrome when it reads the same backward as forward."""
    if int(str(x)[::-1]) == x:
        return True
    else:
        return False

if __name__ == "__main__":
    print(isPalindrome(181))
    print(isPalindrome(182))
