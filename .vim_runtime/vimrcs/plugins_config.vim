"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requires that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
"call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()


""""""""""""""""""""""""""""""
" => Ale
""""""""""""""""""""""""""""""
" 始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
" 自定义 error 和 warning 图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" 在 vim 自带的状态栏中整合 ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" 显示 Linter 名称, 出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 避免 Java 安装在中文系统上时错误和警告信息乱码
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
" 只在保存文件时检查
let g:ale_lint_on_text_changed = 'never'
" 打开文件时不进行检查
let g:ale_lint_on_enter = 0
" 普通模式下, <leader>k 前往上一个错误或警告, <leader>j 前往下一个错误或警告
nmap <leader>k <Plug>(ale_previous_wrap)
nmap <leader>j <Plug>(ale_next_wrap)
" <Leader>s 触发 / 关闭语法检查
nmap <Leader>s :ALEToggle<CR>
" <Leader>d 查看错误或警告的详细信息
" nmap <Leader>d :ALEDetail<CR>


""""""""""""""""""""""""""""""
" => Nerdcommenter
""""""""""""""""""""""""""""""
" 注释前加一个空格
let g:NERDSpaceDelims=1
" 取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1
imap <leader><leader> <ESC><leader>c<space>
nmap <leader><leader> <leader>c<space>
vmap <leader><leader> <leader>c<space>
" [count] <Leader> cc NERDCommenterComment
" 注释掉在可视模式下选择的当前行或文本
" [count] <Leader> cn NERDCommenterNested
" 与<Leader> cc相同, 但会强制嵌套
" [count] <Leader> c<space> NERDCommenterToggle
" 切换所选行的注释状态
" 如果选择的最顶部行已注释, 所有选定行均未注释, 反之亦然
" [count] <Leader> cm NERDCommenterMinimal
" 仅使用一组多部分定界符对给定的行进行注释
" [count] <Leader> ci NERDCommenterInvert
" 分别切换所选行的评论状态
" [count] <Leader> cs NERDCommenterSexy
" Comments out the selected lines ``sexily''
" [count] <Leader> cy NERDCommenterYank
" 与<Leader> cc相同, 只是首先删除了注释行
" <Leader> c$ NERDCommenterToEOL
" 将当前行从光标注释到行尾
" <Leader> cA NERDCommenterAppend
" 在行尾添加注释定界符, 并在两行之间进入插入模式
" NERDCommenterInsert
" 在当前光标位置添加注释定界符, 并在它们之间插入
" 默认情况下处于禁用状态
" <Leader> ca NERDCommenterAltDelims
" 切换到另一组定界符
" [count] <Leader> cl NERDCommenterAlignLeft
" [count] <Leader> cb NERDCommenterAlignBoth
" 与 NERDCommenterComment 相同, 不同之处在于分隔符在
" 左侧（<Leader> cl）或两侧（<Leader> cb）
" [count] <Leader> cu NERDCommenterUncomment
" 取消注释选定的行


""""""""""""""""""""""""""""""
" => BufferLine
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9


