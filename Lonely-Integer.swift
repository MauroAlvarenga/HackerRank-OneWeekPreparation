import Foundation

/*
 * Complete the 'lonelyinteger' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func lonelyinteger(array: [Int]) -> Int {
    var lonely: Int = 0
    // If array has only one element, thats the lonely integer
    if array.count == 1 {
      lonely = array[0]
    } else {
      for number in array {
        // if the actual number has the same first and last index, it's the lonely integer
        if array.firstIndex(of: number) == array.lastIndex(of: number) {
          lonely = number
        }
      } 
    }
    return lonely
}
