class Solution:
    def isPalindrome(self, x: int) -> bool:
        j,rev=0,0
        org=x
        for _ in str(org):
            j=x%10
            rev=rev*10+j
            x=x//10
        if org == rev:
            return(True)
        else:
            return(False)