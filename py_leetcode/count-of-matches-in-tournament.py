# 1688
class Solution:
    def numberOfMatches(self, n: int) -> int:
        count = 0
        while n > 1:
            if n%2:
                count += (n - 1) // 2
                n = (n - 1) // 2 +1
            else:
                n//=2
                count+=n
        return count
