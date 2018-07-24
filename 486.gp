is(n)=floor(10^frac(log(2.^n)/log(10))*10^4)==66666
f(k)=t=1;n=224296;a=[70777, 183593, 254370];while(t<k,for(i=1,3,if(is(n+a[i]),t++;n+=a[i];break)));n
f(10^6)
