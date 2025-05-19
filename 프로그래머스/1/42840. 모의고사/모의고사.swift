import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let man1 = [1, 2, 3, 4, 5]
    let man2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let man3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var count = [0, 0, 0]
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var result : [Int] = []
    
    for i in 0..<answers.count {
        if man1[i%5] == answers[i] {
            count[0] += 1
        }
        if man2[i%8] == answers[i] {
            count[1] += 1
        }
        if man3[i%10] == answers[i] {
            count[2] += 1
        }
    }
    let maxValue = count.max()!
    
    for (index, value) in count.enumerated() {
        if value == maxValue {
            result.append(index + 1)
        }
    }
    
    return result
}