set runtimepath+=~/.vim/.vim_runtime

source ~/.vim/.vim_runtime/vimrcs/basic.vim
"source ~/.vim/.vim_runtime/vimrcs/extended.vim
"source ~/.vim/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim/.vim_runtime/vimrcs/plugins_config.vim
"try
"    source ~/.vim/.vim_runtime/my_configs.vim
"catch
"endtry

" VU    vundle
" AU    auto_file_head
" CRP   Compile/Run Map

"配色方案 COLOR
set background=dark
try
    color gruvbox
    "color peaksea "color seoul256
    "color seoul256-light
catch
endtry

"设置前缀键为 ',' 即 <leader> = ,  LD
let mapleader = ","
"  按键映射快捷键  "
" <leader> + w   保存
" <leader> + q   保存并退出
" <leader> + ee  编译
" <leader> + er  运行 
" <leader> + r   编译并运行
" <leader> + tr   编译运行并显示运行时间
" <leader> + 7r  C++17 编译并运行
" <leader> + tl  TagList
" <leader> + nt  NERDTree
"" <leader> + n   显示行号(用于开启 taglisg 的行号)

"      按键映射      "
"显示行号
"map <leader>n :set nu<CR>
" 快速保存  <leader> + w
nnoremap <silent><leader>w :w!<CR><ESC>
inoremap <silent><leader>w <ESC>:w!<CR><ESC>
vnoremap <silent><leader>w <ESC>:w!<CR><ESC>
" 保存并退出按键映射为 <leader> + q
" :x 和 ZZ 命令与 :wq 类似, 但不会写入没有改变的文件, 并且更快
nnoremap <silent><leader>q :x<CR>
inoremap <silent><leader>q <ESC>:x<CR>
vnoremap <silent><leader>q <ESC>:x<CR>
"选中全文"
nnoremap <silent><leader>v ggv<S-g>$
inoremap <silent><leader>v <ESC>ggv<S-g>$
vnoremap <silent><leader>v <ESC>ggv<S-g>$
"复制全文到系统剪切板
nnoremap <silent><leader>y ggv<S-g>$y<C-o><C-o> 
inoremap <silent><leader>y <ESC>ggv<S-g>$y<C-o><C-o> 
vnoremap <silent><leader>y <ESC>ggv<S-g>$y<C-o><C-o> 
"命令窗口清屏
nnoremap <silent><C-l> :!clear<CR><CR>

nnoremap 0 ^
nnoremap - $
"解决 O 卡顿
set noesckeys
nnoremap j gj
nnoremap k gk
nnoremap yj yj
nnoremap yk yk
nnoremap dj dj
nnoremap dk dk
nnoremap dd dd  
"映射 dd 避免因映射 dj 和 dk 造成 d 卡顿 
" Remap VIM 0 to first non-blank character

"解决换行得到的自动缩进, 在退出插入模式而不添加任何内容时缩进消失
""insert mode mapping for <CR>
"inoremap <CR> <CR>aa<BS><BS>
""normal mode mapping for o
"nnoremap o oa<BS>
""normal mode mapping for O
"nnoremap O Oa<BS>
"改进方案, 按 S 即可在正确缩进位置插入, 所以不用进行按键映射了
"
" :Rename newFile.txt 将正在编辑的文件重命名为 newFile.txt
:command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))


" vim-plug 环境设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"去除vi一致性
set nocompatible
"filetype off
call plug#begin('~/.vim/plugged')
"Plug 'konfekt/fastfold'
Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
augroup loadNerdtree
autocmd!
autocmd VimEnter * silent! autocmd! FileExplorer
autocmd BufEnter,BufNew *
          \  if isdirectory(expand('<amatch>'))
          \|   call plug#load('nerdtree')
          \|   call nerdtree#checkForBrowse(expand("<amatch>"))
          \| endif
