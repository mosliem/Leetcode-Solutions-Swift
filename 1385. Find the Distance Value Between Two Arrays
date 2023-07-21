  func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {

        var sortedArr = arr2.sorted()
        var nonValidCnt = 0
      
        for val in arr1 {
            nonValidCnt += searchForRange(sortedArr, val, d)   
        }
      
        return arr1.count - nonValidCnt
    }

   func searchForRange(_ arr: [Int], _ value: Int, _ d: Int) -> Int {

     var l = 0, r = arr.count - 1
     var lowerRange = value - d
     var higherRange = value + d
     
     while l <= r {

       let mid = l + ( r - l ) / 2 

       if arr[mid] < lowerRange {
          l = mid + 1
       }
       else if arr[mid] > higherRange {
         r = mid - 1
       }
       else {
         return 1  
       }
     }

     return 0
   } 
