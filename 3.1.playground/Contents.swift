import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    for i in 0...n {
        if i.isMultiple(of: 2) {
        result += i}
        
    }
    return result
}
