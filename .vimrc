" Highlighting group 
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0

" Enable folding
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set mouse=a

" Connect clipboard
set clipboard=unnamedplus
" Line numbering
set nu
" Line numbering with same color as the Ale error column 
highlight LineNr ctermfg=white ctermbg=darkgrey

" Enable folding with the spacebar
nnoremap <space> za

" Language syntax rules
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Vim aliases or shortcuts

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Debug cmds
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<CR>

" Buffer resizing with arrow keys
nnoremap <Up> <C-w>5-
nnoremap <Down> <C-w>5+
nnoremap <Left> <C-w>5<
nnoremap <Right> <C-w>5>

" airline ale notification
let g:airline#extensions#ale#enabled = 1


" Syntax Highlight Python
let python_highlight_all=1
syntax on

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'chriskempson/base16-vim'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'Valloric/YouCompleteMe'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Plugins settings

