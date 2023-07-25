func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {

        var ans = [Int]()
        var stRangeInd = -1
        var endRangeInd = -1
        var sortedArr = nums.sorted()
        
        for i in 0 ..< nums.count {
            if sortedArr[i] == target {
                stRangeInd = i
                endRangeInd = bs(sortedArr, i, target)
                break
            }
        }
        
        if stRangeInd > -1 && endRangeInd > -1 {
          ans.append(contentsOf: stRangeInd ... endRangeInd)
        }
      
        return ans
      }

  func bs(_ arr: [Int], _ startRangeIndex: Int, _ target: Int) -> Int {

      var l = startRangeIndex, r = arr.count - 1
      var endRange = 0
    
      while l <= r {

          let mid = l + (r - l) / 2

          if arr[mid] == target{
            endRange = max(endRange, mid)
          }
        
          if arr[mid] <= target {
            l = mid + 1
          } 
          else{
            r = mid - 1
          }
      }

    return endRange
  }
