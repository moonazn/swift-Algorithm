import Foundation

func solution(_ numbers:[Int]) -> String {
    var numbers = numbers.map { String($0) }
    var result : [String] = []
    
    result = numbers.sorted {
        $0 + $1 > $1 + $0   // 클로저
    }
    
    if result[0] == "0" {
        return "0"
    }
    
    return result.joined()
}