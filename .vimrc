"==========================================
" ProjectLink: https://github.com/kirka1206/dotfiles/
" Author:  kirka1206
" Version: 00/007
" Email: kirillspa gmail com
" Donation: :)
" ReadMe: README.md
" Last_modify: 2022-07-07
" Desc: simple vim config
"==========================================

" Let the Russian ABC works in command mode (no need to switch to EN layout)
" мапинг можно вынести в отдельный файл и загружать командой source ~/.vim/bindingsRU.vim из этого файла
" работает только в окне редактора, но не в в режиме ввода команд (:).
map ЯЯ ZZ
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

" Кодировка текста по умолчанию
set termencoding=utf-8 

" Настройка меню. В процессе разработки
set wildmenu
set wcm=<Tab>

" ********** NerdTree Start
" Настройки NerdTree (переключение между панелями - Ctrl-w w ,если чо :)
" git и vim ниже надо запустить что бы nerdtree работал, или скачать runme.sh из моей репы
" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
" vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
"" Ctrl+ww cycle though all windows
"" Ctrl+wh takes you left a window
"" Ctrl+wj takes you down a window
"" Ctrl+wk takes you up a window
"" Ctrl+wl takes you right a window
"" Ctrl+wp между панелями
"" Ctrl+w= окна одинакового размера (вертикальные, после открытия-закрытия файлового меню)
"" gt = next Tab gT = previous Tab
""" там ещё "?" нажать можно для справки :)

" Запуск NerdTree при старте vim
autocmd vimenter * NERDTree | wincmd p
" автоматически закроет nerdtree если закрыть файл (выход из вима)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" показывать dot файлы
let NERDTreeShowHidden = 1
" включение выключение:
"" окно поиска
map <C-f> :NERDTreeFind<CR>
"" окно фалового менеджера
map <C-n> :NERDTreeToggle<CR>
" закрыть файловый менеджер при открытии файла
let NERDTreeQuitOnOpen = 1
" быстрый переход в find из редактирования - "\v"
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" ********** NerdTree END

set relativenumber
set scrolloff=9

set tabstop=4
set shiftwidth=4
" To insert space characters whenever the tab key is pressed, set the 'expandtab' option:
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Такое себе... странное...
" set smarttab

set paste
set wrap
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
set list
set listchars=tab:→\

" включаем мышь. если не будет копировать текст из вима куданить, или будет глючить, то попробовать set mouse=a (не работает в iterm2)
set mouse=r

syntax on

" вкусовщина. проверить спецсимволы можно и cat -vte file
" set listchars=tab:»\ ,trail:·,eol:¶

" Настроим бэкап - наше всё
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

" Nice and useful cursor. Красивое...
" тема тоже на любителя
" colorscheme torte
set background=dark
set cursorline
set cursorcolumn
hi cursorline ctermbg=darkgrey
hi cursorcolumn ctermbg=darkgrey

" немного полезного ремапинга
nnoremap H ^
nnoremap L $
nnoremap ; :
"" select all
map <Leader>sa ggVG"
"" выключить подсветку после поиска
noremap <silent><leader>/ :nohls<C
"" undo по shift u
nnoremap U <C-r>
"" когда я тормоз
cmap w!! w !sudo tee >/dev/null %
