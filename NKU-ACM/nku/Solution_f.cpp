#include<iostream>
#include<vector>
#include<algorithm>
#include<stack>

using namespace std;
using ll = long long;
typedef vector<ll> VI;
typedef vector<VI> VII;
typedef vector<VII> VIII;

int main(){
    int size;
    cin >> size;
    vector<int> num(size);
    for(int i = 0; i < size; i++){
        int x;
        cin >> x;
        num[i] = x;
    }
    vector<int> left(size);
    vector<int> right(size);
    stack<int> stk1, stk2;
    for(int i = 0; i < size; i++){
        int cur = num[i];
        while(!stk1.empty() && num[stk1.top()] >= cur){
            stk1.pop();
        }
        if(stk1.empty()){
            left[i] = -1;
        }
        else{
            left[i] = stk1.top();
        }
        stk1.push(i);
    }
    for(int i = size - 1; i >= 0; i--){
        int cur = num[i];
        while(!stk2.empty() && num[stk2.top()] >= cur){
            stk2.pop();
        }
        if(stk2.empty()){
            right[i] = size;
        }
        else{
            right[i] = stk2.top();
        }
        stk2.push(i);
    }
    int ans = 0;
    for(int i = 0; i < size; i++){
        int cur = num[i] * (right[i] - left[i] - 1);
        ans = max(ans, cur);
    }
    cout << ans;
    return 0;
}