" Neovim Configuration File
" Author: Higor Rozan

" Load Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'myusuf3/numbers.vim'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'townk/vim-autoclose'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-emoji'

call plug#end()

" Enable True Colors
set termguicolors

" Set Color Theme to One Dark
colo onedark

" Statusbar Config
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = { 'colorscheme': 'one', 'component_function': { 'gitbranch': 'FugitiveHead'},}

" NerdTree Configuration
" Remap toogle to Ctrl + R
map <A-1> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>
let NERDTreeQuitOnOpen=1

" Open a NERDTree automatically when vim starts up if no files
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Emoji
set completefunc=emoji#complete

