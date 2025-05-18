import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var pNum = 0
    var yNum = 0
    
    for char in s {
        if char == "p" || char == "P" {
            pNum += 1
        } else if char == "y" || char == "Y" {
            yNum += 1
        }
    }
    
    ans = (pNum == yNum) ? true : false

    return ans
}