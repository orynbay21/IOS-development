import Foundation

// Function to convert Celsius to Fahrenheit
func CtoF(_ celsius: Double) -> Double {
    return (celsius * 9 / 5) + 32
}

// Function to convert Celsius to Kelvin
func CtoK(_ celsius: Double) -> Double {
    return celsius + 273.15
}

// Function to convert Fahrenheit to Celsius
func FtoC(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
}

// Function to convert Fahrenheit to Kelvin
func FtoK(_ fahrenheit: Double) -> Double {
    return FtoC(fahrenheit) + 273.15
}

// Function to convert Kelvin to Celsius
func KtoC(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

// Function to convert Kelvin to Fahrenheit
func KtoF(_ kelvin: Double) -> Double {
    return CtoF(KtoC(kelvin))
}

// Main program
print("Enter temperature value:")

if let inputTemp = readLine(), let temperature = Double(inputTemp) {
    print("Enter the unit (C for Celsius, F for Fahrenheit, K for Kelvin):")

    if let unit = readLine() {
        // Switch to determine conversion based on the unit entered
        switch unit.uppercased() {
        case "C":
            let fahrenheit = CtoF(temperature)
            let kelvin = CtoK(temperature)
            print("Temperature in Fahrenheit: \(String(format: "%.2f", fahrenheit))°F")
            print("Temperature in Kelvin: \(String(format: "%.2f", kelvin))K")
            
        case "F":
            let celsius = FtoC(temperature)
            let kelvin = FtoK(temperature)
            print("Temperature in Celsius: \(String(format: "%.2f", celsius))°C")
            print("Temperature in Kelvin: \(String(format: "%.2f", kelvin))K")
            
        case "K":
            let celsius = KtoC(temperature)
            let fahrenheit = KtoF(temperature)
            print("Temperature in Celsius: \(String(format: "%.2f", celsius))°C")
            print("Temperature in Fahrenheit: \(String(format: "%.2f", fahrenheit))°F")
            
        default:
            print("Error: Invalid unit entered. You can only enter: C, F, or K.")
        }
    } else {
        print("Error: Invalid input for unit. Please enter C, F, or K.")
    }
} else {
    print("Error: Invalid temperature value. Please enter a numeric value.")
}
