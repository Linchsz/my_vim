Vim�UnDo� VF��f&�CF�_gk�.r�-ղ�^w�͐�   +                 %       %   %   %    bN�"    _�                             ����                                                                                                                                                                                                                                                                                                                                                             bN�4     �               �               �               �               �               �               �               �   
            �   	            �               �               �               �               �               �               �               �               �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�6    �      -       �             �                    #include <bits/stdc++.h>   using namespace std;       int main() {       return 0;   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�;     �   
                 struct Node {       int val; Node *nx;       Node(int v) : val(v) {}   +    bool operator < (const Node &o) const {           return val > o.val;       }   };5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�<     �         *       �         )    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�B     �         *      priority_queue<Node*> que;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�F    �         *      priority_queue<*> que;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �         .          �         -    �         +       �         *    5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �                queue<int> q;5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �         -    �         -    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �         .      queue<int> q;5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �         .          queue<int> q;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �                        now = res;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN��     �         .                  �         -    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�     �                            tmp = new Node(x);   %            now->nx = tmp, now = tmp;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�     �         ,              que.push(res->nx);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�     �                (    Node *res = new Node(0), *now, *tmp;5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                  V        bN�     �         ,          �         +    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�-     �      !   ,              now = que.top();5�_�                    !   
    ����                                                                                                                                                                                                                                                                                                                                                  V        bN�/     �   !   #   ,    5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                  V        bN�0     �   !   "           5�_�                    "       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�1     �   !   #   ,               printf("%d ", now->val);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�8     �      !   ,              tmp = que.top();5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        bN�<     �      !   ,              now = que.top();5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        bN�@     �                    queue<int> tmp;5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�B     �       "   +              printf("%d ", );5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�G     �   !   #   ,              �   !   #   +    5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�N     �   "   $   ,              if (now->nx) {5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�Q     �   "   $   ,              if (now) {5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�T     �   "   $   ,              if (!now) {5�_�                     $       ����                                                                                                                                                                                                                                                                                                                                                  V        bN�W    �   #   %   ,                  que.push(now->nx);5�_�      "                     ����                                                                                                                                                                                                                                                                                                                                     '           V        bN�{    �                &    // printf("%d\n", que.top()->val);5�_�       #   !       "          ����                                                                                                                                                                                                                                                                                                                                              v       bN��    �         +      priority_queue<queue<int>> que;5�_�   "   %           #           ����                                                                                                                                                                                                                                                                                                                                              v       bN�     �         -    �         ,       �         +    5�_�   #       $       %           ����                                                                                                                                                                                                                                                                                                                                                V        bN�!    �                bool tmp() {       }5�_�   #           %   $          ����                                                                                                                                                                                                                                                                                                                                              v       bN�    �         .      %priority_queue<queue<int>, tmp > que;5�_�               "   !          ����                                                                                                                                                                                                                                                                                                                                              v       bN��   
 �         +      !    return a.front() < b.front();5�_�                            ����                                                                                                                                                                                                                                                                                                                                     (           V        bN�x     �         ,              �         -      	        o5��