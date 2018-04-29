set nocompatible
filetype plugin indent on
set autoindent
set number
set relativenumber
syntax off
set wildmode=longest,list,full
set wildmenu
colorscheme default
set encoding=utf-8
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
" Tabs set to four spaces
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
map Y y$

nmap <C-h> :set hlsearch!<CR>

""" Remaps
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap t; :tablast<CR>

" Spell-check set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

" Split navigation
map <C-h> <C-w>h
let g:Ctrl_j = 'off'
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""" C/C++ specific
autocmd FileType c set colorcolumn=80
autocmd FileType cpp set colorcolumn=80

""" LATEX Specific
let g:tex_flavor='latex'
autocmd FileType tex nnoremap <leader>i a\textit{}<ESC>i
autocmd FileType tex nnoremap <leader>b a\textbf{}<ESC>i
autocmd FileType tex nnoremap <leader>t a\texttt{}<ESC>i
autocmd FileType tex nnoremap <leader>en a\begin{enumerate}<ESC>o\end{enumerate}<ESC>O\item 
autocmd FileType tex nnoremap <leader>i a\begin{itemize}<ESC>o\end{itemize}<ESC>O\item 

""" Go Specific

autocmd FileType go set colorcolumn=80
autocmd FileType go set noexpandtab
autocmd FileType go set softtabstop=0
autocmd FileType go set shiftwidth=8
