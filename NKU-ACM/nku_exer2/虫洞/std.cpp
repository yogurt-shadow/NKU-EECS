#include <bits/stdc++.h>
using namespace std;
const int N = 25, M = 1<<22;
int n,m,V,d[N][N],wt[M],cs[M];
bool isv[M],f[N][M];
struct item{int c,w,v;}a[N];
void dfs(int x, int state){
    f[x][state]=true;
    for(int i=1;i<=n;i++)
        if(!f[i][state] && d[x][i] && d[x][i]>=wt[state])
            dfs(i,state);
    int s_state=state|(1<<x-1);
    if(!isv[s_state]) return ;
    f[x][s_state]=true;
    for(int i=1;i<=n;i++)
        if(!f[i][s_state] && d[x][i] && d[x][i]>=wt[s_state])
            dfs(i,s_state);
}
int main(){
    scanf("%d%d%d",&n,&m,&V);
    for(int i=1;i<=n;i++) d[i][i]=0x3f3f3f3f;
    for(int i=1,x,y,z;i<=m;i++)
        scanf("%d%d%d",&x,&y,&z),d[x][y]=z;
	for(int k=1;k<=n;k++)
        for(int i=1;i<=n;i++)
            for(int j=1;j<=n;j++)
                d[i][j]=max(d[i][j],min(d[i][k],d[k][j]));
    for(int i=1;i<=n;i++) scanf("%d%d%d",&a[i].c,&a[i].v,&a[i].w);
    m = 1 << n;
    for(int i=0;i<m;i++){
        int vi=0;
        for(int j=0;j<n;j++)
            if((i>>j)&1)
                vi+=a[j+1].v,wt[i]+=a[j+1].w,cs[i]+=a[j+1].c;
        if(vi<=V) isv[i]=true;
    }
    dfs(1,0);
    int ans=0;
    for(int i=0;i<m;i++)
        if(isv[i] && f[n][i]) ans=max(ans,cs[i]);
    printf("%d",ans);
    return 0;
}