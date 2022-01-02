#include<iostream>
#include<vector>
#include<algorithm>

using namespace std;
using ll = long long;

vector<vector<ll>> vec1;
vector<vector<ll>> vec2;


int main(){
    ll n, k, q;
    cin >> n >> k >> q;
    vec1.resize(100001, vector<ll>(11));
    for(ll i = 1; i <= n; i++){
        for(ll j = 1; j <= k; j++){
            ll x;
            cin >> x;
            vec1[i][j] = x;
        }
    }
    vec2.resize(100001, vector<ll>(4));
    for(ll i = 0; i < q; i++){
        for(ll j = 0; j < 4; j++){
            ll x;
            cin >> x;
            vec2[i][j] = x;
        }
    }
    for(ll i = 0; i < q; i++){
        ll start = vec2[i][0], end = vec2[i][1], time = vec2[i][2], num = vec2[i][3];
        vector<ll> res;
        if(end >= start){
            while(start <= end){
                res.push_back(vec1[start][time]);
                time ++;
                if(time > k){
                    time -= k;
                }
                start ++;
            }
        }
        else{
            while(start >= end){
                res.push_back(vec1[start][time]);
                time ++;
                if(time > k){
                    time -= k;
                }
                start --;
            }
        }
        sort(res.begin(), res.end());
        cout << res[num - 1] << endl;
    }
    return 0;
}