augroup END
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
"Plug 'kshenoy/vim-signature'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ctrlpvim/ctrlp.vim', { 'on': [] }
"Plug 'tpope/vim-fugitive', { 'on': [] }
Plug 'bling/vim-bufferline', { 'on': [] }
Plug 'tacahiroy/ctrlp-funky', { 'on': [] }
Plug 'ycm-core/YouCompleteMe', { 'on': [] }
Plug 'preservim/nerdcommenter', { 'on': [] }
Plug 'vim-airline/vim-airline', { 'on': [] }
Plug 'vim-airline/vim-airline-themes', { 'on': [] }
Plug 'vim-scripts/taglist.vim', { 'on': ['TlistToggle', 'TlistUpdate'] }
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer',  'for': ['c', 'cpp'] }

" 插件列表
call plug#end()

" 优化 vim 启动速度
" 100 毫秒后调用 LoadPlug, 且只调用一次, 见 `:h timer_start()`
call timer_start(100, 'LoadPlug')
function! LoadPlug(timer) abort
"  call plug#load('vim-fugitive')
  call plug#load('ctrlp.vim')
  call plug#load('ctrlp-funky')
  call plug#load('nerdcommenter')
  call plug#load('YouCompleteMe')
  call plug#load('vim-bufferline')
  call plug#load('vim-airline-themes')
  call plug#load('vim-airline')
endfunction
filetype plugin indent on       "taglist 插件需要 on
" vim-cpp-enhanced-highlight 插件增加支持的 STL 容器类型, 将该类型追加进 cpp.vim 即可
" vim ~/.vim/plugged/vim-cpp-enhanced-highlight/after/syntax/cpp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"开启文件类型检查, 并且载入与该类型对应的缩进规则
filetype indent on

"命令模式下, 在底部显示, 当前键入的指令
set showcmd

set autoindent

set smartindent

"支持使用鼠标
set mouse=a
" vim 在与屏幕 / 键盘交互时使用的编码

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
"set foldmethod=syntax

"启动 vim 时关闭折叠代码
set nofoldenable

"显示行号
set nu

"显示光标所在的当前行的行号,其他行都为相对于该行的相对行号
"set relativenumber

"光标所在的当前行高亮
"set cursorline

"设置行宽,即一行显示多少个字符
"set textwidth=80

"关闭自动折行
"set nowrap

"指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2

"水平滚动时,光标距离行首或行尾的位置(单位：字符),该配置在不折行时比较有用
"set sidescrolloff=15

"垂直滚动时,光标距离顶部/底部的位置(单位：行)
set scrolloff=5

"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况,默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到,正在编辑的文件的目录
"set autochdir

"出错时,不要发出响声
set noerrorbells

"出错时,发出视觉提示,通常是屏幕闪烁
set visualbell

" 当 vim 进行编辑时, 如果命令错误, 会发出警报, 该设置去掉警报
set t_vb=

" <leader> 的 timeoutlen
set tm=500

