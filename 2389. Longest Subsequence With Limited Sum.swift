    func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {

       var ans = [Int]()
       var preSum = nums.sorted()
       .reduce(into: [Int]()) {$0.append(($0.last ?? 0) + $1)}

       for i in 0 ..< queries.count {        
          let subArrSize = bs(preSum, queries[i])
          ans.append(subArrSize)
       }

      return ans
      
    }

func bs(_ arr: [Int], _ target: Int) -> Int {

        var l = 0, r = arr.count - 1

        while l <= r {

            let mid = l + (r - l) / 2

            if arr[mid] <= target {
            l = mid + 1
            }
            else{
            r = mid - 1
            }
        }

        return l
    }
