//Not finish yet
#include<cmath>
#include<iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    int a,b,c,p,q,lim;
    lim=300;
    double s=pow(pow(1404,1/3.0)-pow(875,1/3.0),0.5);
    for(c=1;c<=lim;c++){
        for(b=1;b<c;b++){
            for(a=1;a<lim;a++){
                for(p=1;p<=10;p++){
                    for(q=1;q<=10;q++){
                        double t=(-pow(a,1/3.0)+pow(b,1/3.0)+pow(c,1/3.0))*p/q;
                        if(s-t>0 && s-t<1e-10)
                        {
                            cout<<a<<" "<<b<<" "<<c<<" "<<p<<" "<<q<<" "<<endl;
                        }
                    }}}}}
    return 0;
}