"居中
"set so=999
"居中相关映射
"noremap j gjzz
"noremap k gkzz
"noremap n nzz
"noremap <s-n> <s-n>zz
"noremap * *zz
"noremap # #zz
"noremap <c-o> <c-o>zz
"noremap <c-i> <c-i>zz
""""""""""""""""""""""""""""""""""""""""""""""""""""


" 编译/运行 按键映射 (支持 C, C++, Java, Python, Shell)  CRP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <leader> + ee 编译
nnoremap <leader>ee :call CompileCode()<CR>
inoremap <leader>ee <ESC>:call CompileCode()<CR>
vnoremap <leader>ee <ESC>:call CompileCode()<CR>
" <leader> + er 运行 
noremap <leader>er :call RunResult()<CR>
" <leader> + r 编译并运行
nnoremap <leader>r :w<CR><ESC>:call CompileRun()<CR>
inoremap <leader>r <ESC>:w<CR><ESC>:call CompileRun()<CR>
vnoremap <leader>r <ESC>:w<CR><ESC>:call CompileRun()<CR>
" <leader> + 7r  C++17 编译并运行
nnoremap <leader>7r :w<CR><ESC>:call CompileRunCPP17()<CR>
inoremap <leader>7r <ESC>:w<CR><ESC>:call CompileRunCPP17()<CR>
vnoremap <leader>7r <ESC>:w<CR><ESC>:call CompileRunCPP17()<CR>
" <leader> + tr  编译运行并显示运行时间
nnoremap <leader>tr :call CompileRunShowTime()<CR>
inoremap <leader>tr <ESC>:call CompileRunShowTime()<CR>
vnoremap <leader>tr <ESC>:call CompileRunShowTime()<CR>
"F8 gdb调试
"noremap <F8> :call Debug()<CR>
"func!  Debug()
"    exec "w"
"    exec "!gcc % -o %< -gstabs+"
"    exec "!gdb %<"
"endfunc

"exec 把一个字符串当做 vim 的命令来执行
func! CompileGcc()
    let compilecmd="!gcc "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpicc "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
    let compilecmd="!g++ "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpic++ "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc

func! CompileCode()
    exec "w"
    if &filetype == "cpp"
        exec "call CompileGpp()"
    elseif &filetype == "c"
        exec "call CompileGcc()"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == "shell"
        exec "!chmod a+x %"
    elseif &filetype == "java"
        exec "!javac %"
    endif
endfunc

func! RunResult()
    if search("mpi\.h") != 0
        exec "!mpirun -np 4 ./%<"
    elseif &filetype == "cpp"
        exec "! ./%<"
    elseif &filetype == "c"
        exec "! ./%<"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == "shell"
    elec "! ./%"
elseif &filetype == "java"
    exec "!java %<"
endif
endfunc

func! CompileRun()
    exec "w"
    if &filetype == "cpp"
        "!g++ -g % -o %< && %<" -g 选项告诉 GCC 产生能被 GNU 调试器使用的调试信息以便调试你的程序
        "-o 生成 bin 可执行文件, 不加 -o 则生成 a.out 可执行文件
        "!g++ -Wall % -o %< && %<" 加入 -Wall 将打印出 gcc 提供的警告信息
        " && ./%"
        exec "!g++ % -o %< && ./%<"
    elseif &filetype == "c"
        exec "!gcc -o % %< && ./%<"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == 'shell'
        exec "!chmod a+x % && ./%<"
    elseif &filetype == "java"
        exec "!javac % && java %<"
    endif
endfunc

"C++17 编译并运行
func! CompileRunCPP17()
    exec "w"
    if &filetype == "cpp"
        exec "!g++ -std=c++17 % -o %< && ./%<"
    endif
endfunc

func! CompileRunShowTime()
    exec "w"
    if &filetype == "cpp"
        "!g++ -g % -o %< && %<" -g 选项告诉 GCC 产生能被 GNU 调试器使用的调试信息以便调试你的程序
        "-o 生成 bin 可执行文件, 不加 -o 则生成 a.out 可执行文件
        "!g++ -Wall % -o %< && %<" 加入 -Wall 将打印出 gcc 提供的警告信息
        exec "!g++ % -o %< && time ./%<"
    elseif &filetype == "c"
        exec "!gcc % -o %< && time ./%<"
    elseif &filetype == "python"
        exec "!time python %"
    elseif &filetype == 'shell'
        exec "!time chmod a+x % && ./%"
    elseif &filetype == "java"
        exec "!time javac % && java %<"
    endif
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Micro Comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto_head.cpp 放自动插入文件头的模版 cpp 文件
" auto_head.vim 放 call append(line(".")+n, "")
" 使用方式
" 将 auto_head.vim 放在 buffer2 运行 gg
" 将 auto_head.cpp 放在 buffer1 运行 gg
" 然后依次运行 100@l @y 100@r  再将 "r" 改为 \"r\"
" 即可将 auto_head.cpp 中的模版变为 vimrc 可执行形式
let @l=',2y3f"j,1Pj|'
" @w 作用 : 给 auto_head.cpp 行首加上 auto_head.vim 的 call append(line(".")+?, "
" 宏命令 100@l 处理 100 行
let @y=":%s/\"*\"\/\\\\\"/g\<CR>\<BS>,2$hvlly,1gg"
" @y 作用 : 将 "???" 改为 \"???\" 并复制 ")
let @r='$pj'
" @r 作用 : 给 auto_head.cpp 行尾加上 ")
let @1="\<ESC>8GvG$di#include <cstdio>\<CR>\<CR>int main() {\<CR>return 0;\<ESC>k^"
" @1 作用 : 更换自动文件头模版 1
let @2="\<ESC>8GvG$di#include <cstdio>\<CR>using namespace std;\<CR>\<CR>int main() {\<CR>return 0;\<ESC>k^"
" @2 作用 : 更换自动文件头模版 2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" 自动生成文件头 AUTO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh exec ":call SetTitle()"
" 加入注释
func SetComment()
    call setline(1,"/*************************************************")
    call append(line("."), " *     File Name: ".expand("%:t"))
    "    call append(line(".")+1, " *   Description: ")
    call append(line(".")+1, " *        Author: Lin Chen")
    call append(line(".")+2, " *          Mail: mr.linchsz@gmail.com")
    call append(line(".")+3, " *        Create: ".strftime("%Y-%m-%d %H:%M:%S")) 
"    call append(line(".")+4, " * Last Modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(line(".")+4, " *************************************************/")  
    call append(line(".")+5, "")
endfunc
" 加入shell, Makefile注释
func SetComment_sh()
    call setline(3, "#================================================================")
    call setline(4, "#     File Name: ".expand("%:t"))
    "    call setline(5, "#   Description: ")
    call setline(6, "#        Author: Lin Chen")
    call setline(7, "#          Mail: mr.linchsz@gmail.com")
    call setline(8, "#        Create: ".strftime("%Y-%m-%d %H:%M:%S")) 
    call setline(9, "# Last Modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call setline(10, "#================================================================")
    call setline(11, "")
endfunc

" 定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'make'
        call setline(1,"")
        call setline(2,"")
        call SetComment_sh()
    elseif &filetype == 'sh'
        call setline(1,"#!/system/bin/sh")
        call setline(2,"")
        call SetComment_sh()
    else
        call SetComment()
        if expand("%:e") == 'hpp'
            call append(line(".")+7, "#ifndef _".toupper(expand("%:t:r"))."_H")
            call append(line(".")+8, "#define _".toupper(expand("%:t:r"))."_H")
            call append(line(".")+9, "#ifdef __cplusplus")
            call append(line(".")+10, "extern \"C\"")
            call append(line(".")+11, "{")
            call append(line(".")+12, "#endif")
            call append(line(".")+13, "")
            call append(line(".")+14, "#ifdef __cplusplus")
            call append(line(".")+15, "}")
            call append(line(".")+16, "#endif")
            call append(line(".")+17, "#endif //".toupper(expand("%:t:r"))."_H")
        elseif expand("%:e") == 'h'
            call append(line(".")+7, "#pragma once")
        elseif &filetype == 'c'
            call append(line(".")+7, "#include <stdio.h>")
            call append(line(".")+8, "")
            call append(line(".")+9, "int main() {")
            call append(line(".")+10, "    return 0;")
            call append(line(".")+11, "}")
        elseif &filetype == 'cpp'

            call append(line(".")+6, "#include <map>")
            call append(line(".")+7, "#include <set>")
            call append(line(".")+8, "#include <cmath>")
            call append(line(".")+9, "#include <queue>")
            call append(line(".")+10, "#include <stack>")
            call append(line(".")+11, "#include <cstdio>")
            call append(line(".")+12, "#include <cctype>")
            call append(line(".")+13, "#include <vector>")
            call append(line(".")+14, "#include <string>")
            call append(line(".")+15, "#include <cstdlib>")
            call append(line(".")+16, "#include <cstring>")
            call append(line(".")+17, "#include <iostream>")
            call append(line(".")+18, "#include <algorithm>")
            call append(line(".")+19, "#include <unordered_map>")
            call append(line(".")+20, "using namespace std;")
            call append(line(".")+21, "")
            call append(line(".")+22, "#define fi first")
            call append(line(".")+23, "#define se second")
            call append(line(".")+24, "#define ed end()")
            call append(line(".")+25, "#define re rend()")
            call append(line(".")+26, "#define bg begin()")
            call append(line(".")+27, "#define rb rbegin()")
            call append(line(".")+28, "#define gc() getchar()")
            call append(line(".")+29, "#define pc(x) putchar(x)")
            call append(line(".")+30, "#define pb(x) push_back(x)")
            call append(line(".")+31, "#define all(x) x.begin(), x.end()")
            call append(line(".")+32, "#define sor(x) sort(x.begin(), x.end())")
            call append(line(".")+33, "#define uni(x) unique(x.begin(), x.end())")
            call append(line(".")+34, "#define era(x) x.erase(unique(x.begin(),x.end()),x.end()")
            call append(line(".")+35, "#define posl(x,v) (lower_bound(x.begin(),x.end(),v)-x.begin()")
            call append(line(".")+36, "#define posu(x,v) (upper_bound(x.begin(),x.end(),v)-x.begin()")
            call append(line(".")+37, "#define PQ(T) priority_queue<T, vector<T>, greater<T> >")
            call append(line(".")+38, "#define repn(i, n) for (int i = 1; i <= (n); ++i)")
            call append(line(".")+39, "#define rep(i, n) for (int i = 0; i < (n); ++i)")
            call append(line(".")+40, "#define mem(x, a) memset(x, a, sizeof(x))")
            call append(line(".")+41, "#define fre(x) freopen(x, \"r\", stdin)")
            call append(line(".")+42, "#define ump(S, T) unordered_map<S, T>")
            call append(line(".")+43, "#define wl(x) wr<long long>(x)")
            call append(line(".")+44, "#define rl() rd<long long>()")
            call append(line(".")+45, "#define wi(x) wr<int>(x)")
            call append(line(".")+46, "#define ri() rd<int>()")
            call append(line(".")+47, "")
            call append(line(".")+48, "typedef long long ll;")
            call append(line(".")+49, "typedef unsigned int uint;")
            call append(line(".")+50, "typedef unsigned long long ull;")
            call append(line(".")+51, "typedef pair<int, int> p;")
            call append(line(".")+52, "typedef vector<int> vi;")
            call append(line(".")+53, "typedef vector<vi> vvi;")
            call append(line(".")+54, "typedef vector<ll> vl;")
            call append(line(".")+55, "typedef vector<vl> vvl;")
            call append(line(".")+56, "")
            call append(line(".")+57, "//const int p = 13331;")
            call append(line(".")+58, "const int INF = 0x7fffffff;")
            call append(line(".")+59, "//const ll INF = 1ll << 63;")
            call append(line(".")+60, "template <typename T>")
            call append(line(".")+61, "inline T rd() {")
            call append(line(".")+62, "    T x = 0, f = 1;")
            call append(line(".")+63, "    char c = getchar();")
            call append(line(".")+64, "    while (!isdigit(c)) f = c == '-' ? -1 : 1, c = getchar();")
            call append(line(".")+65, "    while (isdigit(c)) x = (x << 1) + (x << 3) + (c ^ 48), c = getchar();")
            call append(line(".")+66, "    return x * f;")
            call append(line(".")+67, "}")
            call append(line(".")+68, "template <typename T>")
            call append(line(".")+69, "inline void wr(T x) {")
            call append(line(".")+70, "    T y = 1, len = 1;")
            call append(line(".")+71, "    if (x < 0) x = -x, putchar('-');")
            call append(line(".")+72, "    while (y <= x / 10) y = (y << 1) + (y << 3), ++len;")
            call append(line(".")+73, "    for (; len; --len) putchar(x / y ^ 48), x %= y, y /= 10;")
            call append(line(".")+74, "}")
            call append(line(".")+75, "")
            call append(line(".")+76, "int n, m, k, x, y, z, cnt;")
            call append(line(".")+77, "")
            call append(line(".")+78, "int main() {")
            call append(line(".")+79, "    return 0;")
            call append(line(".")+80, "}")
            call append(line(".")+81, "")

        endif
    endif
endfunc

"" 创建新文件时光标自动移动到 8 行
"autocmd BufNewFile * normal 10G
"" 创建新文件时光标自动移动到 78 行
autocmd BufNewFile * normal 80G
""实现上面函数中的，Last modified功能
"autocmd BufWrite,BufWritePre,FileWritePre  *.cpp    ks|call LastModified()|'s  
"func LastModified()
"    if line("$") > 20
"        let l = 20
"    else 
"        let l = line("$")
"    endif
"    exe "1,".l."g/Last Modified: /s/Last Modified: .*/Last Modified:".
"                \strftime(" %Y-%m-%d %H:%M:%S") . "/e"
"endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CO    color
" VU    vundle
" LD    <leader>
" AU    auto_file_head
" CRP   Compile/Run Map

"插件配置结束
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

