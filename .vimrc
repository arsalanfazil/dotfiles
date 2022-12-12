" Plug
so ~/.vim/plugins.vim
let g:deoplete#enable_at_startup = 1

" ; The leader
let mapleader=";"

" ready set and go
set nocompatible
"set colorcolumn=80
set relativenumber
set number
set numberwidth=5
set showcmd
set showmatch " highlight matching parenthesis
set splitbelow " Split vertically default below
set splitright " Split horizentally default right
set noerrorbells visualbell t_vb= " No Bell Sound please
"set ruler
set shell=/bin/bash
set laststatus=2 " showing statusbar
set scrolloff=10
set encoding=utf-8 " output encoding that is shown in the terminal.
set spelllang=en_us
set fileencoding=utf-8 " output encoding of the file that is written
set autoread " auto-reloading a file in vim
set autowrite " Automatically :write before running commands
set cursorline " highlight current line
set backspace=indent,eol,start
set hidden " hides buffer instead of closing them.
set history=50 " remember commands of command modes
set undolevels=999 " go back more and more
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux
set wildmode=list:longest,list:full

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
set shiftround

" Backups
" set backup
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set backupskip=/tmp/*,/private/tmp/*
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set writebackup
set nobackup
set nowritebackup

" No swap!
set noswapfile
set nowb

" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max
set foldmethod=indent " fold based on indent level

set secure " prevent dangerous command

" Colors
syntax enable

"colorscheme material
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'darker'
" let g:airline_theme = 'material'

" enable true color
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme onedark
set background=dark
let g:airline_theme='onedark'

let ruby_space_errors = 1
let c_space_errors = 1



" au BufNewFile,BufRead *php set filetype=html
" au BufNewFile,BufRead *ejs set filetype=html
" au BufNewFile,BufRead *html.erb set filetype=html
" au BufNewFile,BufRead *blade.php set filetype=html
" au BufNewFile,BufRead *js.erb set filetype=javascript


"==================  Mapping

" oops commands
"command WQ wq                       "meant wq
"command Wq wq                       "meant wq
"command W w                         "meant w
"command Q q                         "meant q
"command Vsplit vsplit               "meant vsplit
"command VSplit vsplit               "meant vsplit
"command Split split                 "meant split

" copy/paste mapping
vmap <C-c> "+y
vmap <C-x> "+x
nnoremap <C-v> :set paste<CR>"*p:set nopaste<CR>

" Off highlight Search
nnoremap <Leader><space> :nohlsearch<cr>

" Edit .vimrc file
nnoremap <Leader>ev :edit ~/.vimrc<cr>

" Edit plugin.vim file
nnoremap <Leader>eb :edit ~/.vim/plugins.vim<cr>

" split movement mapping
nnoremap <C-k> <c-w><c-k>
nnoremap <C-j> <c-w><c-j>
nnoremap <C-l> <c-w><c-l>
nnoremap <C-h> <c-w><c-h>

" split it
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>- :split<CR>

" space open/closed folds
nnoremap <Leader>z za

" Tabs Switching
inoremap <left> :bprevious<cr>
inoremap <right> :bnext<cr>
nnoremap <left> :bprevious<cr>
nnoremap <right> :bnext<cr>
nnoremap <C-w> :bd<cr>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" fuzzy finding map
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Files
" nnoremap <C-p> :Files<CR>
" nnoremap <Leader>gf :GFiles<CR>

" nerdtree
nnoremap <C-b> :NERDTreeToggle<CR>

" toggle commenting of lines with command + /
nmap <C-/> gcc
vmap <C-/> gcc

" =================== Plugin Settings

" NERDTREE Settings
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

" Coc Settings
autocmd FileType scss setl iskeyword+=@-@
set updatetime=300
set shortmess+=c

au FileType eruby let b:AutoPairs = AutoPairsDefine({'<%' : '%>'})
au FileType liquid let b:AutoPairs = AutoPairsDefine({'{%' : '%}'})

" CloseTag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.html.erb,*.jsx,*js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,erb,js,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_enable_react_fragment = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ 'javascript.js': 'jsxRegion',
  \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }

" matchtagalways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'js' : 1,
    \ 'jsx' : 1,
    \ 'erb' : 1,
    \}

" Prettier Config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_enabled = 0
" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.svelte,*.yaml,*.html PrettierAsync

" ale linters
let g:ruby_indent_assignment_style = 'variable'
let g:ale_fixers = {'javascript': ['standard'], 'ruby': ['standardrb']}
let g:ale_linters = { 'ruby': ['standardrb'], 'javascript': ['standard'] }
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
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

" ========================== Vim Configuration for writing/editing in markdown files

" enable spell checking on markdown
autocmd BufRead,BufNewFile *.md setlocal spell

au FileType markdown set mouse=a
au FileType markdown colorscheme pencil
au FileType markdown set background=light

augroup pencil
   autocmd!
   autocmd filetype markdown,mkd call pencil#init()
       \ | call lexical#init()
       \ | call litecorrect#init()
       \ | setl spell spl=en_us fdl=4 noru nonu nornu
       \ | setl fdo+=search
 augroup END

" Vim-Pencil Config
let g:pencil#wrapModeDefault = 'soft'
let g:pencil#textwidth = 74
let g:pencil#joinspaces = 0
let g:pencil#cursorwrap = 1
let g:pencil#conceallevel = 3
let g:pencil#concealcursor = 'c'
let g:pencil#softDetectSample = 20
let g:pencil#softDetectThreshold = 130

au FileType markdown let g:pencil_higher_contrast_ui = 0

" Goyo Config
au Filetype markdown Goyo 72
au BufRead,BufNewFile *.txt set filetype=markdown
let g:vim_markdown_folding_disabled=1

map <F9> :Goyo<CR>

" set thesaurus+=/home/dino/.vim/thesaurus.txt

" vim-lexical
let g:lexical#spell_key = '<leader>s'
let g:lexical#spelllang = ['en_us']
let g:SuperTabDefaultCompletionType = "<c-n>"

" wordy config
noremap <silent> <F8> :<C-u>NextWordy<cr>
xnoremap <silent> <F8> :<C-u>NextWordy<cr>
inoremap <silent> <F8> <C-o>:NextWordy<cr>
let g:wordy_spell_dir = '/home/arsalan/.wordy'

function! s:goyo_enter()
  set linebreak
  set spell spelllang=en_us
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set title
  call deoplete#disable()
endfunction

function! s:goyo_leave()
  set nolinebreak
  set nospell
  set showmode
  set showcmd
  set notitle
  call deoplete#enable()
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"Autoload .vimrc file
augroup sourceVimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
