# 1561
class Solution:
    def maxCoins(self, piles: List[int]) -> int:
        res = 0
        piles = sorted(piles, reverse=True)
        steps = len(piles)//3
        for i in range(steps):
            res+= piles[2*i+1]
        return res
