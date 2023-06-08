import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var sum = brown + yellow
    var result = [Int]()
    for i in 3...sum{
        if sum % i == 0 {
            var j = sum / i
            if (i-2) * (j-2) == yellow && i >= j{
                result.append(i)
                result.append(j)
            }
        }
    }
    return result
}
