call plug#begin('~/.vim/bundle')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-buftabline'

" Smart Screen
Plug 'mhinz/vim-startify'

" Default Settings
"Plug 'tpope/vim-sensible'

" Language Pack
Plug 'sheerun/vim-polyglot'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'elixir-editors/vim-elixir'
"Plugin 'moll/vim-node'
"Plug 'pangloss/vim-javascript'

Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor'

" Nice JSON Syntax highlighter
"Plug 'elzr/vim-json'

" Vim utilities/helpers plugin
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-endwise'
"Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mattn/emmet-vim'
"Plug 'Valloric/MatchTagAlways'
"Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-ragtag'

" autoread edited file outside vim
"Plug 'djoshea/vim-autoread'

" filesystem exploration
Plug 'scrooloose/nerdtree'

" copy code in rtf format
Plug 'dharanasoft/rtf-highlight'

" .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Specific for JavaScript Development
"Plug 'mxw/vim-jsx'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Colorschemes
"Plug 'itchyny/lightline.vim'
"Plug 'hzchirs/vim-material'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'reewr/vim-monokai-phoenix'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'kaicataldo/material.vim'

"Syntax Checking
"Plug 'w0rp/ale'

call plug#end()
