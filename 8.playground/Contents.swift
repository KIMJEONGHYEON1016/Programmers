import Foundation

func solution(_ hp:Int) -> Int {
   var A: Int = Int(hp / 5)
   var A1: Int = Int(hp % 5)
   if hp >= 5 {
       return A + Int(A1 / 3) + Int(A1 % 3)
   } else {return Int(A1 / 3) + Int(A1 % 3)}
}
