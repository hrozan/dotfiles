" Neovim Configuration File
" Author: Higor Rozan

" Disable compatibility to old-time vi
set nocompatible            

" Enable terminal color 
set termguicolors

" Enable syntax highlighting
syntax on                   

" Speed up scrolling in Vim
set ttyfast

" Width for autoindents
set shiftwidth=4            

" Indent a new line the same amount as the line just typed
set autoindent              

" Enable mouse click
set mouse=a                 

" Start Plug
call plug#begin('~/.vim/plugged')

" Language Server Protocol configuration
Plug 'neovim/nvim-lspconfig'

" A collection of language packs
Plug 'sheerun/vim-polyglot'

" Asynchronous Lint Engine
Plug 'dense-analysis/ale'

" Nerdtree and Icons
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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

" Ale Integration with Lighline (Show error and warnigs)
Plug 'maximbaz/lightline-ale'

" Theme One Dark
Plug 'joshdick/onedark.vim'

" Emmet
Plug 'mattn/emmet-vim'

" EditorCofig
Plug 'mattn/emmet-vim'

" AutoPairs
Plug 'jiangmiao/auto-pairs'

" Go LSP
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Theme One Dark
colorscheme onedark

" Enable relative numbers
set number relativenumber

" Lightline: 
" - Change theme
let g:lightline = {'colorscheme': 'one'}

" - Register the components
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

" - Set color to the components:
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
" - Add the components to the lightline, for example to the right side:
let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }
" - Add icons
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

" Nerdtree Mappings: 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <A-1> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Go LSP Configs:
let g:ale_linters = {
  \ 'go': ['gopls'],
  \}

lua <<EOF
  lspconfig = require "lspconfig"
  lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }
  
  function goimports(timeout_ms)
    local context = { only = { "source.organizeImports" } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    -- See the implementation of the textDocument/codeAction callback
    -- (lua/vim/lsp/handler.lua) for how to do this properly.
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
    if not result or next(result) == nil then return end
    local actions = result[1].result
    if not actions then return end
    local action = actions[1]

    -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
    -- is a CodeAction, it can have either an edit, a command or both. Edits
    -- should be executed first.
    if action.edit or type(action.command) == "table" then
      if action.edit then
        vim.lsp.util.apply_workspace_edit(action.edit)
      end
      if type(action.command) == "table" then
        vim.lsp.buf.execute_command(action.command)
      end
    else
      vim.lsp.buf.execute_command(action)
    end
  end
EOF
autocmd BufWritePre *.go lua goimports(1000)
autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
