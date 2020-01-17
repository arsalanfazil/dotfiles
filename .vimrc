" Plug
so ~/.vim/plugins.vim

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

" NerdTree
map <C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = 'right' " NerdTree

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

" nerdCommenter ---------- "
" Single line comment
nmap <C-\> <Leader>ci
vmap <C-\> <Leader>ci
" Multi line comment
nmap <C-S-\> <Leader>cm
vmap <C-S-\> <Leader>cm
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting

" --------- Plugins Configuration -------
" CtrlP Settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\v[\/](\.(git|hg|svn|swp|ico))$'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0


" EditorConfig
let g:EditorConfig_exclude_patterns = ['scp://.*']

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc.vim plugin settings

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" coc extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-solargraph',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-python',
  \ 'coc-emmet',
  \ 'coc-elixir',
  \ 'coc-markdownlint',
  \ 'coc-prettier',
  \ 'coc-pairs',
  \ 'coc-import-cost',
  \ 'coc-docker',
  \ 'coc-sql',
  \ 'coc-styled-components',
  \ 'coc-marketplace'
  \ ]

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Autoload .vimrc file
augroup sourceVimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.vim/plugins.vim source ~/.vimrc
augroup END
