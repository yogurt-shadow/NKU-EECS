#include<iostream>
#include<vector>
#include<algorithm>

using namespace std;
using ll = long long;

int main(){
    ll n, t, m;
    cin >> n >> t >> m;
    vector<vector<ll>> item(n, vector<ll>(2));
    for(ll i = 0; i < n; i++){
        ll x, y;
        cin >> x >> y;
        item[i][0] = x;
        item[i][1] = y;
    }
    vector<vector<ll>> res(t + 1, vector<ll>(m + 1, 0)); 
    for(ll tt = 0; tt <= t; tt++){
        for(ll mm = 0; mm <= m; mm++){
            if(tt >= item[0][0] && mm >= item[0][1]){
                res[tt][mm] = 1;
            }
        }
    }
    for(ll i = 1; i < n; i++){ 
        for(ll tt = t; tt >= 0; tt--){
            for(ll mm = m; mm >= 0; mm--){
                if(tt >= item[i][0] && mm >= item[i][1]){
                    res[tt][mm] = max(1 + res[tt - item[i][0]][mm - item[i][1]], res[tt][mm]);
                }
                else{
                    
                }
            }
        }
    }
    cout << res[t][m] << endl;
    return 0;
}