import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var fail = [Int:Double]()
    
    var stagesNum = [Int:Int]()
    for stage in stages {
        stagesNum[stage, default: 0] += 1
    }
    
    var remaining = stages.count    // 아직 게임을 하고 있는 사람 수
    
    for stage in 1...N {
        let stuck = stagesNum[stage] ?? 0   // 머무른 사람
        if remaining == 0 {
            fail[stage] = 0.0
        } else {
            fail[stage] = Double(stuck) / Double(remaining)
        }
        remaining -= stuck
    }
    
    let sortedFail = fail.sorted { 
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }}
    
    return sortedFail.map { $0.key }
}