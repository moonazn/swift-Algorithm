func solution(_ strings:[String], _ n:Int) -> [String] {
//     let nToIdx = strings[0].index(strings[0].startIndex, offsetBy: n)
    
//     var result = strings.sorted {
//         return $0[nToIdx] == $1[nToIdx] ? $0 < $1 : $0[nToIdx] < $1[nToIdx]
//     }
    
    
//     return result
    
    var result : [String] = strings
    let nToIdx = strings[0].index(strings[0].startIndex, offsetBy: n)
    
    for k in 0..<strings.count {
        for index in 0..<strings.count-k-1 {
            if result[index][nToIdx] > result[index+1][nToIdx] {
                result.swapAt(index, index+1)   // swift 내장 함수
            } else if result[index][nToIdx] == result[index+1][nToIdx] {
                if result[index] > result[index+1] {
                    result.swapAt(index, index+1)
                }
            }
        }
    }
    return result
}