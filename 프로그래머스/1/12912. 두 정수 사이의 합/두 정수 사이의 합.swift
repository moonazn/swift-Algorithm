func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    
    // for num in min(a, b)...max(a, b)
    for num in a < b ? a...b : b...a {
        result += num
    }
    
    return Int64(result)
}