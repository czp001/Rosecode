p(n)=a=n+1;while(!(isprime(a)&&a%4==3),a++);a
p43(k,n)=a=n;for(i=1,k,a=p(a));a
isone(p)=isprime(p)&&p%4==3&&if(p>9,qfbclassno(-p)%4,p)==3
s(n,m)=ss=0;for(k=1,m,pn=p43(k,n);if(isone(pn),ss+=1,ss+=pn-1));ss
s(10^18,32)
