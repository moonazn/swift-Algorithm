func solution(_ strings:[String], _ n:Int) -> [String] {
    let nToIdx = strings[0].index(strings[0].startIndex, offsetBy: n)
    
    var result = strings.sorted {
        return $0[nToIdx] == $1[nToIdx] ? $0 < $1 : $0[nToIdx] < $1[nToIdx]
    }
    
    
    return result
}