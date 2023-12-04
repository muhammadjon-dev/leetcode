# 2264
class Solution:
    def largestGoodInteger(self, num: str) -> str:
        nums = ["999", "888", "777", "666", "555", "444", "333", "222", "111", "000"]
    
        for i in nums:
            if i in num:
                return i
        return ""   
