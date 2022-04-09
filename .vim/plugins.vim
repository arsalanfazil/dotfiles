call plug#begin('~/.vim/bundle')

" make vim awesome
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'

" call fuzzy finder he knows the secret file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim's sidebar
" Plug 'scrooloose/nerdtree'
"
" I need help here
Plug 'tpope/vim-vinegar'

" i need motivation
Plug 'mhinz/vim-startify'

" one of the best
Plug 'kaicataldo/material.vim'

" always making mistakes
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'

" fancy beer bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" thats my family pack
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-bundler'
Plug 'junegunn/vim-emoji'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'

" snippets
"Plug 'tomtom/tlib_vim'
"Plug 'marcweber/vim-addon-mw-utils'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'

" .editorconfig
"Plug 'editorconfig/editorconfig-vim'


"Plug 'hail2u/vim-css3-syntax'
"Plug 'elixir-editors/vim-elixir'
"Plugin 'moll/vim-node'
"Plug 'othree/html5.vim'
"Plug 'StanAngeloff/php.vim'
"Plug 'phpactor/phpactor'

"Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'jparise/vim-graphql'
"Plug 'lifepillar/pgsql.vim'
"Plug 'elzr/vim-json'
"Plug 'sheerun/vim-polyglot'
"Plug 'chr4/nginx.vim'

" Programming Language Tools
"Plug 'prettier/vim-prettier'
"Plug 'sunaku/vim-ruby-minitest'



call plug#end()
