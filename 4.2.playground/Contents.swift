import Foundation

func solution(_ money:Int) -> [Int] {
    var A: Int = money % 5500
    return [money/5500, A]
}
