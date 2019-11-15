//test,not finish

#include<bits/stdc++.h>
using namespace std;
typedef long long LL;
int main(){
    LL t, s, n, a, b;
    LL mod = 1000000000;
    n = 100000000000;
    t = 0;
    for (a = 1; a <= LL(sqrt(n / 3)); a++)
    { 
        if(a%1000==0)
            cout << a << endl;
        for (b = a; a * a + b * b + a * b <= n; b++)
        {
            if(__gcd(a,b)==1&&a*a+a*b-b*b>0){
                t = t + 1;
                s = s + a * a+ 3 * a * b+ b * b;
                s %= mod;
            }
        }
    }
    cout << t << " ," << s << endl;
}
