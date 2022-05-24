def rot13(message):
    """ ROT13 is a letter substitution cipher that replaces a letter with the 
    letter 13 letters after it in the alphabet. 
    Takes a string and returns the string ciphered with Rot13.
    If there are numbers or special characters included in the string, they 
    should be returned as they are. """

    lower = message.lower()
    letters = "abcdefghijklmnopqrstuvwxyz"
    output = ""

    for l in enumerate(lower):

        init_pos = 0
        for i in enumerate(letters):
            if i[1] == l[1]:
                init_pos = i[0]
            else:
                pass
            
        rot13_pos = init_pos + 13
        if rot13_pos >= 26:
            rot13_pos = 13 - (26 - init_pos)
        
        if lower[l[0]] not in letters:
            output += message[l[0]]
        else:
            if message[l[0]].islower():
                output += letters[rot13_pos]
            else:
                output += letters[rot13_pos].upper()
    
    return output

if __name__ == "__main__":
    print(rot13("test")) #grfg
    print(rot13("Test")) #Grfg
    print(rot13("T3st")) #Grfg
