call plug#begin()
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'


"Plug '/usr/local/opt/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-system-copy'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
"Plug 'easymotion/vim-easymotion'
"Plug 'lepture/vim-jinja'
"Plug 'mzlogin/vim-markdown-toc'
"Plug 'suan/vim-instant-markdown', { 'for' : 'markdown' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:AirlineTheme = 'angr' 
"Plug 'python-mode/python-mode'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
", { 'on': 'TagbarToggle' }
"Plug 'davidhalter/jedi-vim', { 'for' : 'python' }
"Plug 'Lokaltog/vim-powerline'
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'ferrine/md-img-paste.vim', {'for' : 'markdown' }
Plug 'kshenoy/vim-signature' " mark
Plug 'flazz/vim-colorschemes'
"Plug 'godlygeek/tabular' " format text to table style
Plug 'plasticboy/vim-markdown', { 'for' : 'markdown' }
Plug 'justinmk/vim-sneak'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'Yggdroot/indentLine'
Plug 'udalov/kotlin-vim'
"Plug 'ctrlpvim/ctrlp.vim'


"Plug 'christoomey/vim-tmux-navigator'
"Plug 'wsdjeg/vim-chat'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
let mapleader=';'
""""""""""""""""""""""""""""""""""""""""tagbar"
nmap <Leader>tb :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""Vundld""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set background=dark

"let configuration valid instantly
autocmd BufWritePost $MYVIMRC edit|source $MYVIMRC

"colorscheme molokai
"colorscheme gruvbox
colorscheme zenburn
"colorscheme evening
"""""""""""""""""""""""""""""""""""""""""jedi"""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"  
let g:jedi#popup_on_dot = 0  
let g:jedi#auto_close_doc = 1
let g:jedi#completions_command = "<C-N>"
"""""""""""""""""""""""""""""""""""""""""END jedi"""""""""""""""""""""""""""""""""""""""""
nmap <Leader>j 40<C-e>
nmap <Leader>k 40<C-y>

"noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR
set conceallevel=0
autocmd FileType json let g:indentLine_enabled=0
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:indentLine_enabled=0
"indentLine_enable will force conceallevel to be 2
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
filetype plugin indent on
let g:NERDTreeWinSize=20


""Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme='badcat'
let g:airline#extensions#tabline#show_buffers = 2
let g:airline#extensions#tabline#show_tabs = 1



vmap <Leader>y "+y
nmap <Leader>y "ay
nmap <Leader>p "ap
nmap <Leader>w <C-W>
nmap <Leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1

" let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'


" Coc
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <Leader>ac  <Plug>(coc-codeaction)

" coc-explorer // nerdtree alternative
:nnoremap <Leader>e :CocCommand explorer<CR>
" coc-list
:nnoremap <Leader>l :CocList<CR>

""""""""""Vista

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'

""""""""""Clap
nmap <C-p> :Clap<CR>
