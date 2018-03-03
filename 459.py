from time import clock
def mat_mult(A, B, p):
    C = [[0,0],[0,0]]
    for i in range(2):
        for j in range(2):
            for k in range(2):
                C[i][j] += A[i][k]*B[k][j]
            C[i][j] %= p
    return C

def mat_pow(A, p, m):
    if p==0:return [[1,0],[0,1]]
    if p == 1:
        return A
    if p % 2:
        return mat_mult(A, mat_pow(A, p-1, m), m)
    X = mat_pow(A, p//2, m)
    return mat_mult(X, X, m)

start=clock()
mod=10**9+7
fib=[1]*100010
for i in range(3,100010):
    fib[i]=(fib[i-1]+fib[i-2])%mod
    
def PQ(i,k):
    frac=[(fib[i]-1)%mod,1,(fib[i]-2)%mod]
    Len=2
    remain,loop=k%Len,k//Len
    mp,mr=[[1,0],[0,1]],[[1,0],[0,1]]
    for i in range(Len,0,-1):
        A=[[frac[i],1],[1,0]]
        mp=mat_mult(mp,A,mod)
    mp=mat_pow(mp,loop,mod)
    for i in range(remain,0,-1):
        A=[[frac[i],1],[1,0]]
        mr=mat_mult(mr,A,mod)
    ma=mat_mult(mr,mp,mod)
    p,q=ma[1][0]%mod,ma[1][1]%mod
    t,q=q,p
    p=(frac[0]*p+t)%mod
    return [q,p]

def SPQ(m,n):
    sp,sq=0,0
    for i in range(4,m+1):
        ans=PQ(i,n)
        sp=sp+ans[0]
        sq=sq+ans[1]
    return sp%mod,sq%mod

print(SPQ(10**5,10**18))
print(clock()-start,'secs')
