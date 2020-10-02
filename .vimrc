set number
set mouse=a  "Control del mouse, habilita el uso
set numberwidth=1 "Ancho de los números de linea
set clipboard=unnamed "Habilita el clipboard para todo el sistema
syntax enable "habilita colores de sintaxis
set showcmd "habilita que se muestre los comandos que se esten pulsando
set ruler "habilita la posicion (7,34) 
set encoding=utf-8 "Enconding del archivo
set showmatch "Cuando el cursor este sobre un parentesis, se colorea el de cierre
"set relative number "Lineas de posicion relativas
"set laststatus=2 "barra inferior visible
"set noshowmode "no muestra el modo actual p.e --insertar--
"set paste
set cursorline "linea debajo del cursor
set termguicolors "Algo de los colores



function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).

  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  "set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

call UseSpaces() "or :call UseTabs()

call plug#begin('~/.vim/plugins')

"Plug 'morhetz/gruvbox' "Tema

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine' 
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'ruby',
    \ 'html',
    \ 'swift'] }
Plug 'ycm-core/YouCompleteMe'
Plug 'bluz71/vim-nightfly-guicolors'


call plug#end()

"Aplicando tema
"colorscheme gruvbox
colorscheme nightfly
"let g:gruvbox_contrast_dark = "hard"

"Tecla lider para ejecutar macros
let mapleader=" " "Tecla lider para ejecutar macros

"Shortcuts
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR> 
nmap <Leader>w <Plug>(Prettier):w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>ww :wq<CR>
nmap <Leader>wq <Plug>(Prettier):wq<CR>
nmap <Leader>qq :qa!<CR>
nmap <Leader>p <Plug>(Prettier)
let NERDTreeQuitOnOpen=1 "Cierra nerdtree cuando se abre un archivo


"IndentLines
let g:indentLine_char = '|'
let g:indentLine_enabled = 1
let g:indentLine_setColors = 0 "Para el tema nightfly, comentar en caso de problemas 


"Prettier
" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'auto'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = ''

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')


"You complete me (autocomplete plugin)
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
