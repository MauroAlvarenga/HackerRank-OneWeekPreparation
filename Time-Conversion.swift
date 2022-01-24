import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    // Create a copy of the array, to be able to modify it.
    var stringed: String = s
    // Remove the last 2 characters, that contain either "AM" or "PM"
    stringed.removeLast(2)
    // Store the integer value of hours and minutes for calculations
    let hours: Int = Int(s.prefix(2))!
    let min = stringed[stringed.firstIndex(of: ":")!..<stringed.endIndex] // *** Look down
    
    if s.hasSuffix("AM") {
        // If it's AM, we just need the remainder of dividing by 12, and format that into a String.
        let convertedHour: Int = hours % 12
        let converted: String = "0" + String(convertedHour) + min
        return converted
    } else {
        // If it's PM, we need to sum 12 to the remainder of dividing by 12, and format into a String.
        let convertedHour: Int = hours % 12 + 12
        let converted: String = String(convertedHour) + min
        return converted
    }
}

// *** I'm sure there must be a better way to get a substring, but this is the one i found. 
