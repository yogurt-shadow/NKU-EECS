#include<iostream>
#include<stdio.h> 
#include<algorithm>
#define ll long long
using namespace std;
ll f(ll a){
	int i;
	ll aa=a;
	if(aa==0)return 0;
	for(i=1;i<60;i++){
		if(aa%2==1)break;
		else aa/=2;
	}
	return i;
}
ll a[100005];
int main(){
	int t,n;
	ll s,s1,s2;
	scanf("%d",&t);
	while(t--){
		scanf("%d",&n);
		s=0;
		for(int i=0;i<n;i++){
			scanf("%lld",&a[i]);
			s=s^a[i];
		}
		if(s==0){
			printf("yes\n");
			continue;
		}
        s1=f(s)-1;s2=f((s>>s1)+1)+s1-1;
		if(s>>s2||s1==0){
			printf("no\n");
			continue;
		}
		int s11=0,s12=0,s21=0,s22=0;
		for(int i=0;i<n;i++){
			if(f(a[i])==s1)s11=1;
			if(f(a[i])==s2)s21=1;
			if(f(a[i]+1)==s1)s12=1;
			if(f(a[i]+1)==s2)s22=1;
			if(s11*s22+s12*s21)break;
		}
		if(s11*s22+s12*s21)printf("yes\n");
		else printf("no\n");
	}
	return 0;
}
//移动后,n个谷堆数异或为0才能赢，增加或减少1个谷粒，会使1个谷堆二进制数的后k位改变（k），那么移动一个谷粒会使n个谷堆数的异或二进制数的连续几个数位变化，b赢需要n个谷堆异或值二进制数中只能有符合条件的一串连续的1;