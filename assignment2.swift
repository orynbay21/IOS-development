
//Easy Tasks
//1
let fruits = ["Pomegranate", "Pineapple", "Apple", "Grapes", "Cherry"]
print(fruits[2])  
//2
var favoriteNumbers: Set = [3, 7, 13]
favoriteNumbers.insert(21)  
print(favoriteNumbers)  
//3
let programmingLanguages = ["C": 1972, "C++": 1985, "Swift": 2014]
if let swiftReleaseYear = programmingLanguages["Swift"] {
    print(swiftReleaseYear)  
}
//4
var colors = ["Pink", "Light Pink", "Dark Pink", "Pastel Pink"]
colors[1] = "White"  
print(colors) 

//Medium Tasks 

//1
let set1: Set = [1, 2, 3, 4]
let set2: Set = [3, 4, 5, 6]
let intersection = set1.intersection(set2)  
print(intersection)  

//2
var studentScores = ["Aruzhan": 4, "Aisha": 3, "Asel": 2]
studentScores["Asel"] = 3  
print(studentScores)  

//3
let array1 = ["apple", "banana"]
let array2 = ["cherry", "date"]
let mergedArray = array1 + array2  
print(mergedArray)  


//Hard Tasks
//1
var countryPopulations = ["Russia": '144,820,423', "India": '7,208,837', "Kazakstan": '20,645,241']
countryPopulations["Uzbekistan"] = '36,506,385'  
print(countryPopulations)  

//2
let setA: Set = ["cat", "dog"]
let setB: Set = ["dog", "mouse"]
let unionSet = setA.union(setB)
let finalSet = unionSet.subtracting(setB)  
print(finalSet)  

//3
let studentGrades = [
    "Aruzhan": [4, 5, 5],
    "Aisha": [4, 4, 5],
    "Asel": [3, 3, 5]
]

print(studentGrades["Asel"]![1])  
