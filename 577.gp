s="";a=[1230626769295,98567907168,1234567891057]~;
ma=[1,-2,2;2,-1,2;2,-2,3]^(-1);mb=[-1,2,2;-2,1,2;-2,2,3]^(-1);mc=[1,2,2;2,1,2;2,2,3]^(-1);
check(x)=if(x[1]>0&&x[2]>0&&x[3]>0,1,0);
while(a!=[3,4,5]~,if(check(ma*a),s=concat(s,"A");a=ma*a,if(check(mb*a),s=concat(s,"B");a=mb*a,if(check(mc*a),s=concat(s,"C");a=mc*a))));s
