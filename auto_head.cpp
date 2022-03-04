#include <bits/stdc++.h>
using namespace std;

#define fi first
#define se second
#define gc getchar()
#define pc(x) putchar(x)
#define eb(x) emplace_back(x)
#define all(x) x.begin(), x.end()
#define mem(x, a) memset(x, a, sizeof(x))
#define IO() freopen("in.txt", "r", stdin)
#define rep(i, x, y) for (int i = (x); i < (y); ++i)
#define repn(i, x, y) for (int i = (x); i <= (y); ++i)
#define PQ(T) priority_queue<T, vector<T>, greater<T> >

typedef long long ll;

template <typename T>
inline void rd(T &x) {
    x = 0; int f = 1;
    char c = getchar();
    while (!isdigit(c)) f = c == '-' ? -1 : 1, c = getchar();
    while (isdigit(c)) x = (x << 1) + (x << 3) + (c ^ 48), c = getchar();
    x *= f;
}

int t_, n, m, k, x, y, z, cnt;

int main() {
    // IO();

    return 0;
}

//



