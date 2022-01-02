#include<iostream>
#include<vector>
using namespace std;
using ll = long long;

int main(){
    ll n;
    ll m;
    cin >> n >> m;
    ll cur = 0;
    while(cur < m){
        ll left = m - cur;
        //cout << left << endl;
        switch(n){
            case 1:
                if(left % 3 == 0){
                    cout << 1 << endl;
                }           
                else if(left % 3 == 1){
                    cout << 4 << endl;
                }
                else{
                    cout << 2 << endl;
                }
                return 0;
            case 2:
                if(left % 3 == 0){
                    cout << 2 << endl;
                }
                else if(left % 3 == 1){
                    cout << 1 << endl;
                }
                else{
                    cout << 4 << endl;
                }
                return 0;
            case 4:
                if(left % 3 == 0){
                    cout << 4 << endl;
                }
                else if(left % 3 == 1){
                    cout << 2 << endl;
                }
                else{
                    cout << 1 << endl;
                }
                return 0;
            default:
                if(n % 2 == 1){
                    n = 3*n + 1;
                }
                else{
                    n = n / 2;
                }
                cur ++;
        }
    }
    cout << n << endl;
    return 0;
}