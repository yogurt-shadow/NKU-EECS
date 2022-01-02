#include<iostream>
#include<vector>
#include<algorithm>
#include<queue>
#include<unordered_set>
#include<unordered_map>
#include<stack>

using namespace std;
using ll = long long;

typedef vector<int> VI;
typedef vector<VI> VII;

class Solution_g2{
public:
    VII mp;
    int ne, np;
    VI visited;
    int maxDegree;
    unordered_set<int> st;

    Solution_g2(int np, int ne, VII& edges){
        maxDegree = 0;
        this->ne = ne;
        this->np = np;
        for(int i = 1; i <= np; i++){
            st.insert(i);
        }
        visited.resize(np + 1, 0);
        mp.resize(np + 1);
        for(VI& edge: edges){
            mp[edge[0]].push_back(edge[1]);
            if(st.count(edge[1]) > 0){
                st.erase(edge[1]);
            }
        }
    }


    void solve(){
        for(int i = 1; i <= np; i++){
            if(!visited[i]){
                int degree = 0;
                stack<int> stk;
                stk.push(i);
                while(!stk.empty()){
                    int cur = stk.top();
                    stk.pop();
                    if(visited[cur]){
                        continue;
                    }
                    degree ++;
                    maxDegree = max(degree, maxDegree);
                    visited[cur] = 1;
                    for(int nei: mp[cur]){
                        if(!visited[nei]){
                            stk.push(nei);
                        }
                    }
                }
            }
        }
        cout << maxDegree << endl;
    }

};

int main(){
    int n, m;
    cin >> n >> m;
    VII edges(m, VI(2, 0));
    for(int i = 0; i < m; i++){
        cin >> edges[i][0];
        cin >> edges[i][1];
    }
    Solution_g2 s(n, m, edges);
    s.solve();
    return 0;
}