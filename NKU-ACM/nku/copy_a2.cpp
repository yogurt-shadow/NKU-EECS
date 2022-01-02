#include<iostream>
#include<vector>
#include<queue>
#include<algorithm>

using namespace std;
using ll = long long;
typedef vector<int> VI;

static vector<int> res;
static vector<vector<int>> query;
static vector<int> store;
static vector<vector<int>> mp;

const int len = 2000;

vector<int> merge(VI& vec1, VI& vec2){
    if(vec1.size() == 0){
        return vec2;
    }
    if(vec2.size() == 0){
        return vec1;
    }
    VI res;
    int index1 = 0, index2 = 0;
    while(index1 < vec1.size() || index2 < vec2.size()){
        if(index1 >= vec1.size()){
            res.push_back(vec2[index2 ++]);
        }
        else if(index2 >= vec2.size()){
            res.push_back(vec1[index1 ++]);
        }
        else{
            if(vec1[index1] <= vec2[index2]){
                res.push_back(vec1[index1 ++]);
            }
            else{
                res.push_back(vec2[index2 ++]);
            }
        }
    }
    return res;
}

vector<int> mergesort(vector<int>& res){
    vector<int> ans;
    if(res.size() <= len){
        sort(res.begin(), res.end());
        return res;
    }
    int cur = 0;
    while(cur < res.size()){
        vector<int> vvv(res.begin() + cur, min(res.begin() + cur + len, res.end()));
        sort(vvv.begin(), vvv.end());
        ans = merge(ans, vvv);
        //cout << ans.size() << endl;
        cur += len;
    }
    return ans;
}


int main(){
    int n, k, q;
    cin >> n >> k >> q;
    mp.resize(n + 1, vector<int>(k + 1));
    res.resize(n);
    store.resize(q);
    query.resize(q, vector<int>(4));

    for(ll i = 1; i <= n; i++){
        for(ll j = 1; j <= k; j++){
            int x;
            cin >> x;
            mp[i][j] = x;
        }
    }
    for(int i = 0; i < q; i++){
        for(int j = 0; j < 4; j++){
            cin >> query[i][j];
        }
    }
    int mm = 0;
    for(ll i = 0; i < q; i++){
        int start, end, time, num;
        start = query[i][0], end = query[i][1], time = query[i][2], num = query[i][3];
        res.resize(abs(start - end) + 1);
        int index = 0;
        if(time % k == 0){
            time = k;
        }
        else{
            time = time % k;
        }
        if(end >= start){
            while(start <= end){
                res[index] = mp[start][time];
                //cout << res[index] << endl;
                index++;
                time ++;
                if(time > k){
                    time -= k;
                }
                start ++;
            }
        }
        else{
            while(start >= end){
                res[index] = mp[start][time];
                //cout << res[index] << endl;
                index++;
                time ++;
                if(time > k){
                    time -= k;
                }
                start --;
            }
        }
        res = mergesort(res);
        store[mm ++] = res[num - 1];
    }
    for(int i = 0; i < mm; i++){
        cout << store[i] << endl;
    }
    return 0;
}