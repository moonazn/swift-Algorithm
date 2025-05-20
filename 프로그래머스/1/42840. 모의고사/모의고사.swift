import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5 ,5]
    ]
    
    let scores = patterns.map { pattern in
               answers.enumerated().filter { (index, answer) in
                          answer == pattern[index % pattern.count]
                                           }.count
                              }
    
    let maxScore = scores.max()!
    
    return scores.enumerated().compactMap { (index, score) in
                                          score == maxScore ? index + 1 : nil }
    
}