""""""""""""""""""""""""""""""
" => AirLine
""""""""""""""""""""""""""""""
"let g:airline_theme                            ="molokai" 
let g:airline_theme                            ='bubblegum'
let g:airline_powerline_fonts                  = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr                   = ''
let g:airline_symbols.maxlinenr                = ' '
"
let w:airline_skip_empty_sections              = 1
"let g:airline_section_a                        = '['mode', ' ', 'foo']'
"let g:airline_section_b                        = '%{fugitive#head()}'
"let g:airline_section_b                        = '%-0.10{getcwd()}'
"let g:airline_section_b                        = '['ffenc','file']'        " 在底部显示 buffer 标签
"let g:airline_section_c                        = '%t'                      " 显示当前 buffer 文件名 
let g:airline_section_c                        = '%{getcwd()}'              " 显示当前目录路径
let g:airline_section_x                        = '%{&filetype}'
let g:airline_section_warning                  = ''
let g:airline#extensions#tabline#enabled       = 1
" buffer 名称 => 文件全路径 + 文件名
"let g:airline#extensions#tabline#fnamemod      = ':~'
" 当前目录下文件 buffer 名称  => 文件名
" 非当前目录下文件 buffer 名称  => 文件全路径 + 文件名
let g:airline#extensions#tabline#fnamemod       = ':p:.'
" 当前目录外的文件的 buffer 的目录是否以首字母简写
" configure collapsing parent directories in buffer name
let g:airline#extensions#tabline#fnamecollapse  = 1
" configure truncating non-active buffer names to specified length
"let g:airline#extensions#tabline#fnametruncate  = 0
let g:airline_exclude_filenames = [] " see source for current list
let g:airline#extensions#branch#enabled              = 1
let g:airline#extensions#branch#displayed_head_limit = 10
" 显示 buffer 编号，方便切换
"let g:airline#extensions#tabline#buffer_nr_show     =1


""""""""""""""""""""""""""""""
" => Ctags
""""""""""""""""""""""""""""""
"ctags 安装目录
"set tags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
" 在 vim 保存文件时自动更新 ctags
"au FileType {c,cpp} au BufWritePost <buffer> silent ! [ -e tags ] &&
"    \ ( awk -F'\t' '$2\!="%:gs/'/'\''/"{print}' tags ; ctags -f- '%:gs/'/'\''/' )
"    \ | sort -t$'\t' -k1,1 -o tags.new && mv tags.new tags
"
" ctags 命令
" $ ctags –R *                      更新当前目录下的所有文件的 ctags (常用)
" $ vi –t tag                       把 tag 替换为我欲查找的变量或函数名
" :ts                               ts 助记字：tags list, ":"开头的命令为vim中命令行模式命令
" :tp                               tp 助记字：tags preview
" :tn                               tn 助记字：tags next
" Ctrl + ]                          跳转到光标选中标签定义处
" Ctrl + T / O                      跳转回去


""""""""""""""""""""""""""""""
" => TagList
""""""""""""""""""""""""""""""
let g:Tlist_Ctags_Cmd='$ctags_executable'
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'   "ctags 安装目录
"let Tlist_Auto_Open               = 1    " 启动 vim 后自动打开 Tlist 列表
let Tlist_Auto_Highlight_Tag      = 1    " 高亮当前行
let Tlist_Show_One_File           = 1    " 只显示当前文件的 tags
"let Tlist_Display_Prototype       = 1    " 在 taglist 中显示原型结构而不是名称
let Tlist_File_Fold_Auto_Close    = 1    " 显示多个文件 tags 时, 只显示当前文件 tags, 折叠其它文件 tags
"let Tlist_WinHeight               = 10    " 设置 taglist 窗口的高度 
"let Tlist_WinWidth                = 30    " 设置 taglist 窗口的宽度 
"let Tlist_Close_On_Select         = 1    " 在选择了 tag 后自动关闭 taglist 窗口
let Tlist_GainFocus_On_ToggleOpen = 1    " 打开 Tlist 窗口时，光标跳到 Tlist 窗口
let Tlist_Exit_OnlyWindow         = 1    " 如果 Tlist 窗口是最后一个窗口则退出 Vim
let Tlist_Use_Left_Window         = 1    " 在左侧窗口中显示(默认)
"let Tlist_Use_Right_Window        = 1    " 在右侧窗口中显示
"let Tlist_File_Fold_Auto_Close    = 1    " 当前缓冲区文件的 tags 自动打开, 其它缓冲区文件的自动折叠
let Tlist_Auto_Update             = 1    " 自动更新
"<leader>tl 打开 Tlist 窗口, 并显示行号
noremap <silent><leader>tl :TlistToggle<CR>:set nu<CR>
inoremap <silent><leader>tl <ESC>:TlistToggle<CR>:set nu<CR>
vnoremap <silent><leader>tl <ESC>:TlistToggle<CR>:set nu<CR>
"在 vim 保存文件时自动更新 taglist
autocmd BufWritePost *.cpp :TlistUpdate
"
" TagList 常用快捷键
" <leader>tl	显示 taglist 标签窗口
" q    	        关闭 taglist 标签窗口
" <CR>	        vim 编辑窗口跳转到光标选中的标签定义处
" o	            新建 vim 编辑窗口，并跳转到光标选中标签定义处
" p    	        vim 编辑窗口跳转至标签定义处，光标留在 taglist 窗口
" u             更新标签列表窗口中的标签信息
" s	            切换标签排序类型(按名称序或出现顺序)
" x	            扩展 / 收缩 taglist 标签窗口
" + / -	        展开 / 折叠 节点
" * / =	        展开 / 折叠 所有节点
" F1	        显示帮助


