class Solution:
    roman = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }
    def romanToInt(self, s: str) -> int:
        total = 0
        prev = 0
        for char in reversed(s):
            curr = self.roman[char]
            if curr < prev:
                total -= curr
            else:
                total += curr
            prev = curr
        return total