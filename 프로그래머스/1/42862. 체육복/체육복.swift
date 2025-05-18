import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lost = lost.sorted()
    var reserve = reserve.sorted()
    
    var filteredLost = (lost.filter{!reserve.contains($0)})
    filteredLost.sort()
    var filteredReserve = (reserve.filter{!lost.contains($0)})
    filteredReserve.sort()
    
    for i in 0..<filteredReserve.count {
        for k in 0..<filteredLost.count {
            if abs(filteredLost[k] - filteredReserve[i]) == 1 {
                filteredLost.remove(at: k)
                break
            }
        }
    }
    
    
    return n - filteredLost.count
}