import Foundation

func solution(_ sides:[Int]) -> Int {
   var A: [Int] = sides.sorted()
   if A[0] + A[1] > A[2] {
       return 1
   }else {return 2
         }
    
}
