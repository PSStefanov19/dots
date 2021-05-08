call plug#begin('~/.vim/plugged')

Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

syntax on
filetype plugin on

set omnifunc=syntaxcomplete#Complete
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set rnu
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set colorcolumn=100
set laststatus=2
set noshowmode
set encoding=UTF-8
set pumheight=5
set pumwidth=10
set t_Co=256
set signcolumn=yes
set guifont=Fira\ Code
set termguicolors
set cursorline
set lazyredraw
set completeopt-=preview

"Set color scheme to onehalfdark 
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

"Autostart NERDtree
autocmd VimEnter * NERDTree | wincmd p

"Turn on rainbow brackets
let g:rainbow_active = 1

"Turn on airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline_theme = "tokyonight"

"C++ code completion 
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")

"Python code completion 
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

"IndentLine
let g:indentLine_char="|"

"Set cursor to different sizes in each mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"===Keybinds===
"Leader keybind
let mapleader = " "

"Switching windows 
nnoremap <silent> <A-Up> :wincmd k<CR>
nnoremap <silent> <A-Down> :wincmd j<CR>
nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

"Switching buffers
nnoremap <silent> <C-Left> :bp<CR>
nnoremap <silent> <C-Right> :bn<CR>

"Resizing windows
nnoremap <silent> <leader>, :vertical resize +5<CR>
nnoremap <silent> <leader>. :vertical resize -5<CR>

"Nerd tree keybinds
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Open omniComplete
inoremap <C-z> <C-x><C-o><CR>

"GoTo YCM function
nnoremap <leader>jd :YcmCompleter GoTo<CR>
