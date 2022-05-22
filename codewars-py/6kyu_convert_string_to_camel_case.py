def to_camel_case(text):
    """ Converts dash/underscore delimited words into camel casing.
    The first word within the output should be capitalized only if 
    the original word was capitalized (known as Upper Camel Case, 
    also often referred to as Pascal case)."""

    text = text.replace("-","_").split("_")
    output = ""
    for i in range(len(text)):
        if i == 0:
            output += text[i]
            pass
        else:
            output += text[i].capitalize()
    return output

if __name__ == "__main__":
    print(to_camel_case("the-stealth-warrior"))
    print(to_camel_case("The_stealth_warrior"))