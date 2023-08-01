func findPeakGrid(_ mat: [[Int]]) -> [Int] {
        
        
        var left = 0 ,  right = mat.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            var topIsBigger = false
            var bottomIsBigger = false
            
            // find max column value in the row
            var maxColVal = mat[mid][0]
            var maxPeakInd = 0
            
            for i in 1 ..< mat[mid].count{
                if maxColVal < mat[mid][i]{
                    maxColVal = mat[mid][i]
                    maxPeakInd = i
                }
            }
            
            if mid - 1 >= 0 && mat[mid][maxPeakInd] < mat[mid - 1][maxPeakInd] {
                topIsBigger = true
            }

            if mid + 1 < mat.count && mat[mid][maxPeakInd] < mat[mid + 1][maxPeakInd]{
                bottomIsBigger = true
            }
            
            if !topIsBigger && !bottomIsBigger {
                return [mid, maxPeakInd]
            }
            else if bottomIsBigger {
                left = mid + 1
            }
            else{
                right = mid - 1
            }
        }
        
        
        return [-1 , -1]
    }
