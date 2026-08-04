class Solution:
    def findMissingElements(self, nums: List[int]) -> List[int]:
        nums.sort()
        answer = []

        for i in range(len(nums) - 1):
            for num in range(nums[i] + 1, nums[i + 1]):
                answer.append(num)

        return answer