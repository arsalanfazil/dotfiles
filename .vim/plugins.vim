call plug#begin('~/.vim/bundle')

" make vim awesome
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tomtom/tcomment_vim'

" netrw: for file exploring
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'PhilRunninger/nerdtree-visual-selection'

" autocompletion plugin
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" autocomplete snippet
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" call fuzzy finder he knows the secret file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" programming's quotes on startup screen
Plug 'mhinz/vim-startify'

" colorscheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'

" fancy beer bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" thats my family pack
Plug 'sheerun/vim-polyglot'
"Plug 'pangloss/vim-javascript'
"Plug 'vim-ruby/vim-ruby'
"Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'elixir-editors/vim-elixir'
"Plug 'lifepillar/pgsql.vim'
Plug 'tpope/vim-rails'
Plug 'mattreduce/vim-mix'
Plug 'tpope/vim-dispatch' " For Dispatching Test/Rake Commands in command mode
Plug 'tpope/vim-bundler' " Run Bundler in vim
Plug 'preservim/vim-markdown'
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'jparise/vim-graphql'
"Plug 'chr4/nginx.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-fugitive' " Git in Vim
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }

" catching errors
Plug 'dense-analysis/ale'


" Vim Plugins as a writing tool
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'tpope/vim-abolish' " Fancy abbreviation replacements
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-lexical' " Better spellcheck mappings
Plug 'reedes/vim-litecorrect' " Better autocorrections
Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plug 'reedes/vim-wordy' " Weasel words and passive voice
Plug 'preservim/vim-colors-pencil'


call plug#end()
