  func countHillValley(_ nums: [Int]) -> Int {
     
      var numOfHills = 0
      var numOfVally = 0
     
      var numsDis = [Int]()
      numsDis.append(nums[0])
      
      for i in 1 ... nums.count - 1{
        if nums[i] != nums[i - 1]{
          numsDis.append(nums[i])
        }
      }
      
      for i in 0 ... numsDis.count - 1 {
         
         if i + 1 > numsDis.count - 1 || i - 1 < 0 {
            continue
         }

         if numsDis[i] > numsDis[i + 1] && numsDis[i] > numsDis[i - 1]{
           numOfHills += 1
         }
         else if  numsDis[i] < numsDis[i + 1] && numsDis[i] < numsDis[i - 1]{
           numOfVally += 1 
         }
      }

      return numOfHills + numOfVally
  }
