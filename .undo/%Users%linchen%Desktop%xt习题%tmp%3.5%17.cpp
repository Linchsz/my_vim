Vim�UnDo� �|���i�=��j��A�$�c4D�L E      $   auto a = new CString(); //语句1                            b)��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b)��     �               �               �   
            �   	            �               �               �               �               �               �               �               �               �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b)��    �                   �               �                 2/*************************************************    *     File Name: 17.cpp    *        Author: Lin Chen   & *          Mail: mr.linchsz@gmail.com   % *        Create: 2022-03-10 15:58:51   3 *************************************************/                   //        5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �   	             E    void* operator new() = delete;//这样不允许使用new关键字5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b)��    �                   �               �                 #include <iostream>   using namespace std;       class CString   {   public:   "    CString() = default; //语句1       //构造函数   ,    CString(const char* pstr) : _str(pstr){}   H    // void* operator new() = delete;//这样不允许使用new关键字       //析构函数       ~CString(){}   public:        string _str;   };           
int main()   {   $   auto a = new CString(); //语句2       cout << "Hello World" <<endl;      return 0;   }   //运行结果   //Hello World5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 V        b)��     �                   �             5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 V        b)��     �                    virtual void f5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                 V        b)��     �      	       �             5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �      	             virtual void f5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �                E    void* operator new() = delete;//这样不允许使用new关键字5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �      	              virtual void f() = 0;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �      	              // virtual void f() = 0;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �               '   CString a = new CString(); //语句15�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        b)�-    �               D    void operator new() = delete;//这样不允许使用new关键字5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                 V        b)��    �                %    // CString() = default; //语句15��