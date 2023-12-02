# 1160

class Solution:
    def isitok(self, word, list_chars):
        list_char = dict(list_chars)
        for let in word:
            if let in list_char and list_char[let] > 0:
                list_char[let] -= 1 
            else:
                return False
        return True

    def countCharacters(self, words: List[str], chars: str) -> int:
        list_chars = {}
        for i in chars:
            if i in list_chars:
                list_chars[i] += 1 
            else:
                list_chars[i] = 1
                
        total_length = 0
        for word in words:
            if self.isitok(word, list_chars):
                total_length += len(word)
                
        return total_length

