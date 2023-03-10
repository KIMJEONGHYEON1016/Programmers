import Foundation

func solution(_ numbers:[Int]) -> Int {
   var A: [Int] = [Int]()
    A = numbers.sorted(by:>)
    return A[0] * A[1]
    
}
