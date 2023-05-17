/*문제 설명

정수 배열 numbers가 주어집니다. numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.*/

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    for i in 0...numbers.count-1 {
        if i < numbers.count-1 {
            for a in i+1...numbers.count-1 {
            result.append(numbers[i] + numbers[a])
            }
        }
    }
    return Array(Set(result)).sorted()
}
