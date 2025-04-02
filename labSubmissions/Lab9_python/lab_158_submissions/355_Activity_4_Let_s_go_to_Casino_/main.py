'''
    Let's go to casino
    Author: Saksham Rathi
'''
import sys
# Please write your code in this file.
e = (1e9+7)

def f(n):
    if n < 0:
        return 0
    if n==0 or n==1:
        return 1
    
    dp = [1] + [0]*n
    for i in range(1,n+1):
        dp[i] = sum(dp[max(0,i-6):i]) % e
       
    return dp[n]

a = int(sys.argv[1])
# print(memo)
print(int(f(a)))