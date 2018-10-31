a(n, m=logint(n, 2), c=1<<(m-1), a, d)={if(n>=3*c, a=n-3*c; d=2*c^2, a=n-2*c; n%2*c+d=c^2)+sum(k=1, m-2^(n<3*c), if(bittest(a, m-1-k), 1<<k+d>>k))+(n>2)};
l=10^50;r=10^51;m=(l+r)\2;
t=0;while(a(m)-10^100!=0,x=a(m)-10^100;if(x<0,l=m;m=(l+r)\2;,r=m;m=(l+r)\2);if(t==1000,break);t++);l-1
