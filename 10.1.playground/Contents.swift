import Foundation

func solution(_ my_string:String) -> String {
    var A: String = String()
    for B in my_string {
        var s = String(B)
        var lo = s.lowercased()
        var up = s.uppercased()
        A += (s == lo) ? up : lo
    }
    return A
}
