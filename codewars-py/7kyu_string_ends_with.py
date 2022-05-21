# String ends with?
# Returns true if the first argument(string)
# passed in ends with the 2nd argument (also a string).

def solution(string, ending):
    endlen = len(ending)
    substring = string[len(string)-endlen:len(string)]
    if substring == ending:
        print("True")
        return True
    else:
        print("False")
        return False

if __name__ == "__main__":
    solution("abc", "bc")
    solution("abc", "d")
