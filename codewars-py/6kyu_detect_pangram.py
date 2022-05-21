# Detect Pangram
import string

def is_pangram(s):
    """ A pangram is a sentence that contains every single letter of the alphabet.
    Given a string, detect whether or not it is a pangram.
    Returns True or False """

    letters = "abcdefghijklmnopqrstuvwxyz"
    
    for l in letters:
        if l not in s.lower():
            return False
    return True

if __name__ == "__main__":
    print(is_pangram("The quick, brown fox jumps over the lazy dog!"))
    print(is_pangram("Lorem ipsum dolor sit amet"))