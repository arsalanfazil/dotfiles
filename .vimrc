" Plug
so ~/.vim/plugins.vim

set nocompatible
" ; The leader
let mapleader=";"

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Colors
syntax enable
colorscheme dracula
let g:material_terminal_italics = 1
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

if (has("termguicolors"))
  set termguicolors
endif

"set colorcolumn=80 " some community guideline no code furthan 80 column
"highlight ColorColumn ctermbg=237

" UI
set number " show line number
set showcmd " show command in bottom bar
set cursorline " highlight current line
set lazyredraw
set showmatch " highlight matching parenthesis
set splitbelow " Split vertically default below
set splitright " Split horizentally default right
set noerrorbells visualbell t_vb= " No Bell Sound please
set ruler
set wildmenu " visual autocomplete for command menu
set laststatus=2 " showing statusbar
set nowrap

" Characters
set encoding=utf-8 " output encoding that is shown in the terminal.
set spelllang=en_us
set fileencoding=utf-8 " output encoding of the file that is written
set autoread " auto-reloading a file in vim

" Misc
set backspace=indent,eol,start
set hidden " hides buffer instead of closing them.
set history=999 " remember commands of command modes
set undolevels=999 " go back more and more

" Search/Regex
set gdefault " global default search
set magic " magic search
set incsearch
set hlsearch " highlight search result
set ignorecase " ignore case when searching
set smartcase " ignore case if all lowercase

" Tabs
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs became spaces
set shiftwidth=2
set smarttab
set autoindent
set complete-=1

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" No swap!
set noswapfile
set nowb

" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max
set foldmethod=indent " fold based on indent level

set report=0
set scrolloff=1
set sidescrolloff=5

augroup myfiletypes
	autocmd!
	autocmd FileType js,ruby,html,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

" Mapping
" Off highlight Search
nmap <Leader><space> :nohlsearch<cr>
" Edit .vimrc file
nmap <Leader>ev :edit $MYVIMRC<cr>
" Edit plugin.vim file
nmap <Leader>eb :edit ~/.vim/plugins.vim<cr>

" Buffer Switching
map <Leader>p :bp<cr>
map <Leader>n :bn<cr>
map <Leader>d :bd<cr>

" split movement mapping
nmap <c-k> <c-w><c-k>
nmap <c-j> <c-w><c-j>
nmap <c-l> <c-w><c-l>
nmap <c-h> <c-w><c-h>

" NerdTree
map <C-B> :NERDTreeToggle<CR>

" space open/closed folds
nnoremap <space> za

" Movement
inoremap <Up> <NOP>
inoremap <down> <NOP>
noremap <Up> <NOP>
noremap <down> <NOP>

" Tabs Switching
inoremap <left> :tabprevious<cr>
inoremap <right> :tabNext<cr>
nnoremap <left> :tabprevious<cr>
nnoremap <right> :tabNext<cr>

" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" nerdCommenter ---------- "
" Single line comment
map <C-\> <Leader>ci
" Multi line comment
map <C-S-\> <Leader>cm

" autocomplete with css
set omnifunc=syntaxcomplete#Complete

" --------- Plugins Configuration -------
" CtrlP Settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\v[\/](\.(git|hg|svn|swp|ico))$'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Emmet
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
  \}

" NerdCommenter
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDTreeWinPos = 'right' " NerdTree

" EditorConfig
let g:EditorConfig_exclude_patterns = ['scp://.*']

" cutlass
nnoremap x d
xnoremap x d
nnoremap xx dd
nnoremap X D

" ale syntax checker
let g:ale_linters_explicit = 1 " only linters which i want
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never' " only run when file svae
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'jsx': ['stylelint', 'eslint'],
\ 'ruby': ['rubocop'],
\ 'html': ['prettier'],
\ 'css': ['stylelint', 'prettier'],
\ 'scss': ['stylelint', 'prettier'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'css': ['prettier'],
\}

" don't lint production js and css files
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5
let g:ale_fix_on_save = 1 " auto fix on save


" Prettier Configuration
let g:prettier#config#bracket_spacing="true"
let g:prettier#config#jsx_bracket_same_line="false"
let g:prettier#config#parser="babylon"
let g:prettier#config#single_quote="true"
let g:prettier#config#trailing_comma="none"
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync

" Use JSON in .babelrc files
autocmd BufRead,BufNewFile .babelrc setfiletype json

" Vim JSX
let g:jsx_ext_required = 0

" Autoload .vimrc file
augroup sourceVimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