""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let NERDTreeHighlightCursorline = 1       " 高亮当前行
let NERDTreeShowLineNumbers     = 1       " 显示行号
" 忽略列表中的文件
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]
let g:NERDTreeWinPos = "right"            " 在右侧栏显示
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
"map <leader>nn :NERDTreeToggle<cr>
"map <leader>nb :NERDTreeFromBookmark<Space>
"map <leader>nf :NERDTreeFind<cr>
" 启动 vim 时打开 NERDTree
"autocmd vimenter * NERDTree
" 当打开 VIM，没有指定文件时和打开一个目录时，打开 NERDTree
"autocmd StdinReadPre * let s:std_in = 1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 关闭 NERDTree，当没有文件打开的时候
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" 按键映射
" <leader>nt 打开 nerdtree 窗口
noremap <silent><leader>nt :NERDTreeToggle<CR>
inoremap <silent><leader>nt <ESC>:NERDTreeToggle<CR>
vnoremap <silent><leader>nt <ESC>:NERDTreeToggle<CR>
" <leader>tc 关闭当前的 tab
"map <leader>tc :tabc<CR>
" <leader>to 关闭所有其他的 tab
"map <leader>to :tabo<CR>
" <leader>ts 查看所有打开的 tab
"map <leader>ts :tabs<CR>
" <leader>tp 前一个 tab
"map <leader>tp :tabp<CR>
" <leader>tn 后一个 tab
"map <leader>tn :tabn<CR>
"
" NERDTree 常用快捷键
" Ctrl - w - w	    光标在 nerdtree 和 vim 编辑窗口 之间切换
" <leader>nt	    打开 nerdtree
" q	                关闭 nerdtree
" o	                打开选中的文件； 折叠/展开选中的目录
" i	                打开选中的文件，与已打开文件纵向排布窗口，并跳转至该窗口
" gi	            打开选中的文件，与已打开文件纵向排布窗口，但不跳转至该窗口
" s	                打开选中的文件，与已打开文件横向排布窗口，并跳转至该窗口
" gs	            打开选中的文件，与已打开文件横向排布窗口，但不跳转至该窗口
" t	                在新 Tab 中打开选中文件/书签，并跳到新 Tab
" T	                在新 Tab 中打开选中文件/书签，但不跳到新 Tab
" x	                折叠选中结点的父目录
" X	                递归折叠选中结点下的所有目录
" k / j	            光标在 Neadtree 上下移动
" <leader>tc	    :tabc   关闭当前的 tab
" <leader>to	    :tabo   关闭所有其他 tab
" <leader>ts	    :tabs   查看所有打开的 tab
" <leader>tp	    :tabp   前一个 tab
" <leader>tn	    :tabn   后一个 tab
" ?	                显示菜单
""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<BS>"
"inoremap <expr><BS> pumvisible() ? "<ESC>:call neocomplete#close_popup()<CR>a<BS>" : "<BS>"
" 默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"让 vim 的补全菜单行为与一般 IDE 一致(参考VimTip1228)
set completeopt=longest,menu 
"let g:ycm_server_keep_logfiles=1
" 设置YCM的日志记录级别, 可以是debug, info, warning, error, critical. debug 是最详细的
let g:ycm_sever_log_level='debug'
" 打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
" python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/local/bin/python3'
" python 环境
let g:ycm_python_binary_path = '/usr/local/bin/python3'
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 为当前补全选项在 vim 顶部增加预览窗口, 用来显示函数原型等信息
let g:ycm_add_preview_to_completeopt = 0
" 离开插入模式后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_insertion = 0
" 关闭 YCM 附带的语法检查
let g:ycm_show_diagnostics_ui = 0
" 设置错误标志
"let g:ycm_error_symbol = '>>'
" 设置警告标志
"let g:ycm_warning_symbol = '>*'
" 打开 location-list 来显示警告和错误的信息
nnoremap <C-k> :YcmDiags<CR>
" 是否开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"force recomile with syntastic
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" 设置YCM的语义触发器的关键字
let g:ycm_semantic_triggers = {'c' : ['->', '.'],'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s','re!\[.*\]\s'],'ocaml' : ['.', '#'],'cpp,objcpp' : ['->', '.', '::'],'perl' : ['->'],'php' : ['->', '::'],'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],'ruby' : ['.', '::'],'lua' : ['.', ':'],'erlang' : [':'],}
" 是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
" 补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
" 字符串中也开启补全"
let g:ycm_complete_in_strings = 1
 "补全关键字
