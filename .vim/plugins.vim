call plug#begin('~/.vim/bundle')

" make vim awesome
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
"Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tomtom/tcomment_vim'

" netrw: for file exploring
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'PhilRunninger/nerdtree-visual-selection'

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Coc Extensions
" Install efm language server first: https://github.com/mattn/efm-langserver


" call fuzzy finder he knows the secret file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

" programming's quotes on startup screen
Plug 'mhinz/vim-startify'

" colorscheme
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }


" fancy beer bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" thats my family pack
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mattreduce/vim-mix'
Plug 'tpope/vim-dispatch' " For Dispatching Test/Rake Commands in command mode
Plug 'tpope/vim-bundler' " Run Bundler in vim
Plug 'preservim/vim-markdown'
Plug 'ekalinin/Dockerfile.vim'

" catching errors
Plug 'dense-analysis/ale'

Plug 'SirVer/ultisnips'


call plug#end()
