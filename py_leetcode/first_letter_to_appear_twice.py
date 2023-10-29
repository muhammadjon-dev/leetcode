class Solution:
    def repeatedCharacter(self, s: str) -> str:
        l = []
        for i in s:
            if i not in l:
                l.append(i)
            else:
                return i
            
