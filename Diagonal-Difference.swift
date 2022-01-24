import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftToRightDiag: Int = 0
    var rightToLeftDiag: Int = 0
    let size: Int = arr.count
    
    // Sum the values of the left to Right Diagonal
    for i in 0 ..< size {
        // If i == j, means we are in [0][0], [1][1], [2],[2], etc.
        for j in 0 ..< size where i == j {
            leftToRightDiag += arr[i][j]
        }
    }

    // Sum the values of the Left to Right Diagonal
    for i in 0 ..< size {
        // If i + j == size - 1, we get [0][2], [1][1], [2][0]
        for j in 0 ..< size where i + j == size - 1 {
            rightToLeftDiag += arr[i][j]
        }
    }
    
    let absoluteDifference: Int = abs(leftToRightDiag - rightToLeftDiag)
    return absoluteDifference
}
