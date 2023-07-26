




## search with binary search 
## O(mlogn)

  func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {


       for num in nums1 {
         
          if bs(nums2, num) {
             return num
          }
        }
      return -1
    }

  func bs(_ nums: [Int], _ target: Int) -> Bool {

    var left = 0
    var right = nums.count - 1
     
    while left <= right {
      
      let mid = left + (right - left) / 2     
      
      if nums[mid] == target{
        return true
      }
      else if nums[mid] < target{
        left = mid + 1
      }
      else {
        right = mid - 1
      }
    }

    return false
    
  }

## O(n+m)
func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {

       var i = 0 , j = 0 

       while i < nums1.count && j < nums2.count {

         if nums1[i] < nums2[j]{
            i += 1
         }
         else if nums1[i] > nums2[j]{
           j += 1
         }
         else{
           return nums1[i]
         }
       }

      return -1
    }
