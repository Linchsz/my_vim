set runtimepath+=~/.vim/.vim_runtime

"设置前缀键为 ,
let mapleader = ","
" <leader> 的 timeoutlen
set tm=500

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
nnoremap <silent><leader>w :w<CR><ESC>
" inoremap <silent><leader>w <ESC>:w<CR><ESC>
vnoremap <silent><leader>w <ESC>:w<CR><ESC>
" 保存所有窗口
nnoremap <silent><leader>aw :wa<CR><ESC>
" inoremap <silent><leader>aw <ESC>:wa<CR><ESC>
vnoremap <silent><leader>aw <ESC>:wa<CR><ESC>
" 保存并退出按键映射为 <leader> + q
" :x 和 ZZ 命令与 :wq 类似, 但不会写入没有改变的文件, 并且更快
nnoremap <silent><leader>q :x<CR>
" inoremap <silent><leader>q <ESC>:x<CR>
vnoremap <silent><leader>q <ESC>:x<CR>
" 保存并退出所有窗口
nnoremap <silent><leader>aq :xa<CR>
" inoremap <silent><leader>aq <ESC>:xa<CR>
vnoremap <silent><leader>aq <ESC>:xa<CR>
"选中全文"
nnoremap <silent><leader>v gg<S-v><S-g>
" inoremap <silent><leader>v <ESC>gg<S-v><S-g>
vnoremap <silent><leader>v <ESC>gg<S-v><S-g>
"复制全文到系统剪切板
nnoremap <silent><leader>Y muggy<S-g>`u
" inoremap <silent><leader>Y <ESC>muggy<S-g>`u
vnoremap <silent><leader>Y <ESC>muggy<S-g>`u
"复制主体部分(去首尾注释)到系统剪切板
nnoremap <silent><leader>y mugg}j<S-v><S-g>{ky`u
" inoremap <silent><leader>y <ESC>mugg}j<S-v><S-g>{ky`u
vnoremap <silent><leader>y <ESC>mugg}j<S-v><S-g>{ky`u
"命令窗口清屏
nnoremap <silent><leader>l :!clear<CR><CR>

" 使用 Ctrl + t 打开一个新 Buffer, 然后输入文件名创建新文件
nnoremap <C-e> :enew<CR>:e 
inoremap <C-e> <ESC>:enew<CR>:e
vnoremap <C-e> <ESC>:enew<CR>:e 
" 使用 Ctrl + n 切换到下一个 Buffer
nnoremap <silent> <C-n> :bn<CR>
inoremap <silent> <C-n> <ESC>:bn<CR>
vnoremap <silent> <C-n> <ESC>:bn<CR>
" 使用 Ctrl + p 切换到上一个 Buffer
nnoremap <silent> <C-p> :bpre<CR>
inoremap <silent> <C-p> <ESC>:bp<CR>
vnoremap <silent> <C-p> <ESC>:bp<CR>
" 使用 dd 保存并关闭当前 Buffer
nnoremap <silent> <leader>dd :w<CR>:Bclose<cr>:tabclose<cr>gT
" inoremap <silent> <leader>dd <ESC>:w<CR>:Bclose<cr>:tabclose<cr>gT
vnoremap <silent> <leader>dd <ESC>:w<CR>:Bclose<cr>:tabclose<cr>gT
" 使用 dq 强制关闭当前 Buffer
nnoremap <silent> <leader>dq :Bclose<cr>:tabclose<cr>gT
" inoremap <silent> <leader>dq <ESC>:Bclose<cr>:tabclose<cr>gT
vnoremap <silent> <leader>dq <ESC>:Bclose<cr>:tabclose<cr>gT
" 使用 da 关闭所有 Buffer
nnoremap <silent> <leader>da :bufdo bd<CR>
" inoremap <silent> <leader>da <ESC>:bufdo bd<CR>
vnoremap <silent> <leader>da <ESC>:bufdo bd<CR>
" 使用 bs 列出 Buffer 列表
"nnoremap <silent> bs :ls<CR>
"inoremap <silent> bs <ESC>:ls<CR>
"vnoremap <silent> bs <ESC>:ls<CR>
" Useful mappings for managing tabs
"map <leader>tn :tabnew<cr>
"map <leader>to :tabonly<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove 
"map <leader>t<leader> :tabnext 
" 打开当前文件的目录
nnoremap <silent> <leader>oo :!open .<CR>

"解决 O 卡顿
set noesckeys
nnoremap j gj
nnoremap k gk
nnoremap yj yj
nnoremap yk yk
nnoremap dj dj
nnoremap dk dk
" nnoremap dd dd
"映射 dd 避免因映射 dj 和 dk 造成 d 卡顿 
" Remap VIM 0 to first non-blank character
" nnoremap 0 ^
" nnoremap - $

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

" astyle 格式化代码 (gnu, linux, google 风格)
nnoremap gsh :call FormatCode()<CR>
func! FormatCode()
    exec "w"
    if &filetype == 'C' || &filetype == 'h'
        exec "!astyle --style=google %"
    elseif &filetype == 'cpp'
        exec "!astyle --style=google %"
    endif
endfunc

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

Plug 'jiangmiao/auto-pairs'
" Plug 'kshenoy/vim-signature', { 'on': [] }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dense-analysis/ale', { 'on': [] }
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
" call plug#load('vim-signature')
call plug#load('ale')
call plug#load('nerdcommenter')
call plug#load('YouCompleteMe')
call plug#load('vim-bufferline')
call plug#load('vim-airline-themes')
call plug#load('vim-airline')
endfunction
filetype plugin indent on       "taglist 插件需要 on
" vim-cpp-enhanced-highlight 插件增加支持的 STL 容器类型, 将该类型追加进 cpp.vim 即可
" vim ~/.vim/plugged/vim-cpp-enhanced-highlight/after/syntax/cpp.vim
" 插件配置结束
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
set sidescrolloff=15
"垂直滚动时,光标距离顶部/底部的位置(单位：行), 999 可视为居中
set scrolloff=999
"居中
" auto insertleave,cursormoved * normal! zz
"居中相关映射
" noremap G Gzz
" noremap j gjzz
" noremap k gkzz
" noremap n nzz
" noremap <s-n> <s-n>zz
" noremap * *zz
" noremap # #zz
" noremap <c-o> <c-o>zz
" noremap <c-i> <c-i>zz

"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况,默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到,正在编辑的文件的目录
"set autochdir

"出错时,不要发出响声
set noerrorbells
"出错时,发出视觉提示,通常是屏幕闪烁
set visualbell
" 当 vim 进行编辑时, 如果命令错误, 会发出警报, 该设置去掉警报
set t_vb=

" 记住上次编辑和浏览位置
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""

" 编译/运行 按键映射 (支持 C, C++, Java, Python, Shell, Go)  CRP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <leader> + ee 编译
nnoremap <leader>ee :call CompileCode()<CR>
" inoremap <leader>ee <ESC>:call CompileCode()<CR>
vnoremap <leader>ee <ESC>:call CompileCode()<CR>
" <leader> + er 运行 
nnoremap <leader>er :call RunResult()<CR>
vnoremap <leader>er :call RunResult()<CR>
" <leader> + r C++17 & go 编译并运行
nnoremap <leader>r :w<CR><ESC>:call CompileRun()<CR>
" inoremap <leader>r <ESC>:w<CR><ESC>:call CompileRun()<CR>
vnoremap <leader>r <ESC>:w<CR><ESC>:call CompileRun()<CR>
" <leader> + g lldb 调试
nnoremap <leader>g :w<CR><ESC>:call Debug()<CR>
" inoremap <leader>r <ESC>:w<CR><ESC>:call CompileRun()<CR>
vnoremap <leader>g <ESC>:w<CR><ESC>:call Debug()<CR>
" <leader> + 1r  C++17 编译并运行
" nnoremap <leader>1r :w<CR><ESC>:call CompileRunCPP17()<CR>
" inoremap <leader>1r <ESC>:w<CR><ESC>:call CompileRunCPP17()<CR>
" vnoremap <leader>1r <ESC>:w<CR><ESC>:call CompileRunCPP17()<CR>
" <leader> + tr  编译运行并显示运行时间
nnoremap <leader>tr :call CompileRunShowTime()<CR>
" inoremap <leader>tr <ESC>:call CompileRunShowTime()<CR>
vnoremap <leader>tr <ESC>:call CompileRunShowTime()<CR>
"F8 lldb 调试
" noremap <F8> :call Debug()<CR>
func!  Debug()
   " exec "w"
   exec "!g++ -std=c++17 % -o %<"
   exec "!lldb %<"
endfunc

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

func! CompileCode() " 只编译
    exec "w"
    if &filetype == "cpp"
        " 编译 C++17
        exec "!g++ -std=c++17 % -o %<"
        " exec "call CompileGpp()"
    elseif &filetype == "c"
        exec "call CompileGcc()"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == "go"
        exec "!go build %"
    elseif &filetype == "shell"
        exec "!chmod a+x %"
    elseif &filetype == "java"
        exec "!javac %"
    endif
endfunc

func! RunResult() " 只运行
    if search("mpi\.h") != 0
        exec "!mpirun -np 4 ./%<"
    elseif &filetype == "cpp"
        exec "! ./%<"
    elseif &filetype == "c"
        exec "! ./%<"
    elseif &filetype == "python"
        exec "!python %"
    elseif &filetype == "go"
        exec "! ./%<"
    elseif &filetype == "shell"
    j   exec "! ./%"
elseif &filetype == "java"
    exec "!java %<"
endif
endfunc

func! CompileRun() " 编译并运行
    exec "w"
    if &filetype == "cpp"
        "!g++ -g % -o %< && %<" -g 选项告诉 GCC 产生能被 GNU 调试器使用的调试信息以便调试你的程序
        "-o 生成 bin 可执行文件, 不加 -o 则生成 a.out 可执行文件
        "!g++ -Wall % -o %< && %<" 加入 -Wall 将打印出 gcc 提供的警告信息, -w 禁止所以警告的显示
        " && ./%"
        " exec "!g++ % -o %< && ./%<"
        " exec "!g++ -w % -o %< && ./%<"
        " 编译并运行 C++17
        exec "!g++ -std=c++17 % -o %< && ./%<"
    elseif &filetype == "c"
        exec "!gcc -o % %< && ./%<"
    elseif &filetype == "python"
        exec "!python3 %"
    elseif &filetype == "go"
        exec "!go run %"
    elseif &filetype == 'shell'
        exec "!chmod a+x % && ./%<"
    elseif &filetype == "java"
        exec "!javac % && java %<"
    endif
endfunc

func! CompileRunShowTime()
    exec "w"
    if &filetype == "cpp"
        " !g++ -g % -o %< && %<" -g 选项告诉 GCC 产生能被 GNU 调试器使用的调试信息以便调试你的程序
        "-o 生成 bin 可执行文件, 不加 -o 则生成 a.out 可执行文件
        "!g++ -Wall % -o %< && %<" 加入 -Wall 将打印出 gcc 提供的警告信息
        " exec "!g++ % -o %< && time ./%<"
        " C++17
        exec "!g++ -std=c++17 % -o %< && time ./%<"
    elseif &filetype == "c"
        exec "!gcc % -o %< && time ./%<"
    elseif &filetype == "python"
        exec "!time python %"
    elseif &filetype == "go"
        exec "!time go run %"
    elseif &filetype == 'shell'
        exec "!time chmod a+x % && time ./%"
    elseif &filetype == "java"
        exec "!time javac % && time java %<"
    endif
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Micro Comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto_head.cpp 放自动插入文件头的模版 cpp 文件
" auto_head.vim 放 call setline(?, "")
" 使用方式
" 将 auto_head.vim 放在 buffer2 运行 gg
" 将 auto_head.cpp 放在 buffer1 运行 gg
" 然后依次运行 100@l @y 100@r
" 即可将 auto_head.cpp 中的模版变为 vimrc 可执行形式
let @l=',2yf"j,1Pj|'
" @w : 给 auto_head.cpp 行首加上 auto_head.vim 的 call setline(?, "
" 宏命令 100@l 处理 100 行
let @y=",2$hvlly,1gg:%s/\"r\"\/\\\\\"r\\\\\"\<CR>\<BS>"
" @y : 将 "r" 改为 \"r\" 并复制 ")
" 替换指令 %s/\"r\"/\\"r\\"
let @r='$pj'
" @r : 给 auto_head.cpp 行尾加上 ")
let @1="\<ESC>8G\<S-v>75Gdi#include <cstdio>\<CR>\<ESC>"
" @1 : 更换自动文件头模版 1
" let @2="\<ESC>8G\<S-v>75Gdi#include <cstdio>\<CR>using namespace std;\<CR>\<ESC>"
" @2 : 生成对拍程序
let @g="\<ESC>gg\<S-v>Gd:call SetComment_RD()\<CR>7G19|i"

func SetComment_RD()

    call setline(1 , "#include <cstdio>")
    call setline(2 , "#include <cstdlib>")
    call setline(3 , "int main() {")
    call setline(4 , "    int tmp = 0;")
    call setline(5 , "    for (int i = 1; i <= 10000; ++i) {")
    call setline(6 , "        system(\"./generate\"); // 数据生成器")
    call setline(7 , "        system(\"./\"); // 对拍程序")
    call setline(8 , "        system(\"./a\"); // 我的程序")
    call setline(9 , "")
    call setline(10, "        if (i / 100 > tmp) {")
    call setline(11, "            printf(\"-- %d --\\n\", i);")
    call setline(12, "            tmp = i / 100;")
    call setline(13, "        }")
    call setline(14, "        if (system(\"diff test.out std.out\")) { // 对比输出结果")
    call setline(15, "            printf(\"wrong in --> %d \\n\", i);")
    call setline(16, "            break;")
    call setline(17, "        }")
    call setline(18, "    }")
    call setline(19, "    return 0;")
    call setline(20, "}")
    call setline(21, "")

endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" 自动生成文件头 AUTO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh exec ":call SetTitle()"
" 加入注释
func SetComment()
    call setline(1, "/*************************************************")
    call setline(2, " *     File Name: ".expand("%:t"))
    "    call setline(1, " *   Description: ")
    call setline(3, " *        Author: Lin Chen")
    call setline(4, " *          Mail: mr.linchsz@gmail.com")
    call setline(5, " *        Create: ".strftime("%Y-%m-%d %H:%M:%S")) 
    "    call setline(4, " * Last Modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call setline(6, " *************************************************/")  
    call setline(7, "")
endfunc
" 加入shell, Makefile注释
func SetComment_sh()
    call setline(3, "#================================================================")
    call setline(4, "#     File Name: ".expand("%:t"))
    "    call setline(5, "#   Description: ")
    call setline(5, "#        Author: Lin Chen")
    call setline(6, "#          Mail: mr.linchsz@gmail.com")
    call setline(7, "#        Create: ".strftime("%Y-%m-%d %H:%M:%S")) 
    call setline(8, "# Last Modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call setline(9, "#================================================================")
    call setline(10, "")
endfunc

" 定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'make'
        call setline(1,"")
        call setline(2,"")
        call SetComment_sh()
    elseif &filetype == 'sh'
        call setline(1,"#!/bin/sh")
        call setline(2,"")
        call SetComment_sh()
    else
        call SetComment()
        if expand("%:e") == 'hpp'
            call setline(8, "#ifndef _".toupper(expand("%:t:r"))."_H")
            call setline(9, "#define _".toupper(expand("%:t:r"))."_H")
            call setline(10, "#ifdef __cplusplus")
            call setline(11, "extern \"C\"")
            call setline(12, "{")
            call setline(13, "#endif")
            call setline(14, "")
            call setline(15, "#ifdef __cplusplus")
            call setline(16, "}")
            call setline(17, "#endif")
            call setline(18, "#endif //".toupper(expand("%:t:r"))."_H")
        elseif expand("%:e") == 'h'
            call setline(8, "#pragma once")
        elseif &filetype == 'c'
            call setline(8, "#include <stdio.h>")
            call setline(9, "")
            call setline(10, "int main() {")
            call setline(11, "    return 0;")
            call setline(12, "}")
        elseif &filetype == 'cpp'

            " call setline(8,  "")
            " call setline(9,  "")
            " call setline(10, "")
            " call setline(11, "//")
            " call setline(12, "")
            " call setline(13, "")

            " " call setline(8, "#include <cstdio>")
            call setline(8, "#include <bits/stdc++.h>")
            call setline(9, "using namespace std;")
            call setline(10, "")
            call setline(11, "int main() {")
            call setline(12, "    return 0;")
            call setline(13, "}")
            call setline(14, "")
            call setline(15, "//")
            call setline(16, "")
            call setline(17, "")
            call setline(18, "")

            " call setline(8, "#include <bits/stdc++.h>")
            " call setline(9, "using namespace std;")
            " call setline(10, "")
            " call setline(11, "#define fi first")
            " call setline(12, "#define se second")
            " call setline(13, "#define gc getchar()")
            " call setline(14, "#define pc(x) putchar(x)")
            " call setline(15, "#define pb(x) push_back(x)")
            " call setline(16, "#define eb(x) emplace_back(x)")
            " call setline(17, "#define all(x) x.begin(), x.end()")
            " call setline(18, "#define mem(x, a) memset(x, a, sizeof(x))")
            " call setline(19, "#define IO() freopen(\"in.txt\", \"r\", stdin)")
            " call setline(20, "#define rep(i, x, y) for (int i = (x); i < (y); ++i)")
            " call setline(21, "#define repn(i, x, y) for (int i = (x); i <= (y); ++i)")
            " call setline(22, "")
            " call setline(23, "typedef long long ll;")
            " call setline(24, "")
            " call setline(25, "template <typename T>")
            " call setline(26, "inline void rd(T &x) {")
            " call setline(27, "    x = 0; int f = 1;")
            " call setline(28, "    char c = getchar();")
            " call setline(29, "    while (!isdigit(c)) f = c == '-' ? -1 : 1, c = getchar();")
            " call setline(30, "    while (isdigit(c)) x = (x << 1) + (x << 3) + (c ^ 48), c = getchar();")
            " call setline(31, "    x *= f;")
            " call setline(32, "}")
            " call setline(33, "")
            " call setline(34, "int T, n, m, k, x, y, z, cnt;")
            " call setline(35, "")
            " call setline(36, "int main() {")
            " call setline(37, "    // IO();")
            " call setline(38, "")
            " call setline(39, "    return 0;")
            " call setline(40, "}")
            " call setline(41, "")
            " call setline(42, "//")
            " call setline(43, "")
            " call setline(44, "")
            " call setline(45, "")
            " call setline(46, "")
            " call setline(47, "")

        endif
    endif
endfunc

"" 创建新文件时光标自动移动到 77 行
" autocmd BufNewFile * normal 77G
autocmd BufNewFile * normal 11G
" autocmd BufNewFile * normal 11G
" autocmd BufNewFile * normal 37G
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

