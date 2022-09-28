map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
set wildmenu
set wcm=<Tab>

" проверка орфографии:
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F7> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F8> <Esc> z=<CR>i
map <F8> z=<CR>
" настройка строки статуса
set laststatus=2   " всегда показывать строку статуса
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
"" подключаем переводчик по F9
"function! TranslateWord()
"   let s:dict    = "$HOME/dict/mueller-base.sh"
"   let s:phrase  = expand("<cword>")
"   let s:tmpfile = tempname()
"   silent execute "!" . s:dict . " " . s:phrase . " > " . s:tmpfile
"   execute "botright sp " . s:tmpfile
"endfunction
"map <F9> :call TranslateWord()<CR>

" call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
" call plug#end()
map <C-n> :NERDTreeToggle<CR>
set relativenumber

" To control the number of space characters that will be inserted when the tab key is pressed, set the 'tabstop' option. For example, to insert 4 spaces for a tab, use:
set tabstop=4
" To change the number of space characters inserted for indentation, use the 'shiftwidth' option:
set shiftwidth=4

" To insert space characters whenever the tab key is pressed, set the 'expandtab' option:

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
" set smarttab
set background=dark
set paste
set wrap
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
set list
set listchars=tab:→\

syntax on
set scrolloff=9

" set listchars=tab:»\ ,trail:·,eol:¶

set backup
set backupdir=~/.vim/backup//
set writebackup
set backupcopy=yes
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set nocompatible

" Enable a nice big viminfo file
set viminfo='1000,f1,:1000,/1000

" Make backspace delete lots of things
set backspace=indent,eol,start

" Nice and useful cursor
set cursorline
set cursorcolumn
hi cursorline ctermbg=darkgrey
hi cursorcolumn ctermbg=darkgrey
