
##binary search solution log(n)##
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {

       var l = 0, r = arr.count - 1 
       var n = arr.count - 1
       var currentIndexMissed = 0
      
       while l <= r {

         let mid = l + (r - l) / 2
         currentIndexMissed = arr[mid] - (mid + 1)

         if currentIndexMissed < k {
           l = mid + 1
         } 
         else {
           r = mid - 1
         }
       }

      return l + k
    }

# Brute force solution #

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {

      var missingVal = [Int]()
      var missingInd = k

      var i = 0
      var indexVal = 1
      
      while missingInd > 0 && i < arr.count {

        if indexVal != arr[i]{
          missingInd -= 1
          missingVal.append(indexVal)
        }
        else{
          i += 1
        }
        indexVal += 1
      }

      if missingInd > 0 {
         
         for i in 0 ..< missingInd{
           missingVal.append(indexVal)
           indexVal += 1 
         }
         
      } 

      return missingVal[k - 1]
    }




