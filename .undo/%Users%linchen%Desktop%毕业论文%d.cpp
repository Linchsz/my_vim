Vim�UnDo� �,h!��pQ䡖�����yqw�B�%N6�   ]                                  b|�1    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b|�     �               �               �               �               �               �               �               �   
            �   	            �               �               �               �               �               �               �               �               �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b|�    �                   �               �                 2/*************************************************    *     File Name: d.cpp    *        Author: Lin Chen   & *          Mail: mr.linchsz@gmail.com   % *        Create: 2022-05-12 16:06:47   3 *************************************************/       #include <bits/stdc++.h>   using namespace std;       int main() {       return 0;   }       //            5�_�                            ����                                                                                                                                                                                                                                                                                                                                       I          V        b|�     �          J       �          I    5�_�                            ����                                                                                                                                                                                                                                                                                                                                       M          V        b|�"     �                 5�_�                    K        ����                                                                                                                                                                                                                                                                                                                                       L          V        b|�%     �   J   L   M          R[up] = n;    �   K   M   M          �   K   M   L    5�_�                             ����                                                                                                                                                                                                                                                                                                                                       L           V        b|�0    �                   �               �              L   #include <bits/stdc++.h>   using namespace std;        int n, m, x, y, B, up, tot, res;   5int a[N], R[N], st[N], ed[N], st_[N], ed_[N], ans[N];       struct In {       int i, x;   ;    bool operator < (const In &b) const { return x < b.x; }   } t[N];       
struct Q {       int l, r, d, i;   N    bool operator < (const Q &b) const { return d ^ b.d ? l < b.l : r < b.r; }   } q[N];       6inline void add(int i, int st[], int ed[]) { // 修改       const int &x = a[i];       if (st[x]) {           st[x] = min(st[x], i);           ed[x] = max(ed[x], i);   &        res = max(res, ed[x] - st[x]);       } else {           st[x] = ed[x] = i;       }   }       %inline void resume(int x) { // 清空   (    st[x] = st_[x] = ed[x] = ed_[x] = 0;   }       #inline void copy(int x) { // 备份   #    st_[x] = st[x], ed_[x] = ed[x];   }       inline void Mo() {       sort(q + 1, q + 1 + m);       int l = 1, r = 0, lst = 0;   "    for (int i = 1; i <= m; ++i) {   -        const int &ql = q[i].l, &qr = q[i].r;   O        if (lst < q[i].d) { // 当前左端点块号小于询问左端点块号   (            while (l < R[q[i].d] + 1) {    )                if (l <= r) resume(a[l]);                   ++l;               }   !            while (r > R[lst]) {    )                if (l <= r) resume(a[r]);                   --r;               }   %            lst = q[i].d, res = 0; //   	        }   Q        // 右端点单调, 直接同步修改原数组, 并备份到临时数组   @        while (r < qr) if (l <= ++r) add(r, st, ed), copy(a[r]);   ;        int tmp = res; // 备份左端点移动前的结果   L        while (l > ql) if (--l <= r) add(l, st_, ed_); // 修改临时数组   ?        ans[q[i].i] = res; // 记录临时数组修改的结果   &        const int &l_ = R[q[i].d] + 1;   B        while (l < l_) { // 回滚, 恢复临时数组到原数组   #            if (l <= r) copy(a[l]);               ++l;   	        }   :        res = tmp; // 恢复到左端点移动前的结果       }   }       inline void init() {       sort(t + 1, t + 1 + n);   "    for (int i = 1; i <= n; ++i) {   '        if (t[i].x ^ t[i - 1].x) ++tot;           a[t[i].i] = tot;       }       B = sqrt(n);       up = (n - 1) / B + 1;   /    for (int i = 1; i <= up; ++i) R[i] = i * B;       R[up] = n;,vp   }5��