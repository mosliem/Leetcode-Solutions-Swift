
func longestAlternatingSubarray(_ nums: [Int], _ threshold: Int) -> Int {

       var maxLen = 0
       var foundStartFlag = false 

       var left = 0 , right = 0 
       
       var n = nums.count 

       while right < n {

        //check if the even left 
         if  nums[left] % 2 != 0 && !foundStartFlag {
           right += 1 
           left += 1
           continue
         }


         foundStartFlag = true

         //calculating the previous index Modulas 
         let prevInd = (right - 1 >=  0 ? right - 1  : -1)
         let prevIndMod = (prevInd == -1  ? -1 : nums[prevInd] % 2)
         
        // current right value is less than or equal threshold and the previous value is not the same modulas result 
        // or in the other cases of starting a new range 
        // ex 3 1 5 4 8 threshold = 4 
        // when right equal ind 2 the contigous sequence condition will fail because the prev is odd like right
        // so it will satsify the second condition which will set the right equal left for only one time for every new range 
        // left == right says that a new range is being calculated 
  
          if nums[right] <= threshold && (nums[right] % 2 != prevIndMod || left == right){
            maxLen = max(maxLen, right - left + 1)
          }

          // right != left to prevent the loop of checking prev modulas value from happenning 
          // left = right not right + 1 because we want to add the current right to the new range 
          // it is less than threshold  
          else if nums[right] % 2 == prevIndMod && right != left {
            foundStartFlag = false
            left = right 
            continue 
          }

          // left = right + 1 because the right value is greater than threshold
          else {
            foundStartFlag = false
            left = right + 1
          }

         right += 1
         
       }


     return maxLen 
      
   }
