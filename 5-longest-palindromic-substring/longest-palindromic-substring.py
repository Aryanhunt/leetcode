class Solution:
    def longestPalindrome(self, s: str) -> str:
        t = '#' + '#'.join(s) + '#'
        p = [0] * len(t)
        center = right = 0

        for i in range(len(t)):
            mirror = 2 * center - i

            if i < right:
                p[i] = min(right - i, p[mirror])

            while (i + p[i] + 1 < len(t) and
                   i - p[i] - 1 >= 0 and
                   t[i + p[i] + 1] == t[i - p[i] - 1]):
                p[i] += 1

            if i + p[i] > right:
                center, right = i, i + p[i]

        max_len = max(p)
        center = p.index(max_len)

        return s[(center - max_len) // 2:(center + max_len) // 2]