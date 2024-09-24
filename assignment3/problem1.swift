// Problem 1: FizzBuzz in Swift

for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")  // 3 and 5
    } else if number % 3 == 0 {
        print("Fizz")  //3
    } else if number % 5 == 0 {
        print("Buzz")  //5
    } else {
        print(number)  // Non-multiples of 3 or 5
    }
}
