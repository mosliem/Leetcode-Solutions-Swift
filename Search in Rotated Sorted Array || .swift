  func search(_ nums: [Int], _ target: Int) -> Bool {

       var left = 0, right = nums.count - 1 

       while left <= right {

         let mid = left + (right - left) / 2

         if nums[mid] == target || target == nums[left] || target == nums[right] {
           return true
         }
         
        if left < right && nums[left] == nums[right] {
          left += 1 
          right -= 1
          continue
        }

        if nums[mid] >= nums[left] {

           if target >= nums[left] && target < nums[mid] {
            right = mid - 1
           }
           else{
              left = mid + 1
            }
         }

        // right part is sorted
        else{

          if target <= nums[right] && target > nums[mid]{
            left = mid + 1
          }
          else{
            right = mid - 1
          }
        }
         
       }

      return false
    }
