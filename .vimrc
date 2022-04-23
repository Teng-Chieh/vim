set nocompatible              " be iMproved, required
filetype on                  " required
set formatoptions-=cro


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'airblade/vim-gitgutter'
Plugin 'file:///tools/vim_plugin/vim-gitgutter/'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'file:///tools/vim_plugin/vim-fugitive/'
" Plugin 'vim-airline/vim-airline'
Plugin 'file:///tools/vim_plugin/vim-airline'
Plugin 'file:///tools/vim_plugin/vim-airline-themes'

Plugin 'file:///tools/vim_plugin/indentLine'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'

Plugin 'gryf/wombat256grf'


" plugin on GitHub repo
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"ifiletype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
":Pluginist       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
:" Put your non-Plugin stuff after this line


" http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
"filetype indent plugin on

" Enable syntax highlighting
syntax on
"


"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
set autowrite
" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" Not generate tmp file
set nobackup
set noswapfile

let mapleader=","
"------------------------------------------------------------
"der="," Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
"set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
" set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=1

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

"------------------------------------------------------------
"set font
set cursorline
"set cursorcolumn
set tabstop=4

" Color configuration
set t_Co=256
set bg=dark
" color evening  " Same as :colorscheme evening
" color koehler
" color mustang
" color simple-dark
color wombat256grf

"hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
"hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
"hi CursorLineNr cterm=NONE ctermfg=Green ctermbg=White
"hi CursorColumn cterm=bold ctermbg=LightGrey ctermfg=NONE
hi CursorLine cterm=none ctermbg=DarkYellow ctermfg=White

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
"----------------------------------------------------------
set foldenable
"Share clipboard
set clipboard+=unnamed
set tags=tags;




"----------------------------------------------------------
"Plugin set here
"----------------------------------------------------------
nmap <F8> :TlistToggle<CR><CR>
nmap <F9> :NERDTreeToggle<CR><CR>
nmap <f10> :SrcExplToggle<CR>

"delete empty line
nnoremap <F5> :g/^\s*$/d<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth = 25
set ut=100

let NERDTreeWinPos=1

"let g:NERDTreeUseSimpleIndicator = 1

"autocmd VimEnter * NERDTree
" autocmd VimEnter * Tlist
"autocmd VimEnter * SrcExpli

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 1

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file

let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" Show hidden file
let NERDTreeShowHidden=1
" set width
let NERDTreeWinSize=31
" Share NERDTree as terminal activated
let g:nerdtree_tabs_open_on_console_startup=1
"ignore file list
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" show bookmard

let NERDTreeShowBookmarks=1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_c = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

let g:gitgutter_max_signs = 100  " default value

autocmd BufWritePre *.py :%s/\s\+$//e




"---------------------------------------------------------------------
"Airline setting
"---------------------------------------------------------------------
" vim-airline
let g:airline_theme='cobalt2'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = '▶'
" let g:airline#extensions#tabline#left_alt_sep = '▶'


"---------------------------------------------------------------------
"indentLine setting
"---------------------------------------------------------------------

let g:indentLine_char_list = ['|', '¦', '¦', '.']
let g:indentLine_enabled = 1
" let g:indentLine_char = '¦'


"change dir to project root
" nmap <leader>. :cd ../../../../../<CR>
nmap <leader>- :vertical resize -5<CR>
nmap <leader>= :vertical resize +5<CR>
exec 'cd' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))

"---------------------------------------------------------------------
"Cscope setting
"---------------------------------------------------------------------
set cscopetag
set csto=1

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
   cs add $CSCOPE_DB
else
    cs add ../../../../../cscope.out
endif
set cscopeverbose

nmap zs :cs find s
nmap zg :cs find g
nmap zc :cs find c
nmap zt :cs find t
nmap ze :cs find e
nmap zf :cs find f
nmap zi :cs find i
nmap zd :cs find d

" copy (write) highlighted text to .vimbuffer
vmap <leader>c y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe<CR><CR>
" paste from buffer
" map <C-v> :r ~/.vimbuffer<CR>
nmap <leader>p :r ~/.vimbuffer<CR>

nmap <F2> :!~/script/gen_idx.sh<CR><CR>

let g:snipMate = { 'snippet_version' : 1 }

"for thinklinc ctag
map ff <C-]>
map fg <C-t>

function! Auto_gen_ctags_cscope(...)
    let is_user_directory = 0
    while is_user_directory == 0
        let cur_dir=getcwd()
        echo $HOME
        echo cur_dir

        if cur_dir == $HOME
            echo "end"
            let is_user_directory = 1
            break
        endif

        if isdirectory(".git")
            echo "get .git"
            !~/ctags.sh
            break
        endif

        cd ..
    endwhile
endfunction

map fc :call Auto_gen_ctags_cscope()<CR><CR><CR><CR><CR><CR>

"let is_user_directory = 0
"while is_user_directory == 0
"    let cur_dir=getcwd()
"    echo $HOME
"    echo cur_dir
"
"    if cur_dir == $HOME
"        echo "end"
"        let is_user_directory = 1
"    endif
"
"    if isdirectory(".git")
"        echo "get .git"
"        !~/ctags.sh
"        break
"    endif
"
"    cd ..
"endwhile

set termguicolors

"-------- map tn tp to :tabn :tabN
map tn :tabn<CR>
map tp :tabN<CR>

