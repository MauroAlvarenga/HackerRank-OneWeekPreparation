import Foundation

/*
 * Complete the 'countingSort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func countingSort(arr: [Int]) -> [Int] {
    // Create the frequency array with 100 zeroes
    var frequency: [Int] = [Int](repeating: 0, count: 100)
    
    // For each number, add 1 in that number position
    arr.forEach() { frequency[$0] += 1 }
    
    return frequency
}
