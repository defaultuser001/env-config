set number
set mouse=a  "Control del mouse, habilita el uso
set numberwidth=1 "Ancho de los números de linea
set clipboard=unnamedplus "Habilita el clipboard para todo el sistema
"set clipboard=unnamed "windows
syntax enable "habilita colores de sintaxis
set showcmd "habilita que se muestre los comandos que se esten pulsando
set ruler "habilita la posicion (7,34) 
set encoding=utf-8 "Enconding del archivo
set showmatch "Cuando el cursor este sobre un parentesis, se colorea el de cierre
"set rnu "Lineas de posicion relativas
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

let g:coc_global_extensions = [
\ 'coc-ultisnips',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-pyright',
\ 'coc-stylelintplus',
\ 'coc-clangd',
\ 'coc-cssmodules',
\ 'coc-eslint',
\ 'coc-pairs',
\ 'coc-sh',
\ 'coc-prettier',
\ 'coc-highlight'
\ ]

call plug#begin('~/.vim/plugins')

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"Lineas de identacion
Plug 'Yggdroot/indentLine' 

"Comentarios
Plug 'tpope/vim-commentary'

"Nightfly theme
Plug 'bluz71/vim-nightfly-guicolors'

"Lineas de identacion
Plug 'Yggdroot/indentLine' 

"Nightfly theme
Plug 'bluz71/vim-nightfly-guicolors'

"JS & JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"EasyGrep (Search and Replace)
Plug 'vim-scripts/EasyGrep' 

"Pug 
Plug 'digitaltoad/vim-pug' 

"Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"C
Plug 'vim-scripts/c.vim'

"COC
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() } }

call plug#end()

"Aplicando tema
"colorscheme gruvbox
colorscheme nightfly
"let g:gruvbox_contrast_dark = "hard"

"Tecla lider para ejecutar macros
let mapleader=" " "Tecla lider para ejecutar macros

"Shortcuts
noremap / :Commentary
nmap <Leader>s :w<CR>
nmap <Leader>nt :NERDTreeFind<CR> 
nmap <Leader>w <Plug>(coc-format):w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>ww :wq<CR>
nmap <Leader>wq <Plug>(coc-format):wq<CR>
nmap <Leader>qq :qa!<CR>
nmap <Leader>p <Plug>(coc-format)
nmap <Leader>l :tabn<CR>
nmap <Leader>h :tabp<CR>
nmap <Leader>n :tabnew<CR>

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
"inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-space> coc#_select_confirm()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let NERDTreeQuitOnOpen=1 "Cierra nerdtree cuando se abre un archivo
"NERDTree
let NERDTreeShowHidden=1 "Archivos ocultos

"IndentLines
let g:indentLine_char = '|'
let g:indentLine_enabled = 1
let g:indentLine_setColors = 0 "Para el tema nightfly, comentar en caso de problemas 


