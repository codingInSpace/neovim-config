set nocompatible              " be iMproved, required
set hidden
filetype off                  " required

call plug#begin('~/.config/autoload/plug.vim')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'szw/vim-ctrlspace'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'NLKNguyen/papercolor-theme'
Plug 'pangloss/vim-javascript'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'scrooloose/nerdcommenter'

call plug#end()

filetype plugin indent on    " required

" remaps
let mapleader = "\<Space>"
nnoremap , :
vnoremap <C-c> "+y
" nnoremap <C-v> "+p
noremap <C-k> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <C-j> ddp
nnoremap <silent> <esc> :noh<cr><esc>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>
nnoremap <F3>  :NERDTreeToggle<CR>
nnoremap <F4> :NERDTree<CR>
nnoremap <Leader>e g_
nnoremap <Leader>s 0
nnoremap <Leader>q :q<CR>
nnoremap <leader>w :w<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>pb :CtrlPBuffer<CR>
nmap <leader>pm :CtrlPMixed<CR>
nmap <leader>jj :BuffergatorMruCyclePrev<CR>
nmap <leader>kk :BuffergatorMruCycleNext<CR>
nmap <Tab> :BuffergatorMruCycleNext<CR>
nmap <leader><Tab> :BuffergatorMruCyclePrev<CR>
nmap <leader>o :BuffergatorOpen<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"""""neosnippet configuration 
imap <C-s>     <Plug>(neosnippet_expand_or_jump)
smap <C-s>     <Plug>(neosnippet_expand_or_jump)
xmap <C-s>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set pastetoggle=<F2>

" autostart NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto start deoplete 
let g:deoplete#enable_at_startup = 1

" populate g:airline_symbols dictionary with powerline symbols
let g:airline_powerline_fonts = 1

" enable buffer display when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Color theme
set background=dark
colorscheme PaperColor	
let g:airline_theme='PaperColor'

" Quality of life settings
set nowrap		" don't wrap lines
syntax on		" syntax highlight on by default
set number		" enable line numbers by default
set autoindent    	" always set autoindenting on
set copyindent    	" copy the previous indentation on autoindenting
set shiftwidth=2	" auto indent space
set tabstop=2		" tab space
set smarttab		" insert tabs on start of line according to shiftwidth
set shiftround    	" use multiple of shiftwidth when indenting with '<' and '>'
set ignorecase	" case insensitive search
set smartcase		" case insensitive search unless one uppercase char is used
set incsearch     	" show search matches as you type
set history=1000        " remember more commands and search history
set undolevels=1000     " use many levels of undo
set title               " change the terminal's title

" backups are unnecessary with git
set nobackup
set noswapfile

