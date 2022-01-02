#include<iostream>
#include<algorithm>
#include<vector>
#include<set>

using namespace std;
typedef vector<int> VI;


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
    if(res.size() <= 10000){
        sort(res.begin(), res.end());
        return res;
    }
    int cur = 0;
    while(cur < res.size()){
        vector<int> vvv(res.begin() + cur, min(res.begin() + cur + 10000, res.end()));
        sort(vvv.begin(), vvv.end());
        ans = merge(ans, vvv);
        cur += 10000;
    }
    return ans;
}



int main(){
  multiset<int> st;
  st.insert(2);
  st.insert(2);
  st.insert(3);
  st.insert(-1);
  auto iter = st.begin();
  iter ++;
  iter ++;
  cout << *iter;
  return 0;
}