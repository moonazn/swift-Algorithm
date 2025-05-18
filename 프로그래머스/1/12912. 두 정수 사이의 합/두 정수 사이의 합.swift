func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    
    // 1) for num in min(a, b)...max(a, b)
    // 2) for num in a < b ? a...b : b...a {
    //     result += num
    // }
    
    
    // 3)
    let minVal = min(a, b)
    let maxVal = max(a, b)
    result = (minVal + maxVal) * (maxVal - minVal + 1) / 2
    
    return Int64(result)
}