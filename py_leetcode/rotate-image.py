# 48

class Solution:
    def rotate(self, arr: List[List[int]]) -> None:
        size = len(arr)

        for i in range(size):
            left = 0
            right = size-1
            while left <= right:
                arr[i][left], arr[i][right] = arr[i][right], arr[i][left]
                left += 1
                right -= 1

        last = size-1


        for i in range(last):
            k = last - 1-i
            for j in range(k, -1, -1):
                arr[i][j], arr[last-j][last-i] = arr[last-j][last-i], arr[i][j]
        

