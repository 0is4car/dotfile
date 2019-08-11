call plug#begin()
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'


Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-system-copy'
"Plug 'easymotion/vim-easymotion'
"Plug 'lepture/vim-jinja'
"Plug 'mzlogin/vim-markdown-toc'
Plug 'suan/vim-instant-markdown', { 'for' : 'markdown' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:AirlineTheme = 'angr' 
"Plug 'python-mode/python-mode'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
", { 'on': 'TagbarToggle' }
"Plug 'davidhalter/jedi-vim', { 'for' : 'python' }
"Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ferrine/md-img-paste.vim', {'for' : 'markdown' }
Plug 'kshenoy/vim-signature'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for' : 'markdown' }
Plug 'justinmk/vim-sneak'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug '/usr/local/opt/fzf'
Plug 'Yggdroot/indentLine'
Plug 'udalov/kotlin-vim'


"Plug 'christoomey/vim-tmux-navigator'
"Plug 'wsdjeg/vim-chat'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
""""""""""""""""""""""""""""""""""""""""tagbar"
nmap <Leader>tb :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""Vundld""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set background=dark
nmap LB 0
nmap LE $

"let configuration valid instantly
autocmd BufWritePost $MYVIMRC edit|source $MYVIMRC

"colorscheme molokai
colorscheme gruvbox
"colorscheme zenburn
"colorscheme evening
"""""""""""""""""""""""""""""""""""""""""jedi"""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"  
let g:jedi#popup_on_dot = 0  
let g:jedi#auto_close_doc = 1
"""""""""""""""""""""""""""""""""""""""""jedi"""""""""""""""""""""""""""""""""""""""""
let g:jedi#completions_command = "<C-N>"
nmap <Leader>j 40<C-e>
nmap <Leader>k 40<C-y>

"noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR
set conceallevel=0
autocmd FileType json let g:indentLine_enabled=0
autocmd FileType wtf set syntax=sh
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>



let g:indentLine_enabled=0
"indentLine_enable will force conceallevel to be 2
set conceallevel=0
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l
nnoremap <f5> :NERDTreeToggle<CR>
autocmd FileType makrdown Toc 

"autocmd VimEnter * if (@% == '') | NERDTree | wincmd l | endif

set clipboard=unnamed
set nu
set noeb vb t_vb=
"set notermguicolors

set tabstop=4
set pastetoggle=<F2>
set softtabstop=4
set cursorline
syntax enable
syntax on
let mapleader=" "
filetype plugin indent on
let g:NERDTreeWinSize=20


""Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badcat'
let g:airline#extensions#tabline#show_buffers = 2
let g:airline#extensions#tabline#show_tabs = 1



vmap <Leader>y "+y
nmap <Leader>y "ay
nmap <Leader>p "ap
nmap <Leader>w <C-W>
nmap <Leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4


let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
