// Problem 9: Simple Calculator

// • Prompt the user to enter two numbers.
// • Ask the user to choose an opera9on: plusi9on (+), subtrac9on (-), mul9plica9on (*), or 
// division (/).
// • Perform the calcula9on and display the result.
// • Allow the user to perform mul9ple calcula9ons un9l they choose to exit.
// Requirements:
// • Use func9ons to perform each opera9on.
// • Handle division by zero with an appropriate error message.
// • Use a loop to con9nue the program based on user input.

import Foundation


func plus(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func minus(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    
    guard b != 0 else {
        print("You can't divide by 0")
        return nil
    }
    return a / b
}


while true {
   
    print("Enter the first number:")
    guard let input1 = readLine(), let num1 = Double(input1) else {
        print("Invalid number.")
        continue
    }

    print("Enter the second number:")
    guard let input2 = readLine(), let num2 = Double(input2) else {
        print("Invalid number.")
        continue
    }

    print("Choose an operation (+, -, *, /), type 'exit' to quit:")
    if let operation = readLine() {
        switch operation {
        case "+":
            let result = plus(num1, num2)
            print("Result: \(result)")
        case "-":
            let result = minus(num1, num2)
            print("Result: \(result)")
        case "*":
            let result = multiply(num1, num2)
            print("Result: \(result)")
        case "/":
            if let result = divide(num1, num2) {
                print("Result: \(result)")
            }
        case "exit":
            print("Exiting the calculator.")
            exit(0)
        default:
            print("Invalid operation.")
        }
    }
}
