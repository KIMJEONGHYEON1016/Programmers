import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let TF = str1.contains(str2)
    if TF == true {
        return 1}
    else {
        return 2}
}
