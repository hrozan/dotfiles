
" Start Plug
call plug#begin('~/.vim/plugged')

" Nerdtree and Icons
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Enable editor config
Plug 'editorconfig/editorconfig-vim'

" Surround
Plug 'tpope/vim-surround'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Lightline 
Plug 'itchyny/lightline.vim'

" Theme One Dark
Plug 'joshdick/onedark.vim'

" 
call plug#end()

" ---------------------
" Basic Configurations:
" ---------------------

" Enable syntax highlighting
set termguicolors
syntax on                   

" Theme One Dark
colorscheme onedark

" Enable relative numbers
set number relativenumber

" Speed up scrolling in Vim
set ttyfast

" Disable compatibility to old-time vi
set nocompatible            

" Width for autoindents
set shiftwidth=4            

" Indent a new line the same amount as the line just typed
set autoindent              

" Enable mouse click
set mouse=a                 

" Lightline: change theme
let g:lightline = {'colorscheme': 'one'}

" Nerdtree: 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <A-1> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
