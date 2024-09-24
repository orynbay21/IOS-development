
// Problem 7: Grade Calculator
// Create a program that processes student test scores.
// Program Features:
// • Accept a list of student names and their corresponding test scores.
// • Calculate the average score.
// • Determine the highest and lowest scores.
// • Display each student’s name with their score and indicate if they are above or below the 
// average.
// Requirements:
// • Use arrays or dic9onaries to store student data.
// • Use loops to process the data.
// • Use condi9onal statements to compare scores.


import Foundation

// dict student names and their test scores
var grades: [String: Double] = [:]

// func to calc avg score
func calc_avg(scores: [Double]) -> Double {
    let total = scores.reduce(0, +)
    return total / Double(scores.count)
}


func max_score(scores: [Double]) -> Double {
    //the max score from the array of scores
    return scores.max() ?? 0
}


func min_score(scores: [Double]) -> Double {
    // find the min score from the array of scores
    return scores.min() ?? 0
}

print("Enter the number of students:")
if let input = readLine(), let num_students = Int(input) {

    for _ in 1...num_students {
        print("Enter student name:")
        if let name = readLine(), !name.isEmpty {
            print("Enter \(name)'s test score:")
            if let scoreInput = readLine(), let score = Double(scoreInput) {
                // Add the name and score to the dict
                grades[name] = score
            } else {
                print("Invalid score.Score should be a number, a double")
            }
        } else {
            print("Invalid name.Name should be a string")
        }
    }
    
   
    let scores = Array(grades.values)
    
 
    let avg_score = calc_avg(scores: scores)
    let high_score = max_score(scores: scores)
    let low_score = min_score(scores: scores)
    
    print("\n--- Grade Report ---")
    for (name, score) in grades {
        //is student above or below the avg
        let comparison = score >= avg_score ? "above" : "below"
        print("\(name)'s score: \(score) (\(comparison) average)")
    }
  
    print("\nAverage score: \(avg_score)")
    print("Highest score: \(high_score)")
    print("Lowest score: \(low_score)")
    
} else {
    print("Invalid number of students.")
}
