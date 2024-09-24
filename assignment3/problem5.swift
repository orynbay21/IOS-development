
// Problem 5: Word Frequency Counter
// Write a Swi7 program that counts the frequency of each word in a given sentence.
// Program Specifica:ons:
// • Prompt the user to enter a sentence.
// • Count how many 9mes each word appears.
// • Display the words and their corresponding frequencies.
// Requirements:
// • Use a dic9onary to store word-frequency pairs.
// • Ignore punctua9on and make the word count case-insensi9ve.
// • Use loops to iterate through the words.

// Problem 5: Word Frequency Counter
// Write a Swi7 program that counts the frequency of each word in a given sentence.
// Program Specifica:ons:
// • Prompt the user to enter a sentence.
// • Count how many 9mes each word appears.
// • Display the words and their corresponding frequencies.
// Requirements:
// • Use a dic9onary to store word-frequency pairs.
// • Ignore punctua9on and make the word count case-insensi9ve.
// • Use loops to iterate through the words.
import Foundation

func extractSentence(_ sentence: String) -> [String] {
    
    let lowercased = sentence.lowercased()

    let punctuation = CharacterSet.punctuationCharacters
    let extracted = lowercased.components(separatedBy: punctuation).joined()

    return extracted.split(separator: " ").map { String($0) }
}

print("Enter a sentence:")
if let sentence = readLine() {
    
    let words = extractSentence(sentence)
   
    var Frequency: [String: Int] = [:]
    
  
    for word in words where !word.isEmpty {
        Frequency[word, default: 0] += 1
    }
    
    print("\nWord Frequencies:")
    for (word, count) in Frequency {
        print("\(word): \(count)")
    }
}
