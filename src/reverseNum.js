function reverseNumber(num) {
    // Initialize the reversed number to zero
    let reversed = 0;
    // Loop until the original number becomes zero
    while (num > 0) {
    // Get the last digit of the original number using the modulo operator
    let lastDigit = num / 10;
    // Add the last digit to the reversed number after multiplying it by 10
    reversed = reversed * 10 + lastDigit;
    // Remove the last digit of the original number using the floor division operator
    num = Math.floor(num / 10);
    }
    // Return the reversed number
    return reversed;
}

console.log(reverseNumber(1002)); // expected 2001