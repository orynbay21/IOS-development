
// Problem 6: Fibonacci Sequence
// Implement a func9on fibonacci(_ n: Int) -> [Int] that returns an array containing the first n
// numbers of the Fibonacci sequence.
// Requirements:
// • Use loops to calculate the sequence.
// • Handle cases where n is less than or equal to zero by returning an empty array


func fibonacci(_ n: Int) -> [Int] {
    //where n is less than or equal to zero
    guard n > 0 else {
        return []
    }

    //the first two numbers of the Fibonacci sequence
    var sequence = [0, 1]

    // if n is 1, return the first element
    if n == 1 {
        return [0]
    }

    // generate the Fibonacci sequence up to n elements
    for i in 2..<n {
        let nextNumber = sequence[i - 1] + sequence[i - 2]
        sequence.append(nextNumber)
    }

    return sequence
}


print(fibonacci(12)) 
