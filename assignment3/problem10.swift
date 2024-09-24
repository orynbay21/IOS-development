// Problem 10: Unique Characters
// Write a func9on hasUniqueCharacters(_ text: String) -> Bool that determines if a string has all 
// unique characters.
// Requirements:
// • Consider le[ers case-sensi9vely (e.g., 'A' and 'a' are different).
// • Return true if all characters are unique, false otherwise.
// Submission Guidelines
// • Ensure your code compiles and runs without errors.
// • Include comments explaining your code logic.
// • Organize your code for readability (use proper indenta9on and spacing).
// • Submit all .swi7 files in a git repository
// Grading Criteria
// • Correctness: Solu9ons meet the problem requirements and produce the correct output.
// • Code Quality: Code is clean, well-organized, and follows Swi7 naming conven9ons.
// • Comments: Code includes comments that explain the logic and flow.
// • Func:onality: Programs handle user input gracefully and perform necessary error 
// checking

import Foundation

// Function to check if a string has all unique characters
func hasUniqueCharacters(_ text: String) -> Bool {
    // Create a set to store characters
    var characterSet: Set<Character> = []

    // Iterate through each character in the input string
    for char in text {
        // Check if the character is already in the set
        if characterSet.contains(char) {
            // If it is, return false (not unique)
            return false
        }
        // Otherwise, add the character to the set
        characterSet.insert(char)
    }
    
    //  no duplicates , return true
    return true
}


func checkUniqueCharacters() {
    
    print("Enter a string to check for unique characters:")
    
    if let input = readLine() {
        
        let result = hasUniqueCharacters(input)
        
        if result {
            print("All chars are unique.")
        } else {
            print("There are duplicate characters.")
        }
    } else {
        print("Error: Invalid string.")
    }
}


checkUniqueCharacters()
