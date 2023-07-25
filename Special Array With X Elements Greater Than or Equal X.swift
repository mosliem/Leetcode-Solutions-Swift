 func specialArray(_ nums: [Int]) -> Int {

      let sortedArr = nums.sorted()
      var l = 0 , r = sortedArr.count - 1 
      var n = nums.count

      while l <= r {

        let mid = l + (r - l) / 2
        let numOfElements = n - mid 
                            

    if sortedArr[mid] >= numOfElements && ( mid == 0 || sortedArr[mid - 1] < numOfElements){
            return numOfElements
        }  
        else if sortedArr[mid] < numOfElements {
          l = mid + 1 
        } 
        else {
          r = mid - 1
        }

      }
      return  -1
    }
