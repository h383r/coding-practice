def array_diff(a, b):
    """ Subtracts one list from another and returns the result.
        Remove all values from list a, which are present in list b keeping their order.
        If a value is present in b, all of its occurrences must be removed from the other """
    #return [x for x in a if x not in b]
    
    output = []
    for i in enumerate(a):
        if i[1] not in b:
            output.append(i[1])
    return output    

if __name__ == "__main__":
    print(array_diff([1,2],[1])) #[2]
    print(array_diff([1,2,2,2,3],[2])) #[1,3]