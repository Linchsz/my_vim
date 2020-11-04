"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic — @amix3k
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
"nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 设置打开文件的编码格式 (fileencodings, fileencoding)
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fenc=utf-8

" 解决 consle 输出乱码
"set termencoding = cp936

" 设置中文提示  " LA
"language messages zh_CN.utf-8

" 设置中文帮助
"set helplang=cn

" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" Turn on the Wild menu
set wildmenu
set wildmode=longest:list,full
set selection=exclusive
set selectmode=mouse,key
set clipboard=unnamed

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
" 允许隐藏被修改过的 buffer (hidden)
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching (ignorecase)
"set ic

" When searching try to be smart about cases (smartcase)
"如果同时打开了ic,那么对于只有一个大写字母的搜索词,将大小写敏感;其他情况都是大小写不敏感。比如,搜索Test时,
"set sc

" Highlight search results (hlsearch)
set hls

" Makes search act like search in modern browsers
"输入搜索模式时,每输入一个字符,就自动跳到第一个匹配的结果
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
"光标遇到圆括号、方括号、大括号时,自动高亮对应的另一个圆括号、方括号和大括号
set showmatch 
" How many tenths of a second to blink when matching brackets
"匹配括号高亮的时间 (单位0.1s) (matchtime)
set mat=2

" Properly disable sound on errors on MacVim
"if has("gui_macvim")
"    autocmd GUIEnter * set vb t_vb=
"endif


" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
"语法高亮
syntax enable
syntax on

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif


set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
"不创建备份文件。默认情况下,文件保存时,会额外创建一个备份文件,它的文件名是在原文件名的末尾,再添加一个波浪号(〜)
set nobackup

"set nowb

"不创建交换文件。交换文件主要用于系统崩溃时恢复文件,文件名的开头是.、结尾是.swp
"set noswapfile

"创建交换文件
set swapfile

"交换文件每隔多少毫秒保存一次
set updatetime=4000

"交换文件每隔多少个字符保存一次
set updatecount=200

"设置备份文件、交换文件、操作历史文件的保存位置
"结尾的//表示生成的文件名带有绝对路径,路径中用%替换目录分隔符,这样可以防止文件重名
"set backupdir=~/.vim/.backup//  
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo// 

"保留撤销历史
"Vim 会在编辑时保存操作历史,用来供用户撤消更改。默认情况下,操作记录只在本次编辑时有效,一旦编辑结束、文件关闭,操作历史就消失了
"打开这个设置,可以在文件关闭后,操作记录保留在一个文件里面,继续存在。这意味着,重新打开一个文件,可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件,文件名以.un~开头
set undofile

"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况,默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到,正在编辑的文件的目录
"set autochdir

"如果行尾有多余的空格(包括 Tab 键),该配置将让这些空格显示成可见的小方块
"set listchars=tab:»■,trail:■
"set list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
" 自动将 Tab 转为空格
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
" 在文本上按下>>(增加一级缩进)、<<(取消一级缩进)或者==(取消全部缩进)时,每一级的字符数
set shiftwidth=4
" 按下 Tab 键时,Vim 显示的空格数
set tabstop=4

"Tab 转为多少个空格
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set wrap "Wrap lines 自动折行,即太长的行分成几行显示



""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
noremap <space> /
"noremap <C-space> ?

" Disable highlight when <leader><cr> is pressed
"map <silent> <leader><cr> :noh<cr>
nnoremap <silent><BS> :noh<return><esc>

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" 使用 bl 列出 Buffer 列表
"nnoremap <silent> bs :ls<CR>
"inoremap <silent> bs <ESC>:ls<CR>
"vnoremap <silent> bs <ESC>:ls<CR>
" 使用 Ctrl + t 打开一个新 Buffer
nnoremap <silent> <C-t> :enew<CR>
inoremap <silent> <C-t> <ESC>:enew<CR>
vnoremap <silent> <C-t> <ESC>:enew<CR>
" 使用 Ctrl + n 切换到下一个 Buffer
nnoremap <silent> <C-n> :bnext<CR>
inoremap <silent> <C-n> <ESC>:bnext<CR>
vnoremap <silent> <C-n> <ESC>:bnext<CR>
" 使用 Ctrl + p 切换到上一个 Buffer
nnoremap <silent> <C-p> :bpre<CR>
inoremap <silent> <C-p> <ESC>:bpre<CR>
vnoremap <silent> <C-p> <ESC>:bpre<CR>
" 使用 dd 保存并关闭当前 Buffer
nnoremap <silent> <leader>dd :w<CR>:bdel<CR>
inoremap <silent> <leader>dd <ESC>:w<CR>:bdel<CR>
vnoremap <silent> <leader>dd <ESC>:w<CR>:bdel<CR>
" 使用 dq 保存并关闭当前 Buffer
nnoremap <silent> <leader>dq :w<CR>:bdel<CR>
inoremap <silent> <leader>dq <ESC>:w<CR>:bdel<CR>
vnoremap <silent> <leader>dq <ESC>:w<CR>:bdel<CR>
" 使用 da 关闭所有 Buffer
nnoremap <silent> <leader>da :bufdo bd<CR>
inoremap <silent> <leader>da <ESC>:bufdo bd<CR>
vnoremap <silent> <leader>da <ESC>:bufdo bd<CR>
" Close the current buffer
"map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
"map <leader>ba :bufdo bd<cr>
"
"map <leader>l :bnext<cr>
"map <leader>h :bpre<cr>

" Useful mappings for managing tabs
"map <leader>tn :tabnew<cr>
"map <leader>to :tabonly<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove 
"map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
"let g:lasttab = 1
"nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac
"nmap <M-j> mz:m+<cr>`z
"nmap <M-k> mz:m-2<cr>`z
"vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
"
"if has("mac") || has("macunix")
"  nmap <D-j> <M-j>
"  nmap <D-k> <M-k>
"  vmap <D-j> <M-j>
"  vmap <D-k> <M-k>
"endif

" 保存时删除尾随空格
" Delete trailing white space on save, useful for some filetypes ;)
"fun! CleanExtraSpaces()
"    let save_cursor = getpos(".")
"    let old_query = getreg('/')
"    silent! %s/\s\+$//e
"    call setpos('.', save_cursor)
"    call setreg('/', old_query)
"endfun
"
"if has("autocmd")
"    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
"endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
" 拼写检查
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
"map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
"map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
"map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
