#include <map>
#include <set>
#include <cmath>
#include <queue>
#include <stack>
#include <cstdio>
#include <cctype>
#include <vector>
#include <string>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <algorithm>
#include <unordered_map>
using namespace std;

#define fi first
#define se second
#define ed end()
#define re rend()
#define bg begin()
#define rb rbegin()
#define gc getchar()
#define pc(x) putchar(x)
#define pb(x) push_back(x)
#define all(x) x.begin(), x.end()
#define sor(x) sort(x.begin(), x.end())
#define uni(x) unique(x.begin(), x.end())
#define era(x) x.erase(unique(x.begin(),x.end()),x.end()
#define posl(x,v) (lower_bound(x.begin(),x.end(),v)-x.begin()
#define posu(x,v) (upper_bound(x.begin(),x.end(),v)-x.begin()
#define PQ(T) priority_queue<T, vector<T>, greater<T> >
#define repn(i, n) for (int i = 1; i <= (n); ++i)
#define rep(i, n) for (int i = 0; i < (n); ++i)
#define mem(x, a) memset(x, a, sizeof(x))
#define fre(x) freopen(x, "r", stdin)
#define ump(S, T) unordered_map<S, T>
#define wl(x) wr<long long>(x)
#define rl() rd<long long>()
#define wi(x) wr<int>(x)
#define ri() rd<int>()

typedef long long ll;
typedef unsigned int uint;
typedef unsigned long long ull;
typedef pair<int, int> p;
typedef vector<int> vi;
typedef vector<vi> vvi;
typedef vector<ll> vl;
typedef vector<vl> vvl;

// const int p = 1000000007;
// const ll INF = 1ll << 63;
// const int INF = 0x7fffffff;
template <typename T>
inline T rd() {
    T x = 0, f = 1;
    char c = getchar();
    while (!isdigit(c)) f = c == '-' ? -1 : 1, c = getchar();
    while (isdigit(c)) x = (x << 1) + (x << 3) + (c ^ 48), c = getchar();
    return x * f;
}
template <typename T>
inline void wr(T x) {
    T y = 1, len = 1;
    if (x < 0) x = -x, putchar('-');
    while (y <= x / 10) y = (y << 1) + (y << 3), ++len;
    for (; len; --len) putchar(x / y ^ 48), x %= y, y /= 10;
}

int n, m, k, x, y, z, cnt;

int main() {
    return 0;
}

//





//#define eb(x) emplace_back(x)
