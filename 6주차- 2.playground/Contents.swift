import Foundation

/*문제 설명
 
 머쓱이는 RPG게임을 하고 있습니다. 게임에는 up, down, left, right 방향키가 있으며 각 키를 누르면 위, 아래, 왼쪽, 오른쪽으로 한 칸씩 이동합니다. 예를 들어 [0,0]에서 up을 누른다면 캐릭터의 좌표는 [0, 1], down을 누른다면 [0, -1], left를 누른다면 [-1, 0], right를 누른다면 [1, 0]입니다. 머쓱이가 입력한 방향키의 배열 keyinput와 맵의 크기 board이 매개변수로 주어집니다. 캐릭터는 항상 [0,0]에서 시작할 때 키 입력이 모두 끝난 뒤에 캐릭터의 좌표 [x, y]를 return하도록 solution 함수를 완성해주세요.*/

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var result: [Int] = [0, 0]
    let maxX = board[0] / 2
    let maxY = board[1] / 2
    for i in keyinput {
        if i == "left" {
           result[0] = max(result[0] - 1, -maxX)
        } else if i == "right" {
          result[0] =  min(result[0] + 1, maxX)
        } else if i == "up" {
          result[1] = min(result[1] + 1, maxY)
        } else {
           result[1] = max(result[1] - 1, -maxY)
       }
    }
     return result
}
