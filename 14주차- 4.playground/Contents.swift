func solution(_ s: String) -> [Int] {
    var S = s
    var count = 0
    var zeroCount = 0
    
    repeat {
        count += 1
    
        let removedZeroCount = S.filter { $0 == "0" }.count
        zeroCount += removedZeroCount
        S = S.replacingOccurrences(of: "0", with: "")
        
        let c = S.count
        S = String(c, radix: 2)
        
    } while S != "1"
    
    return [count, zeroCount]
}
