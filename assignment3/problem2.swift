// Problem 2: Prime Numbers
// Create a func9on isPrime(_ number: Int) -> Bool that determines whether a given number is 
// prime. Then, use this func9on to print all prime numbers between 1 and 100.
// Requirements:
// • Use loops and condi9onal statements within your func9on.
// • Call the func9on in your main program to display the prime numbers

//use this func9on to print all prime numbers between 1 and 100.
func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false  // 1 is not a prime numner
    }
    for i in 2..<number {
        if number % i == 0 {
            return false  // Not prime if divisible by any number other than 1 and itself
        }
    }
    return true  // Prime if no divisors were found
}

//to print prime numbers between 1 and 100
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}
