call plug#begin('~/.vim/bundle')

Plug 'ap/vim-buftabline'
Plug 'wesQ3/vim-windowswap'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'

" snippets
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" filesystem exploration
Plug 'scrooloose/nerdtree'

" copy code in rtf format
Plug 'dharanasoft/rtf-highlight'

" .editorconfig
Plug 'editorconfig/editorconfig-vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Every time you start vim, it gives you an inspiration quote.
Plug 'mhinz/vim-startify'

" Language Pack
Plug 'hail2u/vim-css3-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-editors/vim-elixir'
"Plugin 'moll/vim-node'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor'
Plug 'plasticboy/vim-markdown'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'lifepillar/pgsql.vim'
Plug 'elzr/vim-json'
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'

" Programming Language Tools
Plug 'prettier/vim-prettier'
Plug 'mattn/webapi-vim'
Plug 'jxnblk/vim-mdx-js'
Plug 'sunaku/vim-ruby-minitest'
Plug 'tpope/vim-rails'

" Linting Support
Plug 'dense-analysis/ale'

" Colorschemes
"Plug 'itchyny/lightline.vim'
"Plug 'hzchirs/vim-material'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'reewr/vim-monokai-phoenix'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'kaicataldo/material.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
