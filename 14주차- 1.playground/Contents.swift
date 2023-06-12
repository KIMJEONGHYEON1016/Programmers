func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var countDict: [Int: Int] = [:]
    
    for element in tangerine {
        countDict[element, default: 0] += 1
    }
    
    var n = k
    var result = 0
    
    for count in countDict.values.sorted(by: >) {
        n -= count
        result += 1
        
        if n <= 0 {
            break
        }
    }
    
    return result
}
