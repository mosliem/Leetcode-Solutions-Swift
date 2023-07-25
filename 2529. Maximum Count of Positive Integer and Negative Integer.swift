## Binary Search with condition handling using closures
## Runtime = O(logn)
func maximumCount(_ nums: [Int]) -> Int {

        let positiveRangeCondition = {(val: Int) -> Bool in return val <= 0}
        let negativeRangeCondition = {(val: Int) -> Bool in return val < 0}
            
        let numOfPositive = nums.count - bsForRange(nums, positiveRangeCondition)
        let numOfNegative = bsForRange(nums, negativeRangeCondition)
    
        return max(numOfNegative, numOfPositive)                
    }

    func bsForRange(_ nums: [Int], _ rangeCondition: (_ value: Int) -> Bool) -> Int {

        var left = 0, right = nums.count - 1 

        while left <= right {
        
        let mid = left + (right - left) / 2

        if rangeCondition(nums[mid]) {
            left = mid + 1
        }
        else{
            right = mid - 1
        }
     }

    return left
  }


## solution using filter method on swift 
## runtime = O(n)
    func maximumCount(_ nums: [Int]) -> Int {

        let positiveRange = nums.filter({$0 > 0}).count 
        let negativeRange = nums.filter({$0 < 0}).count
            
        return max(positiveRange, negativeRange)                
    }
