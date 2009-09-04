set t_Co=256
set autoindent tabstop=2 shiftwidth=2  " Default 2 spaces indentation, soft tabs
set nocompatible          " We're running Vim, not Vi!
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
set hlsearch
set incsearch

" Windows settings
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
" autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
" autoindent with real tabs
" autocmd FileType cf set ai sts=0 noet
augroup END

"Personal Settings
colorscheme railscasts
set guifont=consolas:h9
set nowrap

"Personal key bindings
map <C-o> :bprevious<CR>
map <C-i> :bnext<CR>

command Flow cd C:\Development\curtin-flow\flow-share\trunk | NERDTree dashlets

map t :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1

map <Leader>f :FuzzyFinderFile!<CR>

set pastetoggle=<F5>
nmap <Leader>sh :source ~/.vim/vimsh/vimsh.vim<CR>
nmap <Leader>r :!touch tmp/restart.txt<CR><CR>
nmap <Leader>a :e #<CR>
map <Leader>u :!ant<CR><CR>
" Abbreviate :hide edit to :HE, maintaining file completion
command -nargs=1 -complete=file HE hide edit <args>

"OSX Copy/Paste
command Copy .w !pbcopy
command Paste r !pbpaste

"Project plugin
:let g:proj_flags="imstvcg"

"XML plugin
let xml_use_xhtml = 1

"Windows settings
"behave mswin
set lines=40 columns=110

"Autocompletion
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \	if &omnifunc == "" |
                \		setlocal omnifunc=syntaxcomplete#Complete |
                \	endif
endif