let g:ycm_seed_identifiers_with_syntax=1
" 跳转到定义处
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 关闭补全列表
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
" <TAB>, <Down>, <C-n>
" <S-TAB>, <Up>, <C-p>
" 回车即选中当前项"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '<CR>'


""""""""""""""""""""""""""""""
" => auto-pairs
""""""""""""""""""""""""""""""
" 设置要自动配对的符号
"let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'} 
"" 添加要自动配对的符号<>
"let g:AutoPairs['<']='>' 
"" 设置要自动配对的符号, 默认为g:AutoPairs, 可以通过自动命令来对不同文件类型设置不同自动匹配对符号
"let b:AutoPairs = g:AutoParis 
"" 设置插件打开/关闭的快捷键, 默认为ALT+p
"let g:AutoPairsShortcutToggle = '<M-p>' 
"" 设置自动为文本添加圆括号的快捷键, 默认为ALT+e
"let g:AutoPairsShortcutFastWrap = '<M-e>' 
"" 设置调到下一层括号对的快捷键, 默认为ALT+n
"let g:AutoPairsShortcutJump = '<M-n>' 
"" 设置撤销飞行模式的快捷键, 默认为ALT+b
"let g:AutoPairsShortcutBackInsert = '<M-b>' 
"" 把BACKSPACE键映射为删除括号对和引号, 默认为1
"let g:AutoPairsMapBS = 1 
"" 把ctrl+h键映射为删除括号对和引号, 默认为1
"let g:AutoPairsMapCh = 1 
"" 把ENTER键映射为换行并缩进, 默认为1
"let g:AutoPairsMapCR = 1 
"" 当g:AutoPairsMapCR为1时, 且文本位于窗口底部时, 自动移到窗口中间
"let g:AutoPairsCenterLine = 1 
"" 把SPACE键映射为在括号两侧添加空格, 默认为1
"let g:AutoPairsMapSpace = 1 
"" 启用飞行模式, 默认为0
"let g:AutoPairsFlyMode = 0 
"" 启用跳出多行括号对, 默认为1, 为0则只能跳出同一行的括号
"let g:AutoPairsMultilineClose = 1 


