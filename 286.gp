m=[k,-1;1,0];a=m^(-1+100)*[k,1]~;
sum(n=1,#Vec(a[1]),Vec(a[1])[n]^3)+sum(n=1,#Vec(a[2]),Vec(a[2])[n]^3)
