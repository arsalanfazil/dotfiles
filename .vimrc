" Plug
so ~/.vim/plugins.vim

" ; The leader
let mapleader=";"

" ready set and go
set nocompatible
set colorcolumn=81
set relativenumber
set number
set showcmd
set showmatch " highlight matching parenthesis
set splitbelow " Split vertically default below
set splitright " Split horizentally default right
set noerrorbells visualbell t_vb= " No Bell Sound please
set ruler
set laststatus=2 " showing statusbar
set scrolloff=10
set encoding=utf-8 " output encoding that is shown in the terminal.
set spelllang=en_us
set fileencoding=utf-8 " output encoding of the file that is written
set autoread " auto-reloading a file in vim
set cursorline " highlight current line

set backspace=indent,eol,start
set hidden " hides buffer instead of closing them.
set history=50 " remember commands of command modes
set undolevels=999 " go back more and more
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux

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
set smartindent
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

set secure " prevent dangerous command

"set wildmenu " visual autocomplete for command menu
"set signcolumn=yes
"set noshowmode
"set lazyredraw
"set cmdheight=2
"set updatetime=300
"set shortmess+=c

"set report=0

"augroup myfiletypes
"	autocmd!
"	autocmd FileType js,ruby,html,eruby,yaml,markdown set ai sw=2 sts=2 et
"augroup END

" Colors
syntax enable
colorscheme material
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
let g:airline_theme = 'material'

let ruby_space_errors = 1
let c_space_errors = 1

" enable spell checking on markdown
autocmd BufRead,BufNewFile *.md setlocal spell

" Mapping
" Off highlight Search
nnoremap <Leader><space> :nohlsearch<cr>

vnoremap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>

" Edit .vimrc file
nnoremap <Leader>evv :edit $MYVIMRC<cr>
nnoremap <Leader>ev :edit ~/.vimrc<cr>

" Edit plugin.vim file
nnoremap <Leader>eb :edit ~/.vim/plugins.vim<cr>

" split movement mapping
nnoremap <C-k> <c-w><c-k>
nnoremap <C-j> <c-w><c-j>
nnoremap <C-l> <c-w><c-l>
nnoremap <C-h> <c-w><c-h>

" space open/closed folds
nnoremap <space> za

" Tabs Switching
inoremap <left> :bprevious<cr>
inoremap <right> :bnext<cr>
nnoremap <left> :bprevious<cr>
nnoremap <right> :bnext<cr>
nnoremap <C-d> :bd<cr>

" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" fuzzy finding map
nnoremap <C-p> :Files<CR>

" --------- Plugins Configuration -------
" CtrlP Settings
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\v[\/](\.(git|hg|svn|swp|ico))$'
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0

" limelight
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!

" CloseTag
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }

" NerdTree
map <C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = 'right' " NerdTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" toggle commenting of lines with command + /
nmap <C-\> :Commentary<CR>
vmap <C-\> :Commentary<CR>


" EditorConfig
"let g:EditorConfig_exclude_patterns = ['scp://.*']


" Prettier
" Run prettier asynchronously before saving
"let g:prettier#autoformat=0
" Use babylon parser with prettier
"let g:prettier#config#parser="babylon"
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync
"nnoremap = :Prettier<CR>


" Use JSON in .babelrc files
"autocmd BufRead,BufNewFile .babelrc setfiletype json

" vim-ruby
"let g:ruby_indent_assignment_style = 'variable'

" jsx settings
"let g:polyglot_disabled = ['jsx']

" ale linters
let g:ale_fixers = {'javascript': ['standard'], 'ruby': ['standardrb']}
let g:ale_linters = { 'ruby': ['standardrb'], 'javascript': ['standard'] }
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_highlights = 0
" Airline + Ale
let g:airline#extensions#ale#enabled = 1

"Autoload .vimrc file
augroup sourceVimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
