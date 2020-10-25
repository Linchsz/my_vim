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
    "color peaksea 
    "color seoul256
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

"      按键映射      "  MAP

"显示行号
"map <leader>n :set nu<CR>

" 快速保存  <leader> + w
noremap <silent><leader>w :w!<CR><ESC>
inoremap <silent><leader>w <ESC>:w!<CR><ESC>
vnoremap <silent><leader>w <ESC>:w!<CR><ESC>

" 保存并退出按键映射为 <leader> + q
" :x 和 ZZ 命令与 :wq 类似, 但不会写入没有改变的文件, 并且更快
noremap <silent><leader>q :x<CR>
inoremap <silent><leader>q <ESC>:x<CR>
vnoremap <silent><leader>q <ESC>:x<CR>

"复制全文到系统剪切板
noremap <silent><leader>y ggv<S-g>$y<C-o><C-o> 
inoremap <silent><leader>y <ESC>ggv<S-g>$y<C-o><C-o> 
vnoremap <silent><leader>y <ESC>ggv<S-g>$y<C-o><C-o> 

"解决 O 卡顿
set noesckeys
" 该法存在问题, 在第一行无法往上开新行
"nnoremap <silent>O ko
noremap <silent>j gj
noremap <silent>k gk
noremap yj yj
noremap yk yk
noremap dj dj
noremap dk dk
noremap dd dd  
"映射 dd 避免因映射 dj 和 dk 造成 d 卡顿 
" Remap VIM 0 to first non-blank character

"解决换行得到的自动缩进, 在退出插入模式而不添加任何内容时缩进消失
""insert mode mapping for <CR>
"inoremap <CR> <CR>aa<BS><BS>
""normal mode mapping for o
"nnoremap o oa<BS>
""normal mode mapping for O
"nnoremap O Oa<BS>
"改进方案, 按 <S-s> 即可在正确缩进位置插入, 所以不用进行按键映射了
"
" :Rename newFile.txt 将正在编辑的文件重命名为 newFile.txt
:command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))

" vundle 环境设置
""""""""""""""""""""""""""""""""""""""""""""""""""""
"去除vi一致性
set nocompatible
filetype off     "vundle 需要 off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'bling/vim-bufferline'
    "Plugin 'itchyny/lightline.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'dstein64/vim-startuptime'
    Plugin 'vim-airline/vim-airline-themes'
    "Bundle 'NERDTree'
    Bundle 'taglist.vim'
    " 模糊搜索
    Bundle 'ctrlpvim/ctrlp.vim'
    "  模糊搜索当前文件中所有函数
    Bundle 'tacahiroy/ctrlp-funky'
    Bundle 'Valloric/YouCompleteMe'

    " 在此行上面放置插件列表  VUNDLE 
"   常用命令
"   :PluginList       - 查看已经安装的插件
"   :PluginInstall    - 安装插件
"   :PluginUpdate     - 更新插件
"   :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
"   :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
"   h: vundle         - 获取帮助
" 插件列表结束
call vundle#end()
filetype plugin indent on       "taglist 插件需要 on
""""""""""""""""""""""""""""""""""""""""""""""""""""


"开启文件类型检查, 并且载入与该类型对应的缩进规则
filetype indent on

"命令模式下, 在底部显示, 当前键入的指令
set showcmd

"支持使用鼠标
set mouse=a
" vim 在与屏幕 / 键盘交互时使用的编码

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax

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
set so=999
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
    call append(line(".")+4, " * Last Modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(line(".")+5, " *************************************************/")  
    call append(line(".")+6, "")
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
            call append(line(".")+7, "#include <cstdio>")
            call append(line(".")+8, "#include <iostream>")
            call append(line(".")+9, "using namespace std;")
            call append(line(".")+10, "")
            call append(line(".")+11, "int main() {")
            call append(line(".")+12, "    return 0;")
            call append(line(".")+13, "}")
        endif
    endif
endfunc

" 创建新文件时光标自动移动到 12 行
autocmd BufNewFile * normal 12G
""实现上面函数中的，Last modified功能
autocmd BufWrite,BufWritePre,FileWritePre  *.cpp    ks|call LastModified()|'s  
func LastModified()
    if line("$") > 20
        let l = 20
    else 
        let l = line("$")
    endif
    exe "1,".l."g/Last Modified: /s/Last Modified: .*/Last Modified:".
                \strftime(" %Y-%m-%d %H:%M:%S") . "/e"
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CO    color
" VU    vundle
" LD    <leader>
" AU    auto_file_head
" CRP   Compile/Run Map

"插件配置结束
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

