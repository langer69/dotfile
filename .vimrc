set number
set hlsearch
set bg=light
syntax on

inoremap jj <Esc> 

" set clipboard=unnamed
set ts=4
set expandtab
set autoindent

highlight YcmErrorLine ctermfg=black ctermbg=white







call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif

Plug 'vim-airline/vim-airline-themes'

Plug 'yggdroot/indentline'

Plug 'tpope/vim-commentary'

Plug 'aperezdc/vim-template'
let g:templates_directory = '~/.vim/templates'

Plug 'valloric/youcompleteme'
" #####YouCompleteMe Configure   
let g:ycm_show_diagnostics_ui=0
" 关闭语法诊断
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/.ycm_extra_conf.py'  
" 自动补全配置  
set completeopt=longest,menu
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)  
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"离开插入模式后自动关闭预览窗口  
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"回车即选中当前项  
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"    
"上下左右键的行为 会显示其他信息  
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"  
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"  
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"  
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"  

"youcompleteme  默认tab  s-tab 和自动补全冲突  
let g:ycm_key_list_select_completion=['<c-n>']  
let g:ycm_key_list_select_completion = ['<Down>']  
let g:ycm_key_list_previous_completion=['<c-p>']  
let g:ycm_key_list_previous_completion = ['<Up>']  
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示  

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎  
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项  
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项  
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "  force recomile with syntastic  
"nnoremap <leader>lo :lopen<CR> "open locationlist  
"nnoremap <leader>lc :lclose<CR>    "close locationlist  
"inoremap <leader><leader> <C-x><C-o>  
"在注释输入中也能补全  
let g:ycm_complete_in_comments = 1  
"在字符串输入中也能补全  
let g:ycm_complete_in_strings = 1  
"注释和字符串中的文字也会被收入补全  
let g:ycm_collect_identifiers_from_comments_and_strings = 0  
let g:clang_user_options='|| exit 0'  
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> "跳转到定义处  
" #####YouCompleteMe Configure   
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme'
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   “按,jd 会跳转到定义
" let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
" let g:ycm_confirm_extra_conf=0   " 打开vim时不再询问是否加载ycm_extra_conf.py配置
" inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
" set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228) 
" let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件

call plug#end()
