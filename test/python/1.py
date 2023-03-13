from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        complement_dict = {}
        for i, num in enumerate(nums):
            complement = target - num
            if complement in complement_dict:
                return [complement_dict[complement], i]
            complement_dict[num] = i
        return []

def test_twoSum():
    s = Solution()
    assert s.twoSum([2, 7, 11, 15], 9) == [0, 1], "Test case 1 failed"
    assert s.twoSum([3, 2, 4], 6) == [1, 2], "Test case 2 failed"
    assert s.twoSum([3, 3], 6) == [0, 1], "Test case 3 failed"


test_twoSum()
