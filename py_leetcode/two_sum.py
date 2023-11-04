class Solution:
    def twoSum(self, nums: list, target: int):
        couples = []
        for i in range(len(nums)):
            for k in range(i, len(nums)):
                if k == i:
                    continue
                couples.append([i, k])
        for i in couples:
            a, b = nums[i[0]], nums[i[1]]
            if a+b == target:
                return i
        return [-1, -1]

