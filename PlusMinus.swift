import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    var positive: Int = 0
    var negative: Int = 0
    var zero: Int = 0
    
    // Loop over the array counting positives, negatives, and zeroes
    for number in arr {
        if number > 0 { 
            positive += 1
        } else if number < 0 {
            negative += 1
        } else { 
            zero += 1
        }
    }
    
    // Calculate the Ratios
    let positiveRatio: Double = Double(positive) / Double(arr.count)
    let negativeRatio: Double = Double(negative) / Double(arr.count)
    let zeroesRatio: Double = Double(zero) / Double(arr.count)
    
    // Print formatting to the required format
    print(String(format: "%.6f", positiveRatio))
    print(String(format: "%.6f", negativeRatio))
    print(String(format: "%.6f", zeroesRatio))
}
