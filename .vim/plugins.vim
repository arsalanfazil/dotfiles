call plug#begin('~/.vim/bundle')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-buftabline'

" Smart Screen
Plug 'mhinz/vim-startify'

" Language Pack
"Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'
"Plugin 'elixir-editors/vim-elixir'
"Plugin 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'honza/vim-snippets'

Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor'

" Vim utilities/helpers plugin
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'

" filesystem exploration
Plug 'scrooloose/nerdtree'

" copy code in rtf format
Plug 'dharanasoft/rtf-highlight'

" .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Colorschemes
"Plug 'itchyny/lightline.vim'
"Plug 'hzchirs/vim-material'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'reewr/vim-monokai-phoenix'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'kaicataldo/material.vim'

call plug#end()
