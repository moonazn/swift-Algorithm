func solution(_ s:String) -> String {
    var resultArr = ""
    var index = 0
    
    for char in s {
        if char == " " {
            resultArr.append(char)
            index = 0
            continue
        }
        if index % 2 == 0 {
            resultArr.append(char.uppercased())
        } else {
            resultArr.append(char.lowercased())
        }
        
        index += 1
    }
    
    
    return resultArr
}