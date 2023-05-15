/*문제 설명

어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.*/

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var A = absolutes
    for i in 0...signs.count-1 {
        if signs[i] == false{
            A[i] = -absolutes[i]
        }
    }
    return A.reduce(0, +)
}