"""""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""""
let g:ctrlp_map = '<leader>fp'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"" Quickly find and open a file in the current working directory
"" Quickly find and open a buffer
nnoremap <leader>fb :CtrlPBuffer<cr>
inoremap <leader>fb <ESC>:CtrlPBuffer<cr>
vnoremap <leader>fb <ESC>:CtrlPBuffer<cr>
"" Quickly find and open a recently opened file
nnoremap <leader>fu :CtrlPMRU<CR>
inoremap <leader>fu <ESC>:CtrlPMRU<CR>
vnoremap <leader>fu <ESC>:CtrlPMRU<CR>
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
""  快捷键
"" <leader> + fc  模糊搜索当前目录及其子目录下的所有文件
"" <leader> + fr  模糊搜索最近打开的文件(MRU)
"" <leader> + fb 模糊搜索 buffer
"" ctrl + j/k 进行上下选择
"" ctrl + x 在当前窗口水平分屏打开文件
"" ctrl + v 同上, 垂直分屏
"" ctrl + t 在tab中打开


"""""""""""""""""""""""""""""""
" => CTRL-P-Funky
"""""""""""""""""""""""""""""""
nnoremap <Leader>ff :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <leader>fw :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
" <leader>ff 进入当前文件的函数列表搜索
" Ctrl + p   搜索当前光标下单词对应的函数


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>o :BufExplorer<cr>


"""""""""""""""""""""""""""""""
"" => MRU plugin
"""""""""""""""""""""""""""""""
""et MRU_Max_Entries = 400
""ap <leader>f :MRU<CR>


"""""""""""""""""""""""""""""""
"" => YankStack
"""""""""""""""""""""""""""""""
""let g:yankstack_yank_keys = ['y', 'd']
""
""nmap <C-p> <Plug>yankstack_substitute_older_paste
""nmap <C-n> <Plug>yankstack_substitute_newer_paste


"""""""""""""""""""""""""""""""
"" => ZenCoding
"""""""""""""""""""""""""""""""
"" Enable all functions in all modes
"let g:user_zen_mode='a'


"""""""""""""""""""""""""""""""
"" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""
""ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
""snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>


"""""""""""""""""""""""""""""""
"" => Vim grep
"""""""""""""""""""""""""""""""
"let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
"set grepprg=/bin/grep\ -nH


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => vim-multiple-cursors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_use_default_mapping=0
"
"" Default mapping
"let g:multi_cursor_start_word_key      = '<C-s>'
"let g:multi_cursor_select_all_word_key = '<A-s>'
"let g:multi_cursor_start_key           = 'g<C-s>'
"let g:multi_cursor_select_all_key      = 'g<A-s>'
"let g:multi_cursor_next_key            = '<C-s>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => surround.vim config
"" Annotate strings with gettext 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""vmap Si S(i_<esc>f)
""au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:lightline = {
""      \ 'colorscheme': 'wombat',
""      \ 'active': {
""      \   'left': [ ['mode', 'paste'],
""      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
""      \   'right': [ [ 'lineinfo' ], ['percent'] ]
""      \ },
""      \ 'component': {
""      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
""      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
""      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
""      \ },
""      \ 'component_visible_condition': {
""      \   'readonly': '(&filetype!="help"&& &readonly)',
""      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
""      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
""      \ },
""      \ 'separator': { 'left': ' ', 'right': ' ' },
""      \ 'subseparator': { 'left': ' ', 'right': ' ' }
""      \ }
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Vimroom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:goyo_width=100
""let g:goyo_margin_top = 2
""let g:goyo_margin_bottom = 2
""nnoremap <silent> <leader>z :Goyo<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Ale (syntax checker and linter)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:ale_linters = {
""\   'javascript': ['jshint'],
""\   'python': ['flake8'],
""\   'go': ['go', 'golint', 'errcheck']
""\}
""
""nmap <silent> <leader>a <Plug>(ale_next_wrap)
""
""" Disabling highlighting
""let g:ale_set_highlights = 0
""
""" Only run linting when saving the file
""let g:ale_lint_on_text_changed = 'never'
""let g:ale_lint_on_enter = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Git gutter (Git diff)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:gitgutter_enabled=0
""nnoremap <silent> <leader>d :GitGutterToggle<cr>
