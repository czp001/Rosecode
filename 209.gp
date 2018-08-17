n=1413121110987654321;
x=1415926535/5772156649;
f(n)=local(a=1, b=0); while(n>0, if(bitand(n, 1), b+=a, a+=b); n>>=1); b
index(x)=if(x==1,1,if(x<1,2*index(x/(1-x)),2*index(x-1)+1))
printf("%d/%d,%d",f(n),f(n+1),index(x))
