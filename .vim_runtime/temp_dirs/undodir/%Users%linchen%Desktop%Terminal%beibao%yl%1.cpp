Vim�UnDo� $gv���� Ɣ����D��p��E�|�'�v   3   //    }   #          =       =   =   =    _Qս    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   
                �   
          �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �                       �             �   
                �   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �               int N, V, v, w, p;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �               int N, V, v, w, p, root;;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �                        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �                           �             �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �             �               	        }    �                       �             5�_�      	              
       ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �   
                �   
          �   	             �   	          5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �               }5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             _Q�5     �      	         int dp[P][P];5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             _Q�<     �                �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _Q�?     �                   �             �                �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q�T     �               int N, V, v, w, p, root;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _Q�^     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q�^     �                           �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q�|     �                    �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         &              �         %    �         $          �         #    �         !       �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V, v, w, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V v, w, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, Vv, w, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V, w, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V w, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, Vw, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V, p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �         (      int N, V p, root, cnt;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �      	   (      int dp[P][P], h[P];5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �          (      $        scanf("%d%d%d", &v, &w, &p);5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �          (      '        scanf("%d%d%d", &v[i], &w, &p);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         ,                      �         +    �         *                  �         )    �         (              for (int j = V - )5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             _Q�y     �         ,      9                dp[u][j] = max(dp[u][j], dp[v][j - k] + )5�_�                        8    ����                                                                                                                                                                                                                                                                                                                                                             _Q�|     �         ,      9                dp[u][j] = max(dp[u][j], dp[u][j - k] + )5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             _Q�k     �         ,      (        for (int j = V - v[u]; j; --j) {5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             _Q�m     �         ,      *            for (int k = 1; k <= j; ++k) {5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             _Q�p     �          /              �          .    �          -          �         ,    5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   !   #   2              �   !   #   1    �       #   0          �       "   /    5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         2              int v = e[i].to;5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         2              dfs(v);5�_�   %   '           &      <    ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         2      A                dp[u][j] = max(dp[u][j], dp[u][j - k] + dp[v][k])5�_�   &   (           '      =    ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         3                          �         2    5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �                                    5�_�   (   *           )      C    ����                                                                                                                                                                                                                                                                                                                                                             _Q�     �         2      C                dp[u][j] = max(dp[u][j], dp[u][j - k] + dp[son][k])5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             _Q�v     �          2      +        dp[u][i] += dp[u][i - v[u]] + w[i];5�_�   *   ,           +   !        ����                                                                                                                                                                                                                                                                                                                            !           #                   _Q�q    �   !   $   2              dp[u][i] = 0;       }�       "   2      $    for (int i = 0; i < v[u]; ++i) {5�_�   +   -           ,   0        ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   /   0              5�_�   ,   .           -   0       ����                                                                                                                                                                                                                                                                                                                                                             _Q��    �   /   1   2          �   /   1   1    5�_�   -   /           .      '    ����                                                                                                                                                                                                                                                                                                                                                             _Q�F    �          2      *        dp[u][i] = dp[u][i - v[u]] + w[i];5�_�   .   2           /   *       ����                                                                                                                                                                                                                                                                                                                                                             _Q�l     �   )   +   2              if (~p) {5�_�   /   3   1       2   *       ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   )   +   2              if (p) {5�_�   2   4           3   /       ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   /   1   3          �   /   1   2    5�_�   3   5           4   0       ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   /   1   3          dfs(root, 0);5�_�   4   6           5   0       ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   /   1   3          dfs(root 0);5�_�   5   7           6   0       ����                                                                                                                                                                                                                                                                                                                                                             _Q��    �   /   1   3          dfs(root0);5�_�   6   8           7   !        ����                                                                                                                                                                                                                                                                                                                                                             _Q�w     �       "   3      &//    for (int i = 0; i < v[u]; ++i) {5�_�   7   9           8   !        ����                                                                                                                                                                                                                                                                                                                                                             _Q�w     �       "   3      %/    for (int i = 0; i < v[u]; ++i) {5�_�   8   :           9   "        ����                                                                                                                                                                                                                                                                                                                                                             _Q�x     �   !   #   3      //        dp[u][i] = 0;5�_�   9   ;           :   "        ����                                                                                                                                                                                                                                                                                                                                                             _Q�x     �   !   #   3      /        dp[u][i] = 0;5�_�   :   <           ;   #        ����                                                                                                                                                                                                                                                                                                                                                             _Q�x     �   "   $   3      //    }5�_�   ;   =           <   #        ����                                                                                                                                                                                                                                                                                                                                                             _Q�x     �   "   $   3      /    }5�_�   <               =           ����                                                                                                                                                                                                                                                                                                                                                             _Qռ    �   !   #                  dp[u][i] = 0;�       "          $    for (int i = 0; i < v[u]; ++i) {�                 *        dp[u][i] = dp[u][i - v[u]] + w[u];�                %    for (int i = V; i >= v[u]; --i) {5�_�   /       0   2   1   *       ����                                                                                                                                                                                                                                                                                                                                                             _Q��     �   )   +   2              if (p) {5�_�   /           1   0   *       ����                                                                                                                                                                                                                                                                                                                                                             _Q�m    �   )   +   2              if (p == -1) {5��