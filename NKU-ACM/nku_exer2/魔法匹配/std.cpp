#include<bits/stdc++.h>
using namespace std;
#include<ext/pb_ds/assoc_container.hpp>
#include<ext/pb_ds/hash_policy.hpp>
using namespace __gnu_pbds;
#define _for(i,a,b) for(int i=(a);i<(b);++i)
#define ms(a) memset(a,0,sizeof(a))
#define ms_inf(a) memset(a,0x3f,sizeof(a))
#define ms_ninf(a) memset(a,0xcf,sizeof(a))
#define pb push_back
#define mp make_pair
#define fast ios::sync_with_stdio(0),cin.tie(0),cout.tie(0)
#define lc (o<<1)
#define rc (o<<1|1)
typedef long long ll; 
typedef unsigned long long ull;
ull MOD=212370440130137957ll;
int mod=1e9+7;
ll INF=1e18;
const int maxn=1e5+10;
const int maxl=1100;
const double PI=acos(-1.0);
const double eps=1e-8;
mt19937_64 rng((ull)(new char));
int T;
string s;int m;string w[maxn];
int ANS[maxn];
map<int,vector<int>>qu;
vector<ull>HASH;
ull p=1e6+3;
ull po[30];
ull gethash(int id)
{
	ull ans[2]={0,0};int cnt[2][26];ms(cnt);
	_for(t,0,w[id].size())
	{
		++cnt[t&1][w[id][t]-'a'];
	}
	_for(t,0,2)_for(i,0,26)ans[t]+=po[i+1]*cnt[t][i];
	return ans[0]*po[27]+ans[1];
}
inline ull ff(ull*ans)
{
	return ans[0]*po[27]+ans[1];
}
void get(int le)
{
	auto&e=HASH;int cnt[2][26];ms(cnt);
	e.clear();auto r=qu[le];
	_for(t,0,le)++cnt[t&1][s[t]-'a'];
	ull ans[2]={0,0};
	_for(t,0,2)
	_for(i,0,26)
	ans[t]+=po[i+1]*cnt[t][i];
	e.pb(ff(ans));
	_for(t,1,s.size())
	{
		int end=t+le-1;
		if(end>=s.size())break;
		ans[0]-=po[s[t-1]-'a'+1];
		swap(ans[0],ans[1]);
		ans[(le-1)&1]+=po[s[end]-'a'+1];
		e.pb(ff(ans));
	}
	sort(e.begin(),e.end());
	for(auto&id:r)
	{
		ull rr=gethash(id);
		ANS[id]=upper_bound(e.begin(),e.end(),rr)-lower_bound(e.begin(),e.end(),rr);
	}
}
void solve()
{
	qu.clear();
	cin>>s;cin>>m;_for(t,0,m)cin>>w[t],qu[w[t].size()].pb(t);
	for(auto&q:qu)
	{
		get(q.first);
	}
	_for(t,0,m)cout<<ANS[t]<<"\n";
}
int main()
{

	po[0]=1;
	_for(t,1,30)po[t]=po[t-1]*p;
	fast;cin>>T;while(T--)
	{
		solve();
	}
}
