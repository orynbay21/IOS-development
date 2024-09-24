import Foundation

var shoppingList = [String]()

func displayMenu() {
    print("""
    \nShopping List Manager
    ------------------------
    1. Add an item
    2. Remove an item
    3. View the shopping list
    4. Exit
    ------------------------
    Enter (1-4):
    """)
}

func add() {
    print("Enter item to add:")
    if let item = readLine(), !item.isEmpty {
        shoppingList.append(item)
        print("\(item) has been added to your shopping list.")
    } 
}

func remove() {
    print("Enter item to remove:")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("\(item) was removed from your shopping list.")
    } else {
        print("Item not in the list.")
    }
}

func view() {
    if shoppingList.isEmpty {
        print("Your shopping list is empty.")
    } else {
        print("\nYour current shopping list:")
        for (index, item) in shoppingList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

var Exit = false

while !Exit {
    displayMenu()
    
    if let choice = readLine() {
        switch choice {
        case "1":
            add()
        case "2":
            remove()
        case "3":
            view()
        case "4":
            Exit = true
            print("Exiting the program.")
        default:
            print("Invalid choice. Please enter a number between 1 and 4.")
        }
    }
}
