#include <iostream>
using namespace std;
typedef long long LL;
const int P=1000000007;
const int N = 2000005;
int prime[N + 1];

LL v(int n,int p)
{
    LL s=0;
    int t=p;
    while(n/t)
    {
        s=s+n/t;
        t=t*p;
    }
    return s;
}

LL pow(int x,int n)
{
	LL v=1;
	for(;n;n>>=1){
		if(n&1)v=1ll*v*x%P;
		x=1ll*x*x%P;
	}
	return v;
}

LL ff(int n)
{
    LL t=1;
    int i=1;
    int ex;
    while(prime[i]*prime[i]<=2*n)
    {
        ex=v(2*n,prime[i])-2*v(n,prime[i]);
        if(ex>0)t=t*pow(prime[i],ex-1)%P;
        i++;
    }
    return t%P;
}
void pre()
{
    for (int i = 2;i <= N;i++) {
        if (!prime[i]) {
            prime[++prime[0]] = i;
        }
        for (int j = 1;j <= prime[0] && i <= N / prime[j];j++) {
            prime[i*prime[j]] = 1;
            if (i%prime[j] == 0) {
                break;
            }
        }
    }
}

LL s(int n)
{
    LL ans=0;
    for(int i=1;i<=n;i++)
    {
        ans=(ans+ff(i))%P;
    }
    return ans;
}
int main()
{
    pre();
    cout << s(1000000) << endl;
    return 0;
}
