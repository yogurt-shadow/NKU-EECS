#include<iostream>
using namespace std;
long long n, m;
long long f[1 << 20];
long long son[1 << 20];
int main(void)
{
	cin >> n >> m;
	for (int i = 1, x, y; i <= m; ++i)
	{
		cin >> x >> y;
		son[x] |= (1 << y - 1);
	}
	f[0] = 1;
	for (int i = 0; i < (1 << n); ++i)
		if (f[i] > 0)
			for (int j = 1; j <= n; ++j)
				if (((son[j] & i) == son[j]) && (((i >> j - 1) & 1) == 0))
					f[i | (1 << j - 1)] += f[i];
	cout << f[(1 << n) - 1] << endl;
	//system("pause");
	return 0;

}