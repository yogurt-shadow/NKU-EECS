#include<iostream>
#include<vector>
#include<algorithm>
#include<queue>
#include<unordered_set>

using namespace std;
using ll = long long;

class Solution{
public:
    int np, ne;
    vector<unordered_set<int>> edges;
    vector<int> visited;

    void get(){
        cin >> np >> ne;
        edges.resize(np + 1);
        visited.resize(np + 1, 0);
        for(int i = 0; i < ne; i++){
            int x, y;
            cin >> x >> y;
            edges[x].insert(y);
        }
        int mm = 0;
        for(int i = 1; i <= np; i++){
            if(visited[i]){
                continue;
            }
            int index = 0;
            queue<int> q;
            q.push(i);
            while(q.size()){
                int size = q.size();
                index ++;
                for(int i = 0; i < size; i++){
                    int cur = q.front();
                    q.pop();
                    if(visited[cur]){
                        continue;
                    }
                    visited[cur] = 1;
                    mm = max(mm, index);
                    for(auto ele: edges[cur]){
                        if(!visited[ele]){
                            q.push(ele);
                        }
                    }
                }
            }
        }
        cout << mm << endl;
    }

};

int main(){
    
    Solution s;
    s.get();
    
    
    return 0;
}