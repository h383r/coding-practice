def get_count(sentence):
    """ Return the number of vowels in the given string."""
    #return sum(char in "aeiou" for char in sentence)

    count = 0    
    for char in sentence:
        if char in "aeiou":
            count+=1
    return count


if __name__ == "__main__":
    print(get_count("aeiou"))
    print(get_count("aeiox"))
    print(get_count("aeixx"))
    print(get_count("aexxx"))