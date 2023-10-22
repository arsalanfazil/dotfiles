" Plug
so ~/.vim/plugins.vim

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

" enable true color

set background=dark
colorscheme material
let g:material_theme_style = 'darker' 
let g:material_terminal_italics = 1
let g:airline_theme='one'

let ruby_space_errors = 1
let c_space_errors = 1


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
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>s :split<CR>

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
nnoremap <Leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>


" nerdtree
nnoremap <C-b> :NERDTreeToggle<CR>

" toggle commenting of lines with command + /
nmap <C-\> gcc
vmap <C-\> gcc


" =================== Plugin Settings


" NERDTREE Settings
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1


au FileType eruby let b:AutoPairs = AutoPairsDefine({'<%' : '%>'})
au FileType eelixir let b:AutoPairs = AutoPairsDefine({'<%' : '%>'})
au FileType liquid let b:AutoPairs = AutoPairsDefine({'{%' : '%}'})
autocmd FileType scss setl iskeyword+=@-@

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


" ale linters
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let g:ruby_indent_assignment_style = 'variable'
let b:ale_linter_aliases = {'jsx': ['javascript']}
let g:ale_fixers = {'javascript': ['prettier', 'standard'], 'ruby': ['standardrb'] }
let g:ale_linters = { 'ruby': ['standardrb'], 'javascript': ['standard'], 'jsx': ['standard']}
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



" Coc Extension Settings

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

noremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


"Autoload .vimrc file
augroup sourceVimrc
  autocmd!
  autocmd BufWritePost .vimrc source %
  autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
