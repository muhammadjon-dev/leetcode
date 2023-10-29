class Solution:
    def sortPeople(self, names: list[str], heights: list[int]) -> list[str]:
        l = [[names[i], heights[i]] for i in range(len(names))]
        l.sort(key = lambda x: x[1],reverse=True)
        
        return [i[0] for i in l]