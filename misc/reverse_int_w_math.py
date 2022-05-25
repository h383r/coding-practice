def reverse_integer(number):
    reverse = 0
    while(number > 0):
        # Isolate last digit
        lastDigit = number % 10
        # Append lastDigit to reverse
        reverse = (reverse * 10) + lastDigit
        # Remove lastDigit from number (int division which rounds results down)
        number = number // 10
    return reverse

if __name__ == "__main__":
    print(reverse_integer(1234))