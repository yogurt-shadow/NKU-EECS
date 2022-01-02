s = input().strip('\n')

m = int(input().strip('\n'))
from fractions import *
def tr(s):
    x=0
    for i in s:
        x=x*10+(ord(i)-ord('0'))
    return x

def get1():
    tot=len(s)
    tot-=m
    if tot==0:
        return Fraction(0)
    cur=s[0:tot]
    return Fraction(tr(cur),10**len(cur))

def get2():
    tot=len(s)-m
    if m==0:return Fraction(0)
    cur=s[tot:]
    return Fraction(tr(cur),(10**tot)*((10**len(cur))-1))

ans=get1()+get2()
print(ans.numerator,end=' ')
print(ans.denominator,end='')