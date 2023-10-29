class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        a = n
        while a != 0:
            nums1.pop(-1*a)
            a -= 1
    
        # res = nums1 + nums2
        i=0
        while n > i:
            nums1.append(nums2[i])
            i+=1
        nums1.sort()
