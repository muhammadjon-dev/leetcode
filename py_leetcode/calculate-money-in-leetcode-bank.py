# 1716
# easy
class Solution:
    def totalMoney(self, n: int) -> int:
        money = [i for i in range(1,8)]
        total = 0
        for i in range(1, n+1):
            a = (i-1)//7
            b = (i-1)%7
            total += money[b]+a*1
        return total
