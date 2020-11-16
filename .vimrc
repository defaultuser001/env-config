set number
set mouse=a  "Control del mouse, habilita el uso
set numberwidth=1 "Ancho de los números de linea
set clipboard=unnamedplus "Habilita el clipboard para todo el sistema
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

call plug#begin('~/.vim/plugins')

"Arbol del proyecto
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"Lineas de identacion
Plug 'Yggdroot/indentLine' 

"Texto Sugerido
Plug 'ycm-core/YouCompleteMe'

"Nightfly theme
Plug 'bluz71/vim-nightfly-guicolors'

"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'branch': 'release/1.x'
"  \ }


" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

"JS & JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"EasyGrep (Search and Replace)
Plug 'vim-scripts/EasyGrep' 

"Fugitive (git plugin)
Plug 'tpope/vim-fugitive'

"Emmet for vim
Plug 'mattn/emmet-vim'
call plug#end()


"Aplicando tema
"colorscheme gruvbox
colorscheme nightfly
"let g:gruvbox_contrast_dark = "hard"

"Tecla lider para ejecutar macros
let mapleader=" " "Tecla lider para ejecutar macros

"Shortcuts
"nmap <Leader>s :w<CR>
nmap <Leader>nt :NERDTreeFind<CR> 
"nmap <Leader>w <Plug>(Prettier):w<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"nmap <Leader>ww :wq<CR>
"nmap <Leader>wq <Plug>(Prettier):wq<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>qq :qa!<CR>
nmap <Leader>l :tabn<CR>
nmap <Leader>h :tabp<CR>
nmap <Leader>n :tabnew<CR>

let NERDTreeQuitOnOpen=1 "Cierra nerdtree cuando se abre un archivo

"NERDTree
let NERDTreeShowHidden=1 "Archivos ocultos

"IndentLines
let g:indentLine_char = '|'
let g:indentLine_enabled = 1
let g:indentLine_setColors = 0 "Para el tema nightfly, comentar en caso de problemas 

"React Snippets
" Trigger configuration (Optional)
" let g:UltiSnipsExpandTrigger="<C-l>"

"Snippets

""Skeleton
"""Trigger 	Content
"""rrcc→ 	React Redux Class Component
"""rcc→ 	React Class Component
"""rfc→ 	React Functional Component
"""rsc→ 	React Styled Component
"""rsci→ 	React Styled Component Interpolation


""Lifecycle
"""Trigger 	Content
"""cwm→ 	componentWillMount() {...}
"""cdm→ 	componentDidMount() {...}
"""cwrp→ 	componentWillReceiveProps(nextProps) {...}
"""scup→ 	shouldComponentUpdate(nextProps, nextState) {...}
"""cwup→ 	componentWillUpdate(nextProps, nextState) {...}
"""cdup→ 	componentDidUpdate(prevProps, prevState) {...}
"""cwu→ 	componentWillUnmount() {...}
"""ren→ 	render() {...}

""PropTypes
"""Trigger 	Content
"""pt→ 	propTypes {...}
"""pt.a→ 	PropTypes.array
"""pt.b→ 	PropTypes.bool
"""pt.f→ 	PropTypes.func
"""pt.n→ 	PropTypes.number
"""pt.o→ 	PropTypes.object
"""pt.s→ 	PropTypes.string
"""pt.no→ 	PropTypes.node
"""pt.e→ 	PropTypes.element
"""pt.io→ 	PropTypes.instanceOf
"""pt.one→ 	PropTypes.oneOf
"""pt.onet→ 	PropTypes.oneOfType (Union)
"""pt.ao→ 	PropTypes.arrayOf (Instances)
"""pt.oo→ 	PropTypes.objectOf
"""pt.sh→ 	PropTypes.shape
"""ir→ 	isRequired

""Others
"""Trigger 	Content
"""props→ 	this.props
"""state→ 	this.state
"""set→ 	this.setState(...)
"""dp→ 	defaultProps {...}
"""cn→ 	className
"""ref→ 	ref
"""pp→ 	${props => props}

""Hooks
"""Trigger 	Content
"""us.s→ 	const [state, setState] = useState('');
"""us.e→ 	useEffect(() => { });
"""us.er→ 	useEffect(() => { return () => {}; });
"""us.c→ 	const context = useContext(ctx);
"""us.r→ 	const [store, dispatch] = useReducer(storeReducer, initialState);
"""us.cb→ 	useCallback(() => { }, []);
"""us.m→ 	const memo = useMemo(() => { }, []);

"Prettier
"let g:prettier#quickfix_enabled = 1
"let g:prettier#quickfix_auto_focus = 1

"You complete me (autocomplete plugin)
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
