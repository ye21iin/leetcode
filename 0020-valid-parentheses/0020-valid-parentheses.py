class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        mapping = {')':'(', ']':'[', '}':'{'}

        for char in s:
            if char in mapping.values(): # 여는 괄호
                stack.append(char)
            elif char in mapping: # 닫는 괄호
                if not stack or stack[-1] != mapping[char]: # 스택이 비어있거나 마지막 요소가 딕셔너리의 value와 맞지 않을때
                    return False
                stack.pop()
        return len(stack) == 0