import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    var total: Int = 0
    // Loop over the array summing up the numbers
    for number in arr { 
        total += number
    }
    
    // Calculate the min and max possible sum by substracting the max and min value, respectively
    let minSum: Int = total - arr.max()!
    let maxSum: Int = total - arr.min()!
    
    print("\(minSum) \(maxSum)")
}
