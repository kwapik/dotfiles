call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'bling/vim-airline'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/FuzzyFinder'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme nord

let mapleader=","
"
" Movement
map k gk
map j gj
map <up> gk
map <down> gj
set whichwrap=<,>,[,],b,s

set autoread
set encoding=utf-8
set nobackup
set noswapfile
set nowritebackup

" Tabs
nnoremap <silent> <c-n> :tabn<cr>
nnoremap <silent> <c-p> :tabp<cr>
inoremap <silent> <c-p> <Esc>:tabp<cr>
nnoremap <silent> <c-e> :tabnew<cr>
set splitright
set splitbelow
set tabpagemax=25

" Fugitive - GIT integration
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gg :Ggrep\<<c-r><c-w>\><cr>
nnoremap <leader>glo :Glog<cr>
nnoremap <leader>gll :Gllog<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>go :only<cr>
nnoremap <leader>gb :Gblame<cr>

let g:airline_powerline_fonts = 1
set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 12
