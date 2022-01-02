from fractions import *

def convert1(s):
    if len(s) == 0:
        return 0
    ans = 0
    for i in range(len(s)):
        ans = ans * 10 + ord(s[i]) - ord('0')
    return ans

def convert2(s):
    if len(s) == 0:
        return Fraction(0)
    num = 1
    for i in range(len(s)):
        num = 10 * num
    return Fraction(convert1(s), num - 1)


s = input().strip('\n')
m = int(input().strip('\n'))
left = len(s) - m
int_part = convert1(s[0 : left])
dec_part = convert2(s[left : len(s)])
num = 1
for i in range(left):
    num = 10 * num
frac = Fraction(Fraction(int_part) + dec_part, num)
print(frac.numerator, end = " ")
print(frac.denominator, end = " ")