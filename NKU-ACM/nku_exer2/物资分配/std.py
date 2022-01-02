mod = int(1e9 + 7)

def qpow(x, n):
    ans = 1
    tmp = x
    while n > 0:
        if n % 2 == 1:
            ans = (ans * tmp) % mod
        n //= 2
        tmp = (tmp * tmp)%mod
    return ans


x = int(input())
while x:
    y = int(input())
    tmp = qpow(2, y - 1)
    print((tmp*(tmp + 1)) % mod)
    x -= 1