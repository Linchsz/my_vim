Vim�UnDo� b*�В�N���y�U�G�Z��SR�v"��      //             '       '   '   '    b~U"    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b~T     �               �               �               �               �               �               �               �   
            �   	            �               �               �               �               �               �               �               �               �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b~T     �                   �               �                 2/*************************************************    *     File Name: test.cpp    *        Author: Lin Chen   & *          Mail: mr.linchsz@gmail.com   % *        Create: 2022-05-13 20:50:33   3 *************************************************/       #include <bits/stdc++.h>   using namespace std;       int main() {       return 0;   }       //            5�_�                            ����                                                                                                                                                                                                                                                                                                                                       
                 b~T     �               
   E1. vector<int> e[maxn]; // e[i]: 存储节点 i 的相邻节点   "2. void dfs(int u, int pre) {   "3.     static int cnt = 0;   *4.     dfn[u] = ++cnt; // dfn 序   &5.     for (auto &v : e[u]) {   &6.         if (v != pre) {   &7.             dfs(v, u);   8.         }   9.     }   10.}5�_�                            ����                                                                                                                                                                                                                                                                                                                                       
                 b~T     �          
    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        b~T!     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                       
                 b~T!     �                 �          
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                        b~T*     �             5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                        b~T-     �                 5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                        b~T/     �             5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        b~T2     �                 int cnt, dfn[maxn];5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        b~T2     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b~T5     �                 Bvector<int> e[maxn]; // e[i]: 存储节点 i 的相邻节点5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b~T6     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b~To     �                   �               �                 int cnt, dfn[maxn];   Bvector<int> e[maxn]; // e[i]: 存储节点 i 的相邻节点       void dfs(int u, int pre) {       static int cnt = 0;   &    dfn[u] = ++cnt; // dfn 序   "    for (auto &v : e[u]) {   "        if (v != pre) {   "            dfs(v, u);           }       }   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        b~Ts     �                  1.vector<int> e[maxn];   !2.void dfs(int u, int pre) {   !3.    static int cnt = 0;   n4.    st[u] = ++cnt, num[cnt] = u; // 欧拉序 - 进, num 记录欧拉序对应的节点编号   %5.    for (auto &v : e[u]) {   %6.        if (v != pre) {   %7.            dfs(v, u);   8.        }   9.    }   D10.    ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出   11.}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        b~Tu     �   
              .}5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                        b~Tu     �   	            B.    ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5�_�                          ����                                                                                                                                                                                                                                                                                                                                      	   	       V   
    b~T�     �                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                      
   	       V   
    b~T�     �                 'int st[maxn], ed[maxn], num[maxn << 1];5�_�                            ����                                                                                                                                                                                                                                                                                                                                      	   	       V   
    b~T�     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                      
   	       V   
    b~T�     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �               'int st[maxn], ed[maxn], num[maxn << 1];    �                �             5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �               'int st[maxn], ed[maxn], num[maxn << 1];5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �               1int st[maxn], ed[maxn], num[maxn << 1]; // 注意�             5�_�                        (    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �               Zint st[maxn], ed[maxn], num[maxn << 1]; // 注意num 记录欧拉序对应的节点编号5�_�      !                  )    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               l    st[u] = ++cnt, num[cnt] = u; // 欧拉序 - 进, num 记录欧拉序对应的节点编号5�_�       "           !      *    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               A    ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5�_�   !   #           "      )    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               *    ed[u] = ++cnt, num[cnt] = u;;5�_�   "   $           #      	    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               2// 注意num 记录欧拉序对应的节点编号5�_�   #   %           $      
    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U	     �               3// 注意 num 记录欧拉序对应的节点编号5�_�   $   &           %      )    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               // �             5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U     �               // 注意欧拉序为两倍5�_�   &               '      !    ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~U!    �               !// 注意欧拉序长度为两倍5�_�                          ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �               5�_�                             ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �                #        static int cnt = 0;�                p        st[u] = ++cnt, num[cnt] = u; // 欧拉序 - 进, num 记录欧拉序对应的节点编号�                +            for (auto &v : e[u]) {�                /                    if (v != pre) {�                3                            dfs(v, u);�                !                        }�      	                          }�      
          E        ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5�_�                          ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �      
        5�_�                             ����                                                                                                                                                                                                                                                                                                                                         	       V   
    b~T�     �                E        ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5�_�                           ����                                                                                                                                                                                                                                                                                                                                                        b~T�     �                #        static int cnt = 0;�                p        st[u] = ++cnt, num[cnt] = u; // 欧拉序 - 进, num 记录欧拉序对应的节点编号�                +            for (auto &v : e[u]) {�                /                    if (v != pre) {�                3                            dfs(v, u);�      	          !                        }�      
                          }�   	             E        ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        b~T�     �                #        static int cnt = 0;�                p        st[u] = ++cnt, num[cnt] = u; // 欧拉序 - 进, num 记录欧拉序对应的节点编号�                +            for (auto &v : e[u]) {�                /                    if (v != pre) {�                3                            dfs(v, u);�      	          !                        }�      
                          }�   	             E        ed[u] = ++cnt, num[cnt] = u;; // 欧拉序 - 出5��