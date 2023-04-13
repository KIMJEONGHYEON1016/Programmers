import Foundation

/*문제 설명

정수가 담긴 배열 numbers와 문자열 direction가 매개변수로 주어집니다. 배열 numbers의 원소를 direction방향으로 한 칸씩 회전시킨 배열을 return하도록 solution 함수를 완성해주세요.*/

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result = numbers
   if direction == "left" {
        let index = result.removeFirst()
        result.append(index)
   } else {
        let index = result.removeLast()
        result.insert(index, at:0)}
    return result
}
