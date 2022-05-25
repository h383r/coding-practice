# https://www.codewars.com/kata/5202ef17a402dd033c000009/python

def title_case(title, minor_words=""):
    """ convert a string into title case """
    
    #title = title.capitalize().split()
    #minor_words = minor_words.lower().split()
    #return ' '.join([word if word in minor_words else word.capitalize() for word in title])

    words = title.lower().split()
    minor = minor_words.lower().split()
    output = []

    for w in range(len(words)):

        is_minor = False

        for m in range(len(minor)):
            if words[w] == minor[m]:
                is_minor = True
                break
            else:
                is_minor = False

        if w == 0 or not is_minor:
            output.append(words[w][0:1].upper()+words[w][1:])
        else:
            output.append(words[w])
        
    return " ".join(output)

if __name__ == "__main__":
    print(title_case("First a of in", "an often into")) # First A Of In
    print(title_case("a clash of KINGS", "a an the of")) # A Clash of Kings
    print(title_case("THE WIND IN THE WILLOWS", "The In")) # The Wind in the Willows