
## Sliding window technique 
## O(n)

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {

       var sum = 0, left = 0, right = 0, minSubLen = 100001, prevClosestSum = 0
       
       while right < nums.count {
         
         sum += nums[right]

         while sum > target{
            prevClosestSum = sum          
            sum -= nums[left]
            left += 1
         }

         if sum == target {
            let currLen = (right - left) + 1
            minSubLen = min(currLen, minSubLen)
         }
         else if prevClosestSum > target {
            let currGreaterLen = (right - left) + 2
             minSubLen = min(currGreaterLen, minSubLen)
         }

        right += 1
   
       }
      
      return minSubLen == 100001 ? 0 : minSubLen  
    }



## Binary Search Techinque 
## O(nlogn)

 func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {

         var prefix = [Int](repeating: 0, count: nums.count + 1)
         var minSubLen = 100001

         for i in 1 ... nums.count {
         prefix[i] = prefix[i - 1] + nums[i - 1]
         }

         for i in 1 ... prefix.count {

         let val = target + prefix[i - 1]
         let index = bs(prefix, target: val)

         if index < prefix.count{
            minSubLen = min(minSubLen, index - i + 1)
         }
         
      }
      
         return minSubLen == 100001 ? 0 : minSubLen
   }

   func bs(_ arr: [Int], target: Int) -> Int {

   var left = 0, right = arr.count - 1 

   while left <= right {

      let mid = left + (right - left) / 2

      if arr[mid] < target {
         left = mid + 1
      }
      else {
         right = mid - 1
      }
   }

      return left 
}
