func solution(_ strings:[String], _ n:Int) -> [String] {
    var result : [String] = strings
    var temp : String
    let nToIdx = strings[0].index(strings[0].startIndex, offsetBy: n)
    
    for k in 0..<strings.count {
        for index in 0..<strings.count-k-1 {
            if result[index][nToIdx] > result[index+1][nToIdx] {
                temp = result[index]
                result[index] = result[index+1]
                result[index+1] = temp
            } else if result[index][nToIdx] == result[index+1][nToIdx] {
                if result[index] > result[index+1] {
                    temp = result[index]
                    result[index] = result[index+1]
                    result[index+1] = temp
                }
            }
        }
    }
    
    
    return result
}