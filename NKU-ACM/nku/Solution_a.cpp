#include<iostream>
#include<vector>
#include<queue>
#include<algorithm>
#include<unordered_map>
#include<set>


using namespace std;
using ll = long long;

typedef vector<int> VI;
typedef vector<VI> VII;

static vector<vector<int>> mp;
VII query;

int main(){
    int n, k, q;
    cin >> n >> k >> q;
    mp.resize(n + 1, vector<int>(k + 1));
    query.resize(q + 1, VI(4, 0));

    for(int i = 1; i <= n; i++){
        for(int j = 1; j <= k; j++){
            cin >> mp[i][j];
        }
    }
    for(ll i = 0; i < q; i++){
        for(int j = 0; j < 4; j++){
            cin >> query[i][j];
        }
    }
    for(int i = 0; i < q; i++){
        multiset<int> st;
        int start = query[i][0];
        int end = query[i][1];
        int time = query[i][2];
        int num = query[i][3];
        if(time % k == 0){
            time = k;
        }
        else{
            time = time % k;
        }
        if(end >= start){
            while(start <= end){
                int price = mp[start][time];
                st.insert(price);
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
                st.insert(price);
                time ++;
                if(time > k){
                    time -= k;
                }
                start --;
            }
        }
        auto iter = st.begin();
        for(int sss = 1; sss < num; sss++){
            iter ++;
        }
        cout << *iter << endl;
    }
    return 0;
}