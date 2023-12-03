# 1266
class Solution:
    def minTimeToVisitAllPoints(self, points: List[List[int]]) -> int:
        count = 0
        for point in range(1, len(points)):
            point1 = points[point-1]
            point2 = points[point]

            dx = abs(point1[0]-point2[0])
            dy = abs(point1[1]-point2[1])
            count+=max(dx, dy)

        return count

