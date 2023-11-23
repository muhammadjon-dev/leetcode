# id: 1630
class Solution:
    def checkArithmeticSubarrays(self, nums: List[int], l: List[int], r: List[int]) -> List[bool]:
        res = []
        for i in range(len(l)):
            arifth = True
            sorted_arr = sorted(nums[l[i]:r[i]+1])
            for j in range(2, len(sorted_arr)):
                diff = sorted_arr[1] - sorted_arr[0]
                if sorted_arr[j]-sorted_arr[j-1] != diff:
                    arifth = False
                    break
            res.append(arifth)
        return res
