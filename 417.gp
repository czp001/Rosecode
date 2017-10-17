r(n)=if(n%4==1||n%4==2,12*qfbhclassno(4*n),if(n%8==3,24*qfbhclassno(n),if(n%4==0,r(n/4),if(n%8==7,0))))
sum(m=0,99,r(10^17+m))
