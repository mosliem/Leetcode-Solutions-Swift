func findPeakElement(_ nums: [Int]) -> Int {

        var left = 0 , right = nums.count - 1 

         if nums.count == 1 {
            return 0
         }      

        while left <= right {

           let mid = left + ( right - left ) / 2

           if nums[mid] < nums[mid + 1] {
              left = mid + 1
           }
           else{
             right = mid + 1 
           }

        }

       return left
    }
