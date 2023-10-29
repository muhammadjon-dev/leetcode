class Solution:
    def climbStairs(self, n: int) -> int:
        s1=0
        s2=1
        i=0
        while i<n:
            s=s1+s2
            s1 = s2
            s2 = s
            i+=1
        return s
