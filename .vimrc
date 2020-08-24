" Plug
so ~/.vim/plugins.vim

" for deoplete (completion plugin)
let g:deoplete#enable_at_startup = 1

set nocompatible
" ; The leader
let mapleader=";"


" Colors
syntax enable
set background=dark
let base16colorspace=256
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

"colorscheme base16-bright
"colorscheme base16-irblack


if (has("termguicolors"))
  set termguicolors
endif

"set colorcolumn=80 " some community guideline no code furthan 80 column
"highlight ColorColumn ctermbg=200

" UI
set number " show line number
set signcolumn=yes
set noshowcmd " show command in bottom bar
set noshowmode
set cursorline " highlight current line
set lazyredraw
set showmatch " highlight matching parenthesis
set splitbelow " Split vertically default below
set splitright " Split horizentally default right
set noerrorbells visualbell t_vb= " No Bell Sound please
set noruler
set wildmenu " visual autocomplete for command menu
set laststatus=0 " showing statusbar
set nowrap
set cmdheight=2
set updatetime=300
set shortmess+=c

" always show signcolumns
set signcolumn=yes

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
set scrolloff=0
set sidescrolloff=5

augroup myfiletypes
	autocmd!
	autocmd FileType js,ruby,html,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END


" Mapping
" Off highlight Search
nmap <Leader><space> :nohlsearch<cr>
" Edit .vimrc file
nmap <Leader>evv :edit $MYVIMRC<cr>
nmap <Leader>ev :edit ~/.vimrc<cr>
" Edit plugin.vim file
nmap <Leader>eb :edit ~/.vim/plugins.vim<cr>
nmap <Leader>es :edit ~/.config/nvim/coc-settings.json<cr>

" split movement mapping
nmap <C-k> <c-w><c-k>
nmap <C-j> <c-w><c-j>
nmap <C-l> <c-w><c-l>
nmap <C-h> <c-w><c-h>


" space open/closed folds
nnoremap <space> za

" Tabs Switching
inoremap <left> :bprevious<cr>
inoremap <right> :bnext<cr>
nnoremap <left> :bprevious<cr>
nnoremap <right> :bnext<cr>
inoremap <C-d> :bd<cr>
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

" --------- Plugins Configuration -------
" CtrlP Settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\v[\/](\.(git|hg|svn|swp|ico))$'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" EditorConfig
let g:EditorConfig_exclude_patterns = ['scp://.*']

" NerdTree
map <C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = 'right' " NerdTree

" toggle commenting of lines with command + /
nmap <C-\> :Commentary<CR>
vmap <C-\> :Commentary<CR>

" Treat mdx as md
autocmd BufNewFile,BufRead *.mdx set syntax=markdown

" Prettier
" Run prettier asynchronously before saving
let g:prettier#autoformat=0
" Use babylon parser with prettier
let g:prettier#config#parser="babylon"
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync
nnoremap = :Prettier<CR>


" Use JSON in .babelrc files
autocmd BufRead,BufNewFile .babelrc setfiletype json

" vim-ruby
let g:ruby_indent_assignment_style = 'variable'

" jsx settings
let g:polyglot_disabled = ['jsx']

" ale linters
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'ruby': ['standardrb']}
let g:ale_linters = { 'ruby': ['standardrb', 'rubocop'], 'javascript': ['eslint'] }
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_fix_on_save = 0
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_highlights = 0

"Autoload .vimrc file
augroup sourceVimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
