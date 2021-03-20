/**
 * @param {number} x
 * @return {number}
 */

// Solution 1

var reverse = function(x) {
    let y =  0
    
    // Sign
    let sign = 1
    if (x < 0){
        sign = -1
        x = x * -1
    }
    
    // Range -2^31 <= x <= 2^31 - 1 (2147483647)
    if (x >= ((Math.pow(2, 31))-1)) {
        return 0;
    }

    // Reverse
    while (x > 0){
         y = y * 10
         y = y + (x % 10) // x % 10 returns last character
         x = parseInt(x / 10) // delete last character
    };
    return y * sign
};

console.log(reverse(2147483647))
console.log(reverse(-2147483647))
console.log(reverse(123))
console.log(reverse(-123))

// Solution 2

var reverse2 = function(x) {
    let y = Number(Math.abs(x).toString().split("").reverse().join(""));
    if (y > (Math.pow(2, 31))-1) {
        return 0
    } else {
        return y * Math.sign(x);
    }
};

console.log(reverse2(2147483647))
console.log(reverse2(-2147483647))
console.log(reverse2(123))
console.log(reverse2(-123))