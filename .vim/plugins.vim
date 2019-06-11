call plug#begin('~/.vim/bundle')

" Default Settings
Plug 'tpope/vim-sensible'

" Language Pack
Plug 'sheerun/vim-polyglot'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'elixir-editors/vim-elixir'
"Plugin 'moll/vim-node'
"Plug 'pangloss/vim-javascript'

" Nice JSON Syntax highlighter
Plug 'elzr/vim-json'

" Vim utilities/helpers plugin
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-ragtag'

" autoread edited file outside vim
Plug 'djoshea/vim-autoread'

" filesystem exploration
Plug 'scrooloose/nerdtree'

" copy code in rtf format
Plug 'dharanasoft/rtf-highlight'

" .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Specific for JavaScript Development
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Colorschemes
Plug 'itchyny/lightline.vim'
"Plug 'hzchirs/vim-material'
Plug 'kaicataldo/material.vim'

" Buffer to BufferTab
Plug 'ap/vim-buftabline'

" copy/cut/paste
Plug 'svermeulen/vim-cutlass'

" For Tab Completion
Plug 'ervandew/supertab'

" For AutoCompletion
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

let g:deoplete#enable_at_startup = 1

"Syntax Checking
Plug 'w0rp/ale'

call plug#end()
