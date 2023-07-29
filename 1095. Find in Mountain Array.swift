## Binary Search Solution 
## TimeComplexity O(logn)
func findInMountainArray(_ target: Int, _ mountainArr: MountainArray) -> Int {
    
    let len = mountainArr.length()
    let peakInd = findPeakIndex(mountainArr, len)
    
    let targetIndexLeftOfPeak = bsForVal(mountainArr, 0, peakInd, target, rightOfPeak: false)
    
    if targetIndexLeftOfPeak != -1 {
        return targetIndexLeftOfPeak
    }
    
    let targetIndexRightOfPeak = bsForVal(mountainArr, peakInd + 1, len - 1, target, rightOfPeak: true)
    
    return targetIndexRightOfPeak > 0 ? targetIndexRightOfPeak : -1
   }
   
   
   func findPeakIndex(_ arr: MountainArray, _ len: Int) -> Int {
    
    var left = 0, right = len - 1
    var peakInd = 0
    
    while left <= right {
        
        let mid = left + (right - left) / 2
        
        if arr.get(mid) > arr.get(mid+1) {
            peakInd = mid
            right = mid - 1
        }
        else {
            left = mid + 1
        }
        
    }
    
    return peakInd
   }
   
   func bsForVal(_ arr: MountainArray, _ l: Int, _ r: Int, _ target: Int, rightOfPeak: Bool) -> Int {
    
    var left = l, right = r
    
    while left <= right {
        
        let mid = left + (right - left) / 2
        var val = arr.get(mid)
        
        if val == target {
            return mid
        }
        else if val < target || (rightOfPeak && val > target){
            left = mid + 1
        }
        else{
            right = mid - 1
        }
    }
    
    return -1
   }
