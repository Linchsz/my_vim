Vim�UnDo� ����`��L	:'0q��.�|�(ڹA   3          #         *       *   *   *    _V��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             _V    �         2      '        c[i] = pre[i] - pre[lowbit(i)];5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V;     �                        p >>= 1;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V;     �         1    �         1    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V<     �                        p >>= 1;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V<     �         2              �         1    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _VD     �                        p <<= 1;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _VD    �         2              �         1    5�_�      	                 
    ����                                                                                                                                                                                                                                                                                                                                                             _VX     �         2              p += lowbit(p);5�_�      
           	      
    ����                                                                                                                                                                                                                                                                                                                                                             _VZ    �         2              p -= lowbit(p);5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (p) {5�_�   
                    
    ����                                                                                                                                                                                                                                                                                                                                                             _V	     �         2              p -= lowbit(p);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (p <= n) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (p<= n) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (p= n) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (p n) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V     �         2          while (pn) {5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             _V    �         2              p += lowbit(p);5�_�                    .   -    ����                                                                                                                                                                                                                                                                                                                                                             _VW    �   -   /   2      0            printf("%d\n", query(y) - query(x));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�     �              2   #include <cstdio>       #define N 100005       int n, m, t, x, y;   int pre[N], c[N];       inline int lowbit(int p) {       return p & -p;   }       inline void init() {   "    for (int i = 1; i <= n; ++i) {   +        c[i] = pre[i] - pre[i - lowbit(i)];       }   }       "inline void update(int p, int x) {       while (p <= n) {           c[p] += x;           p += lowbit(p);       }   }       &inline int query(int p, int ans = 0) {       while (p) {           ans += c[p];           p -= lowbit(p);       }       return ans;   }       int main() {   "    freopen("in.txt", "r", stdin);       scanf("%d%d", &n, &m);   "    for (int i = 1; i <= n; ++i) {           scanf("%d", &x);            pre[i] = pre[i - 1] + x;       }       init();       while (m--) {   $        scanf("%d%d%d", &t, &x, &y);           if (t & 1) {               update(x, y);           } else {   4            printf("%d\n", query(y) - query(x - 1));   	        }       }       return 0;   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�     �      
   
          �      
   	    �                   5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             _V��     �   
                    �   
          �                   �      
   
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V��     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V��     �   	                    �   	          �                   �      
       �      
          �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�     �      
             �      
       �      
          �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�     �                �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�     �                 }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�%     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _V�%     �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�/     �                        �             �                   �             �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�S     �         '    �         %          �         $    �         "       �         !    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _V�l     �         (      inline int query(int x) {5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             _V�m     �                 5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             _V�m     �         (              �         '    5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             _V�y     �          *          �          )    5�_�   "   $           #   (   
    ����                                                                                                                                                                                                                                                                                                                                                             _V�~     �   (   *   +          �   (   *   *    5�_�   #   %           $   )       ����                                                                                                                                                                                                                                                                                                                                                             _V�     �   (   )              for (int i = 1; i <)5�_�   $   &           %   )       ����                                                                                                                                                                                                                                                                                                                                                             _V�     �   )   +   -              �   )   +   ,    �   (   +   +          �   (   *   *    5�_�   %   '           &      
    ����                                                                                                                                                                                                                                                                                                                                                             _V�     �         -      int n, m, x, y;5�_�   &   (           '   *       ����                                                                                                                                                                                                                                                                                                                                                             _V�     �   *   -   0              if (t & 1) {�   +   -   /    �   )   -   -              scanf("%d")5�_�   '   )           (   -        ����                                                                                                                                                                                                                                                                                                                                                             _V��     �   ,   -           5�_�   (   *           )   -   	    ����                                                                                                                                                                                                                                                                                                                                                             _V��     �   -   /   2                  �   -   /   1    �   ,   /   0      	        }5�_�   )               *   #       ����                                                                                                                                                                                                                                                                                                                                                             _V��    �   "   $   3          �   "   $   2    5��