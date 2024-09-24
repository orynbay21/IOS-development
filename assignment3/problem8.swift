// Problem 8: Palindrome Checker
// Write a func9on isPalindrome(_ text: String) -> Bool that checks whether a given string is a 
// palindrome.
// Requirements:
// • Ignore spaces, punctua9on, and make the check case-insensi9ve.
// • Return true if the string is a palindrome, false otherwise


import Foundation

func isPalindrome(_ text: String) -> Bool {
    // remove spaces, punctuation, and make it lowercase
    let cleanedText = text.lowercased().filter { $0.isLetter }
    //{ $0.isLetter } is used as a closure (an inline function) that checks //whether each character in a string is a letter.
    
    // Compare w its reversed version
    return cleanedText == String(cleanedText.reversed())
}


print(isPalindrome("anna"))
print(isPalindrome("aruzhan")) 
