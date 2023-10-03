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
Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-astro', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', { 'do': 'yarn install --frozen-lockfile' }
Plug 'josa42/coc-docker', { 'do': 'yarn install --frozen-lockfile' }
Plug 'elixir-lsp/coc-elixir', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-emmet', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-eslint', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-html', { 'do': 'yarn install --frozen-lockfile' }
Plug 'yaegassy/coc-html-css-support', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-json', { 'do': 'yarn install --frozen-lockfile' }
Plug 'yaegassy/coc-nginx', { 'do': 'yarn install --frozen-lockfile' }
Plug 'josa42/coc-sh', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-snippets', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-solargraph', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tabnine', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yaml', { 'do': 'yarn install --frozen-lockfile' }




" call fuzzy finder he knows the secret file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

" programming's quotes on startup screen
Plug 'mhinz/vim-startify'

" colorscheme
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'

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
