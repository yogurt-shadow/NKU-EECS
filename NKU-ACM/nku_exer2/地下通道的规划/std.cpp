#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define N 1000010
#define inf 0x3f3f3f3f
inline int read(){
    int x=0,f=1;char ch=getchar();
    while(ch<'0'||ch>'9'){if(ch=='-')f=-1;ch=getchar();}
    while(ch>='0'&&ch<='9') x=x*10+ch-'0',ch=getchar();
    return x*f;
}
int n,a[N],dp[N],c[N],dx[]={-4,-3,-2,-1,0,1,2,3,4};
vector<int>to[N];
inline void update(int x,int val){
    for(;x<=n;x+=x&(-x)) c[x]=max(c[x],val);
}
inline int ask(int x){
    int res=0;
    for(;x;x-=x&(-x)) res=max(res,c[x]);return res;
}
int main(){
//  freopen("a.in","r",stdin);
    n=read();for(int i=1;i<=n;++i) a[i]=read();
    for(int j=1;j<=n;++j){
        int x=read();
        for(int k=0;k<9;++k){
            int xx=x+dx[k];if(xx<1||xx>n) continue;to[xx].push_back(j);
        }
    }for(int i=1;i<=n;++i){
        for(int j=to[a[i]].size()-1;j>=0;--j){
            dp[to[a[i]][j]]=ask(to[a[i]][j]-1)+1;update(to[a[i]][j],dp[to[a[i]][j]]);
        }
    }int ans=0;for(int i=1;i<=n;++i) ans=max(ans,dp[i]);
    printf("%d\n",ans);
    return 0;
}