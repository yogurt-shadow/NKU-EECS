#include<iostream>
#include<vector>
#include<algorithm>
#include<queue>
#include<set>


using namespace std;
using ll = long long;

int main(){
    int n, mod;
    cin >> n >> mod;
    set<int> st;
    for(int i = 0; i < n; i++){
        int x;
        cin >> x;
        st.insert(x);
    }
    set<int> ans;
    for(auto ele: st){
        int x = __gcd(ele, mod);
        if(ans.count(x) > 0){
            continue;
        }
        int y = 0;
        while(y < mod){
            ans.insert(y);
            y += x;
        }
    }
    cout << ans.size() << endl;
    for(auto ele: ans){
        cout << ele << " ";
    }
    cout << endl;
    return 0;
}