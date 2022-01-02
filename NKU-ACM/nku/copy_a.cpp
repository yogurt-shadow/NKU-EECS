#include<iostream>
#include<vector>
#include<queue>
#include<algorithm>

using namespace std;
using ll = long long;

static vector<vector<int>> mp;
int res[10001];

int main(){
    int n, k, q;
    cin >> n >> k >> q;
    mp.resize(n + 1, vector<int>(k + 1));
    for(ll i = 1; i <= n; i++){
        for(ll j = 1; j <= k; j++){
            cin >> mp[i][j];
        }
    }
    for(ll i = 0; i < q; i++){
        int start, end, time, num;
        cin >> start >> end >> time >> num;
        for(int ii = 0; ii < 10001; ii++){
            res[ii] = 0;
        }
        if(time % k == 0){
            time = k;
        }
        else{
            time = time % k;
        }
        if(end >= start){
            while(start <= end){
              int price = mp[start][time];
                if (price >= 1 && price <= 1000) res[price] ++;
                time ++;
                if(time > k){
                    time -= k;
                }
                start ++;
            }
        }
        else{
            while(start >= end){
               int price = mp[start][time];
                if (price >= 1 && price <= 1000) res[price] ++;
                time ++;
                if(time > k){
                    time -= k;
                }
                start --;
            }
        }
        //cout << res[0][0] << " ";
    }
    return 0;
}