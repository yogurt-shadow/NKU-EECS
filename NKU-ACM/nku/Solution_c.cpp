#include<iostream>
#include<vector>
#include<algorithm>

using namespace std;
using ll = long long;
typedef vector<ll> VI;
typedef vector<VI> VII;
typedef vector<VII> VIII;

class Solution_c{
public:
    int r, g, b;
    VI red;
    VI green;
    VI blue;
    VIII mem;

    ll sum = 0;
    void put(){
        cin >> r >> g >> b;
        red.resize(r, 0l);
        green.resize(g, 0l);
        blue.resize(b, 0l);
        mem.resize(r + 1, VII(g + 1, VI(b + 1, -1l)));
        for(int i = 0; i < r; i++){
            ll x;
            cin >> x;
            red[i] = x;
        }
        for(int i = 0; i < g; i++){
            ll x;
            cin >> x;
            green[i] = x;
        }
        for(int i = 0; i < b; i++){
            ll x;
            cin >> x;
            blue[i] = x;
        }
        sort(red.begin(), red.end());
        sort(green.begin(), green.end());
        sort(blue.begin(), blue.end());
        ll sum = dfs(r, g, b);
        cout << (int) sum << " ";
    }

    ll dfs(int index1, int index2, int index3){
        if(mem[index1][index2][index3] != -1l){
            return mem[index1][index2][index3];
        }
        if((index1 == 0 && index2 == 0) || (index1 == 0 && index3 == 0) || (index2 == 0 && index3 == 0)){
            return 0;
        }
        if(index1 == 0){
            ll sum = (ll) green[index2 - 1] * (ll) blue[index3 - 1];
            sum += dfs(index1, index2 - 1, index3 - 1);
            mem[index1][index2][index3] = sum;
            return sum;
        }
        if(index2 == 0){
            ll sum = (ll) red[index1 - 1] * (ll) blue[index3 - 1];
            sum += dfs(index1 - 1, index2, index3 - 1);
            mem[index1][index2][index3] = sum;
            return sum;
        }
        if(index3 == 0){
            ll sum = (ll) red[index1 - 1] * (ll) green[index2 - 1];
            sum += dfs(index1 - 1, index2 - 1, index3);
            mem[index1][index2][index3] = sum;
            return sum;
        }
        ll sum1 = (ll) red[index1 - 1] * (ll) green[index2 - 1] + dfs(index1 - 1, index2 - 1, index3);
        ll sum2 = (ll) red[index1 - 1] * (ll) blue[index3 - 1] + dfs(index1 - 1, index2, index3 - 1);
        ll sum3 = (ll) green[index2 - 1] * (ll) blue[index3 - 1] + dfs(index1, index2 - 1, index3 - 1);
        ll mm = max(sum1, max(sum2, sum3));
        mem[index1][index2][index3] = mm;
        return mm;
    }
};

int main(){
    Solution_c s;
    s.put();
}