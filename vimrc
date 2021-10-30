" Vim Plug {{{
call plug#begin('~/.vim/plugged')
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" Plug 'shawncplus/phpcomplete.vim'
Plug 'gcmt/taboo.vim'
" Plug 'tomtom/tlib_vim'
" Plug 'amiorin/vim-fasd'
" Plug 'https://gitlab.com/lstwn/broot.vim'
" Plug '907th/vim-auto-save'
" Plug 'dstein64/vim-menu'
" Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'chrismccord/bclose.vim'
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'vim-scripts/taglist.vim'
Plug 'shawncplus/phpcomplete.vim'
" Plug 'rayburgemeestre/phpfolding.vim'
Plug 'majutsushi/tagbar'
" Plug 'aperezdc/vim-template'
" Plug 'mattn/emmet-vim'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-eunuch'
" Plug 'ap/vim-css-color'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" Plug 'dsawardekar/wordpress.vim'
" Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'
" Plug 'sjl/badwolf'
Plug 'lokaltog/vim-distinguished'
" Plug 'gcmt/taboo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'will133/vim-dirdiff'
" Plug 'junegunn/fzf', { 'do':'./install --bin' }
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
" Plug 'mcchrish/nnn.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'jacobsimpson/nvim-example-python-plugin'
" Plug 'jremmen/vim-ripgrep'
" Plug 'pangloss/Vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'
" Plug 'junegunn/fzf.vim'
" Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
" Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
" Plug 'wellle/targets.vim'
" Plug 'sheerun/vim-polyglot'
" Plug 'kana/vim-submode'
" Plug 'camspiers/animate.vim'
" Plug 'szw/vim-ctrlspace'
Plug 'vim-airline/vim-airline'
" Plug 'mg979/vim-xtabline'
" Plug 'djoshea/vim-autoread'
" Plug '~/projs/sampleplugin'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'benmills/vimux'
" Plug 'low-ghost/vimax'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'sidorares/node-vim-debugger'
" Plug 'tmux-plugins/vim-tmux'
Plug 'joonty/vdebug'
" Plug 'vim-vdebug/vdebug'
" Plug 'neoclide/jsonc.vim'
" Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'xolox/vim-session'
" Plug 'xolox/vim-misc'
" Plug 'powerline/powerline'
" Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
" if has('nvim')
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" else
" Plug 'Shougo/denite.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" endif
" Plug 'tpope/vim-obsession'
" Plug 'reedes/vim-one'
" Plug 'fholgado/minibufexpl.vim'
" Plug 'file://'.expand('~/.config/nvim/custom/plugins/fmenu') 
" Plug 'file://'.expand('~/.nvim/plugged/custom/sampleplugin') 
" Plug 'file://'.expand('~/.nvim/plugged/custom/sampleplugin') 
call plug#end()
" }}}
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

syntax enable           " enable syntax processing
colorscheme distinguished
" UI Layout {{{
set number
set relativenumber
set showcmd
set nocursorline
set wildmenu
set wildmode=list:longest,full
set wrap
set wildcharm=<TAB>
set lazyredraw
set showmatch
set vb t_vb=     " no visual bell & flash

source $VIMRUNTIME/menu.vim
" source /data/data/com.termux/files/home/dotfiles/nvim/nerdtree-symlink.vim
" }}}
" NERDTree {{{
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
" let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
" }}}"
" Searching {{{
set path+=**
" set suffixesadd+=.js
" set path+=$PWD/node_modules
" set path+=node_modules;~
" set path=.,src,node_nodules
" set suffixesadd=.js,.jsx"
" set wildignore+=**/node_modules/**
" set wildignore+=**/dist/**
set wildignore+=**/.git/**
set ignorecase
set smartcase
set incsearch
set hlsearch
" }}}

" Spaces & Tabs {{{
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set noswapfile

" autocmd VimEnter * StartProjects
au BufEnter,BufRead *conf* setf dosini
au BufEnter,BufRead *hjson* setf dosini
autocmd BufEnter,BufRead * :lcd%:p:h
" :autocmd BufWritePost $MYVIMRC :mks!

" Give more space for displaying messages.
set cmdheight=2

" set shortmess=a
" set shortmess+=O
set shortmess-=S

set encoding=utf-8

" Always show statusline
set laststatus=2
set statusline=%F
set statusline+=%=
set statusline+=%{getcwd()}

set clipboard=unnamed
" }}}

" Spaces & Tabs {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent

set diffopt+=iwhite
set diffexpr=""
" }}}

" Folding {{{
nnoremap <TAB> za
" nnoremap <enter> za
set foldcolumn=0
if has("folding")
  " set foldenable
  " set foldmethod=syntax
  " set foldlevelstart=99
  set foldnestmax=9
  set foldtext=FoldText()
  function! FoldText()
    let l:lpadding = &fdc
    redir => l:signs
    execute 'silent sign place buffer='.bufnr('%')
    redir End
    let l:lpadding += l:signs =~ 'id=' ? 2 : 0

    if exists("+relativenumber")
      if (&number)
        let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
      elseif (&relativenumber)
        let l:lpadding += max([&numberwidth, strlen(v:foldstart - line('w0')), strlen(line('w$') - v:foldstart), strlen(v:foldstart)]) + 1
      endif
    else
      if (&number)
        let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
      endif
    endif

    " expand tabs
    let l:start = substitute(getline(v:foldstart), '\t', repeat(' ', &tabstop), 'g')
    let l:end = substitute(substitute(getline(v:foldend), '\t', repeat(' ', &tabstop), 'g'), '^\s*', '', 'g')

    let l:info = ' (' . (v:foldend - v:foldstart) . ')'
    let l:infolen = strlen(substitute(l:info, '.', 'x', 'g'))
    let l:width = winwidth(0) - l:lpadding - l:infolen

    let l:separator = ' … '
    let l:separatorlen = strlen(substitute(l:separator, '.', 'x', 'g'))
    let l:start = strpart(l:start , 0, l:width - strlen(substitute(l:end, '.', 'x', 'g')) - l:separatorlen)
    let l:text = l:start . ' … ' . l:end

    return l:text . repeat(' ', l:width - strlen(substitute(l:text, ".", "x", "g"))) . l:info
  endfunction
endif
" }}}

set omnifunc=syntaxcomplete#Complete

" Drupal {{{
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" }}}

" Leader Shortcuts {{{
let mapleader=","
" }}}
"
" AutoSurround {{
" inoremap ( ()<Left>
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap " ""<Left>
" }}}
"
" Misc {{{
set hidden
" set mouse=a
" }}}
set hidden
" follow symlinked file
function! FollowSymlink()
  let current_file = expand('%:p')
  " check if file type is a symlink
  if getftype(current_file) == 'link'
    " if it is a symlink resolve to the actual file path
    "   and open the actual file
    let actual_file = resolve(current_file)
    silent! execute 'file ' . actual_file
  end
endfunction

" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction
" netrw: follow symlink and set working directory
" autocmd CursorMoved silent *
"   " short circuit for non-netrw files
"   \ if &filetype == 'netrw' |
"   \   call FollowSymlink() |
"   \   call SetProjectRoot() |
"   \ endif
"
"
"   " The VimL/VimScript code is included in this sample plugin to demonstrate the
" two different approaches but it is not required you use VimL. Feel free to
" delete this code and proceed without it.

" echo 'FMenu VimL is installed!'
"
" A message will appear in the message line when you're in a submode
" and stay there until the mode has existed.
" let g:submode_always_show_submode = 1
" let submode_timeoutlenlen=5000

" call submode#enter_with('flock', 'n', '', '<F5>', '<F5>')
" call submode#map('window', 'n', '', key, '<C-w>' . key)

" call submode#enter_with('numlock', 'n', '', '<F10>', '<F10>')
" call submode#map('numlock', 'n', '', '0', '<F10>')

" Go through every number
" for key in ['1','2','3','4','5','6','7','8','9']
" call submode#enter_with('mlock', 'n', '', ',' . key, ',' . key)
"   call submode#map('mlock', '', 'n', '1', '2')
" endfor
" Go through every number
" for key in ['2','3','4','5','6','7','8','9']
" call submode#enter_with('tablock', 't', '', '<F' . key . '>', '<F' . key . '>')
" call submode#map('tablock', 't', '', key, '<F' . key . '>')
" endfor

" call submode#leave_with('numlock', 'n', '', '<cr>')

nnoremap <A-<> 10<c-w><
inoremap <A-<> <esc>10<c-w><
nnoremap <A->> 10<c-w>>
inoremap <A->> <esc>10<c-w>>

" Console log from insert mode; Puts focus inside parentheses
imap cll console.log()<Esc><S-f>(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

:map <C-cp> ciw<C-r>0<ESC>

nnoremap <C-D> Odebugger<esc>:w<CR>:!node debug node_modules/nodeunit/bin/nodeunit -t dev<CR>dd:w<CR>
" nnoremap <leader>@ :emenu File.Save<cr>
" nnoremap <leader>20 :call EMenu("File.")<cr>
" nnoremap <leader>20 :call FMenu(2)<cr>
" nnoremap <leader>5 :call F51Save()<cr>
" nnoremap <leader>5 :call FMenu(5)<cr>
" nnoremap <leader>4 :call FMenu(4)<cr>
" nnoremap 20<cr> :call EMenu("File.")<cr>
" nnoremap <leader>51 :emenu File.Save<cr>
" nnoremap 21<cr> :emenu File.Save<cr>

" nnoremap <leader>22 :emenu File.Close<cr>
" nnoremap <leader>23 :emenu File.Exit<cr>

" nnoremap <leader>2 :NERDTreeToggle<cr>
" nnoremap <leader>2<cr> :NERDTreeToggle<cr>
" nnoremap <leader>22 :NERDTreeFind<cr>
" nnoremap 22 :NERDTreeFind<cr>
" nnoremap <leader>222 :TagbarOpenAutoClose<cr>
" nnoremap <leader>222<cr> :TagbarOpenAutoClose<cr>

" nnoremap 1<cr> 5<c-w>+
" nnoremap 11<cr> :on<cr>
" nnoremap 111<cr> :sp<cr>

"nnoremap 1<cr> 5<c-w>+
"nnoremap 11<cr> :on<cr>
"nnoremap 111<cr> :sp<cr>

"nnoremap <leader>10 <esc>5<c-w>+
"nnoremap <leader>10,10 <esc>:on<cr>
"nnoremap <leader>10,10,10 <esc>:sp<cr>

" nnoremap <leader>20 :NERDTreeToggle<cr>
" nnoremap <leader>20,20 :NERDTreeFind<cr>
" nnoremap <leader>20,20,20 :TagbarOpenAutoClose<cr>

" inoremap <leader>20 <esc>:NERDTreeToggle<cr>
" inoremap <leader>20,20 <esc>:NERDTreeFind<cr>
" inoremap <leader>20,20,20 <esc>:TagbarOpenAutoClose<cr>

" nnoremap <leader>30 :Files!<cr>
" nnoremap <leader>30,30 :Buffers!<cr>
" nnoremap <leader>30,30,30 :History!<cr>

" inoremap <leader>30 <esc>:Files!<cr>
" inoremap <leader>30,30 <esc>:Buffers!<cr>
" inoremap <leader>30,30,30 <esc>:History!<cr>

" nnoremap <leader>40 :Ack!<Space>
" nnoremap <leader>40,40 <c-]>
" nnoremap <leader>40,40,40 gf

" inoremap <leader>40 <esc>:Rg!<cr>
" nnoremap <leader>40,40 <esc><c-]>
" inoremap <leader>40,40,40 <esc>gf<cr>

" nnoremap <leader>50 :call F51Save()<cr>
" nnoremap <leader>50,50 :call F52Close()<cr>
" nnoremap <leader>50,50,50 :call F53Exit()<cr>

" inoremap <leader>50 <esc>:call F51Save()<cr>
" inoremap <leader>50,50 <esc>:call F52Close()<cr>
" inoremap <leader>50,50,50 <esc>:call F53Exit()<cr>

nnoremap <leader>v :source $MYVIMRC<CR>

nnoremap <leader>90 :source ~/dotfiles/Session.vim<cr> :NERDTree ~/dotfiles/Session.vim<cr> :NERDTreeToggle<cr>
" nnoremap <leader>90,90 :source ~/projs/php/drupal9-headless/docroot/Session.vim<cr> :NERDTree ~/projs/php/drupal9-headless/docroot/Session.vim<cr> :NERDTreeToggle<cr>
" nnoremap <leader>90,90 :source ~/projs/php/drupal9-headless/docroot/Session.vim<cr>

" nnoremap 22<cr> :NERDTreeFind<cr>
" nnoremap 222<cr> :TagbarOpenAutoClose<cr>

" noremap 3<cr> :Files!<cr>
" nnoremap 33<cr> :Buffers!<cr>
" nnoremap 333<cr> :Rg!<cr>

" nnoremap 2<cr> :NERDTreeToggle<cr>
" nnoremap 20<cr> :call FKey(2)<cr>
" nnoremap 21<cr> :NERDTreeToggle<cr>
" nnoremap 21<cr> :NERDTreeToggle<cr>

" nnoremap 222<cr> :TagbarOpenAutoClose<cr>

" nnoremap 51<cr> :call F51Save()<cr>
" nnoremap 55<cr> :call F52Close()<cr>
" nnoremap 555<cr> :call F53Exit()<cr>
" nmap <leader>g gcc
set timeoutlen=700

" nnoremap <leader>1 :call FKey(1)<cr>
" nnoremap <leader>2 :call FKey(2)<cr>
" nnoremap <leader>3 :call FKey(3)<cr>
" nnoremap <leader>5 :call FKey(5)<cr>
" nnoremap <leader>7 :call FKey(7)<cr>
" nnoremap <leader>9 :call FKey(9)<cr>

" nnoremap <F1> :call FKey(1)<cr>
" inoremap <F1> <esc>:call FKey(1)<cr>
" nnoremap <F2> :call FKey(2)<cr>
" inoremap <F2> <esc>:call FKey(2)<cr>
" nnoremap <F3> :call FKey(3)<cr>
" inoremap <F3> <esc>:call FKey(3)<cr>
" nnoremap <F5> :call FKey(5)<cr>
" inoremap <F5> <esc>:call FKey(5)<cr>
" nnoremap <F7> :call FKey(7)<cr>
" inoremap <F7> <esc>:call FKey(7)<cr>
" nnoremap <F9> :call FKey(9)<cr>
" inoremap <F9> <esc>:call FKey(9)<cr>

" nnoremap <leader>0 :call FKey(0)<cr>
" nnoremap <leader>1 :call FKey(1)<cr>

" nnoremap <leader>0 :call FKey(0)<cr>
" nnoremap <leader>1 :SwitchContext<cr>
" nnoremap <leader>2 :Explorer<cr>
" nnoremap <leader>22 :GotoInExplorer<cr>
" nnoremap <leader>3 :OpenFile<cr>
" nnoremap <leader>33 :BufferList<cr>
" nnoremap <leader>333 :RecentFiles<cr>
" nnoremap <leader>4 :ViewTags<cr>
" nnoremap <leader>44 MarkedFiles<cr>
" nnoremap <leader>5 :w<cr>
" nnoremap <leader>55 :Bclose<cr>
" nnoremap <leader>10 :CollapseWindow<cr>
" nnoremap <leader>11 :OmniEdit<cr>
" nnoremap <leader>12 :Exit<cr>

nnoremap <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
noremap <leader>n :NERDTreeFind<cr>
inoremap <leader>n <esc>:NERDTreeFind<cr>
nnoremap <F3> :OpenFile<cr>
inoremap <F3> <esc>:OpenFile<cr>
noremap <leader>f :BufferList<cr>
inoremap <leader>f <esc>:BufferList<cr>
nnoremap <F4> :CloseFile<cr>
inoremap <F4> <esc>:CloseFile<cr>
noremap <leader>c :RecentFiles<cr>
inoremap <leader>c <esc>:RecentFiles<cr>
nnoremap <F5> :SaveFile<cr>
inoremap <F5> <esc>:SaveFile<cr>
nnoremap <F6> :ViewTags<cr>
inoremap <F6> <esc>:ViewTags<cr>
nnoremap <leader>x :qa<cr>
inoremap <leader>x <esc>:qa<cr>
nmap <F7> gcc
imap <F7> <esc>gcc

" nnoremap <A-n> :silent !split-pane-ex.sh<cr>
" nnoremap <A-f> :silent !split-pane-find.sh<cr>
cnoreabbrev Ack Ack!
nnoremap <A-/> :Ack!<cr>

nnoremap <c-up> <c-w>k

inoremap <a-up> 10<c-w>+
inoremap <a-down> 10<c-w>-
inoremap <a-left> 10<c-w><
inoremap <a-right> 10<c-w>>

nnoremap <a-up> 10<c-w>+
nnoremap <a-down> 10<c-w>-
nnoremap <a-left> 10<c-w><
nnoremap <a-right> 10<c-w>>

nnoremap <a-=> <c-w>=
nnoremap <a-_> <c-w>_
nnoremap <a--> :sp<cr>
nnoremap <a-\> :vsp<cr>
nnoremap <leader>. :SwitchDir<cr> 

nnoremap <a-<> 80<c-w><
nnoremap <a->> 80<c-w>>

nnoremap <a-]> :tabnew<cr>
nnoremap <a-[> :tabclose<cr>

" nnoremap <a-1> :tabn 1<cr>
" nnoremap <a-2> :tabn 2<cr>
" nnoremap <a-3> :tabn 3<cr>
" nnoremap <a-4> :tabn 4<cr>
" nnoremap <a-5> :tabn 5<cr>

" nnoremap <leader>pd oxdebug_break();<esc>
" inoremap <leader>pd <esc>oxdebug_break();<esc>

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
" nnoremap <Leader>/ :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

:command! -nargs=0 SwitchDir :call SwitchDir()
function SwitchDir()
  :call feedkeys(":silent lcd ../\<cr>")
  :pwd
endfunction

function LaunchPHP()
  :exe "normal! \<esc>"
  " :call feedkeys(",/")
  :call feedkeys(":!drupal-start \<cr>")
endfunction

function OpenBroot()
  :call feedkeys(":!tmux select-window -t 2 \<cr>")
endfunction

function EMenu(menuname)
  :exe "normal! \<esc>"
  :call feedkeys(":emenu " . a:menuname . "\<TAB>\<TAB>")
endfunction

function FMenu(menunum)
  :exe "normal! \<esc>"
  " :call feedkeys(":call F" . a:menunum . "\<TAB>\<TAB>\<TAB>")
  :call feedkeys(":call F" . a:menunum . "\<TAB>\<TAB>")
endfunction

function F2NextW()
  :execute "silent !tmux select-pane -t .+1 \; resize-pane -Z Enter"
  " :execute "silent !tmux select-pane -t 0:.+ \;  resize--pane -Z Enter"
endfunction

function F21NewTerm()
  :execute "silent !tmux split-pane"
endfunction

function F22NextLay()
  :execute "silent !tmux next-layout"
endfunction

function F2Zoom()
  :execute "silent !tmux resize-pane -Z Enter"
endfunction

function F3Buffers()
  :Buffers!
endfunction

function F4NERDTree()
  :NERDTreeToggle
endfunction

function F4Vista()
  :Vista
endfunction

function F4Tagbar()
  :TagbarOpenAutoClose
endfunction

function CloseFile()
  :Bclose
endfunction

function SaveFile()
  " :call feedkeys("\<esc>")
  " :execute "normal! \<esc>"
  :update
  :noh
  " :mksession!
  " :source $MYVIMRC :set nomodifiable
endfunction

function F52Close()
  :Bclose
endfunction

function F53Exit()
  " :call F5Save()
  :qa
endfunction

function F7GoBack()
  :call feedkeys("\<C-o>")
endfunction

function F7GoDef()
  :call feedkeys("gd")
endfunction

function F7GoFile()
  :call feedkeys("gf")
endfunction

function SplitPane()
  " :call feedkeys(":!tmux split-pane\<cr>")
  : call feedkeys(":!split-pane.sh")
endfunction
function SplitPaneEx()
  " :call feedkeys(":!tmux split-pane\<cr>")
  : call feedkeys(":!split-pane-ex.sh")
endfunction

nnoremap <tab-tab> :bnext<CR>
" nnoremap <TAB> :bprev<CR>
" nnoremap <F6> :call WindowToggle()<CR> nnoremap <F8> :call ModeToggle()<CR>
" cnoremap <cr> <cr>:call <SID>CommandCallback()<cr>

" function! s:CommandCallback() let last_command = @:

"   " if last_command =~ 'tabnew' echomsg last_command " endif endfunction

" function! GetCommands() let lines=[] let nu=histnr("cmd") for i in
" range(1,nu) let lines+=[histget("cmd",i)] endfor return lines endfunction

" function! HandleCommand(item) call feedkeys("q:") call
" feedkeys("G?\\V".escape(a:item,'\/?')."\<CR>") endfunction

" function! CompleteCommand(arg) call fzf#run({'source': GetCommands(),'sink':
" function('HandleCommand'),'options': '-m --query "'.a:arg.'"'} ) endfunction 


" cmap <expr> <c-a> &cedit.'^"xy$'."<esc><esc>:call CompleteCommand(@x)<CR>"

" autocmd CmdwinEnter * map <buffer> <ESC> <C-c><C-c>

" function! OnTabEnter(path)
"   if isdirectory(a:path)
"     let dirname = a:path
"   else
"     let dirname = fnamemodify(a:path, ":h")
"   endif
"   execute "tcd ". dirname
" endfunction()

" autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))

let g:my_vim_mode = 0
function ModeToggle()
  if g:my_vim_mode == 0
    normal v
    let g:my_vim_mode = 1
  elseif g:my_vim_mode == 1
    normal V
    let g:my_vim_mode = 2
  elseif g:my_vim_mode == 2
    :call feedkeys("\<C-V>")
    let g:my_vim_mode = 3
  elseif g:my_vim_mode == 3
    normal i
    let g:my_vim_mode = 0
  endif
endfunction

function ToggleFold()
  normal za
endfunction

let g:my_drawer_mode = 0
function! DrawerToggle()
  if g:my_drawer_mode == 0
    " if g:NERDTree.IsOpen()
    :TagbarClose
    " :NERDTreeClose endif
    :Lex
    " :NERDTreeToggle
    let g:my_drawer_mode = 1
  elseif g:my_drawer_mode == 1
    " if g:NERDTree.IsOpen() :NERDTreeClose
    :Lex
    " endif
    :TagbarOpenAutoClose
    let g:my_drawer_mode = 2
  elseif g:my_drawer_mode == 2
    " :NERDTreeClose
    :Lex :TagbarClose
    let g:my_drawer_mode = 0
  endif
endfunction

" let g:my_window_mode = 0
" function! WindowToggle()
"   if g:my_window_mode == 0
" :split let g:my_window_mode = 1
" elseif g:my_window_mode == 1
"   :close
"   :vsplit
" let g:my_window_mode = 2
" elseif g:my_window_mode == 2
"   :close let
" g:my_window_mode = 0
" endif
" endfunction

function CloseBuffer()
  :tab sb
  :bw
endfunction

let g:my_fuzzy_mode = 0
function! FuzzyToggle()
  if g:my_fuzzy_mode == 0
    normal <esc>
    " :Files!
    :silent!shiftTouchKeys 1
    let g:my_fuzzy_mode = 1
  elseif g:my_fuzzy_mode == 1
    :silent!shiftTouchKeys 0
    let g:my_fuzzy_mode = 0
  endif
endfunction

function Goto()
  :call feedkeys("\<C-]>")
endfunction

function! MoveFile(newspec)
  let old = expand('%')
  " could be improved:
  if (old == a:newspec)
    return 0
  endif exe 'sav' fnameescape(a:newspec) call
  delete(old)
endfunction

function! SaveFileAS(newspec)
  let old = expand('%')
  " could be improved:
  if (old == a:newspec)
    return 0
  endif
  exe 'sav' fnameescape(a:newspec)
  "call delete(old)
endfunction

function! DeleteFile(newspec)
  let old = expand('%')
  " could be improved:
  call delete(old)
endfunction

set wildcharm=<Tab>
" set wildmenu
" nnoremap <Tab> :Buffers<Space><Tab> nnoremap <Tab> :Buffers<cr> function!
" s:do_domething() abort

"   echom localtime() endfunction au CmdlineEnter : let s:do = timer_start(0,
"   {-> s:do_domething()}) au CmdlineLeave : call timer_stop(s:do)

" au CmdlineEnter : call feedkeys('my default input has ', 'in')
"au CmdlineEnter : call feedkeys(":echo 'entering cmd'") au CmdlineENter :
"call feedkeys(":echo 'exiting cmd'")
"

let g:auto_save = 1

" " Ack -> Ag
" if executable('ag')
"     let g:ackprg = 'ag --vimgrep'
" endif

" " Automatically open & close quickfix window
" autocmd QuickFixCmdPost [^l]* nested cwindow

" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 0

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

function FKeySplit(thecmd)
  let thecmd = substitute(a:thecmd, "\\", "", "")
  let cmdsplit = split(thecmd, ":")
  let ubound = len(cmdsplit) - 1
  let cmdsplit = cmdsplit[1:ubound]
  return join(cmdsplit, " ")
endfunction

function FKeySplit2(thecmd)
  let thecmd = substitute(a:thecmd, "\\", "", "")
  let cmdsplit = split(thecmd, "/")
  return cmdsplit[-2] . '/' . cmdsplit[-1]
endfunction

function! FKeyVim(thecmd)
  let thecmd = FKeySplit(a:thecmd)
  :execute thecmd
endfunction

function! FKeyVimFeed(thecmd)
  let thecmd = FKeySplit(a:thecmd)
  :call feedkeys(thecmd)
endfunction

function! FKeyTmux(thecmd)
  let thecmd = FKeySplit(a:thecmd)
  " :echo thecmd
  :call feedkeys("\<C-a>" . thecmd)
  " :execute join(cmdslice, " ")
endfunction

function Exit()
  :exec 'cd' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))
  :execute 'mks!'
  :wqa<cr>
endfunction

:command! -nargs=0 StartProjects :call StartProjects()

function StartProjects()
  :lcd ~/dotfiles
  :TabooRename dotfiles
  :tabnew
  :lcd ~/drupal9-headless
  :TabooRename drupal9-headless
  :tabn1
endfunction

" :command! -nargs=0 Explorer :NERDTreeToggle
" :command! -nargs=0 GotoInExplorer :NERDTreeFind
:command! -nargs=0 SwitchContext :call FKey(1)
:command! -nargs=0 BufferList :Buffers!
:command! -nargs=0 OpenFile :Files!
" :command! -nargs=0 OpenFile :call OpenFile()
:command! -nargs=0 CloseFile :call CloseFile()
:command! -nargs=0 SaveFile :call SaveFile()
:command! -nargs=0 RecentFiles :History!
:command! -nargs=0 MarkedFiles :Marks!
:command! -nargs=0 ViewTags :TagbarOpenAutoClose
:command! -nargs=0 CollapseWindow <C-w>_
:command! -nargs=0 Exit :call Exit()
:command! -nargs=0 OmniEdit i<C-n>
:command! -nargs=1 CmdSplit :call CmdSplit(<q-args>)
:command! -nargs=1 FKeyTmux :call FKeyTmux(<q-args>)
:command! -nargs=1 FKeyVim :call FKeyVim(<q-args>)
:command! -nargs=1 FKeyVimFeed :call FKeyVimFeed(<q-args>)

function OpenFile()
  :call fzf#run({'source': "grep -n '' " . cmdpath, 'sink': '', 'options': '--preview="" --multi'})
endfunction

function FKey(fnum)
  let cmdpath = expand('~') . '/dotfiles/commands/vim-f' . a:fnum . '.txt'
  if a:fnum == 7 || a:fnum == 9
    :call fzf#run({'source': "grep -n '' " . cmdpath, 'sink': 'FKeyVimFeed', 'options': '--preview="" --multi'})
  elseif a:fnum == 1
    :call fzf#run({'source': "grep -n '' " . cmdpath, 'sink': 'DoCD', 'options': '--preview=""'})
    " :call fzf#run({'source': 'fasd -d -R', 'sink': 'DoFasdCD', 'options': '--preview=""'})
  else
    :call fzf#run({'source': "grep -n '' " . cmdpath, 'sink': 'FKeyVim', 'options': '--preview=""'})
  endif
endfunction

:command! -nargs=1 DoCD :call DoCD(<q-args>)
function DoCD(thedir)
  let thedir = FKeySplit(a:thedir)
  let theshortdir = FKeySplit2(thedir)
  :execute 'TabooOpen' fnameescape(theshortdir)
  :execute 'lcd' fnameescape(thedir)
  :execute 'Files!'
endfunction

:command! -nargs=1 DoFasdCD :call DoFasdCD(<q-args>)
function DoFasdCD(line)
  :execute 'tabnew'
  :execute 'lcd ' . split(a:line)[-1]
endfunction

" vdebug {{{
" let g:vdebug_keymap = {
" \    "run" : "<Leader>/",
" \    "run_to_cursor" : "<Leader><Down>",
" \    "step_over" : "<Leader><Up>",
" \    "step_into" : "<Leader><Left>",
" \    "step_out" : "<Leader><Right>",
" \    "close" : "<Leader>q",
" \    "detach" : "<Leader><F7>",
" \    "set_breakpoint" : "<Leader>s",
" \    "eval_visual" : "<Leader>e"
" \}
let g:vdebug_keymap = {
      \    "run" : "5<cr>",
      \    "step_over" : "2<cr>",
      \    "step_into" : "3<cr>",
      \    "step_out" : "4<cr>",
      \    "close" : "6<cr>",
      \    "detach" : "7<cr>",
      \    "run_to_cursor" : "9<cr>",
      \    "set_breakpoint" : "0<cr>",
      \    "eval_visual" : "01<cr>"
      \}
" set showtabline=2
set sessionoptions+=tabpages,globals
" " A message will appear in the message line when you're in a submode
" " and stay there until the mode has existed.
" let g:submode_always_show_submode = 1

" " We're taking over the default <C-w> setting. Don't worry we'll do
" " our best to put back the default functionality.
" call submode#enter_with('window', 'n', '', '<C-w>')

" " Note: <C-c> will also get you out to the mode without this mapping.
" " Note: <C-[> also behaves as <ESC>
" call submode#leave_with('window', 'n', '', '<ESC>')

" " Go through every letter
" for key in ['a','b','c','d','e','f','g','h','i','j','k','l','m',
" \           'n','o','p','q','r','s','t','u','v','w','x','y','z']
"   " maps lowercase, uppercase and <C-key>
"   call submode#map('window', 'n', '', key, '<C-w>' . key)
"   call submode#map('window', 'n', '', toupper(key), '<C-w>' . toupper(key))
"   call submode#map('window', 'n', '', '<C-' . key . '>', '<C-w>' . '<C-'.key . '>')
" endfor
" " Go through symbols. Sadly, '|', not supported in submode plugin.
" for key in ['=','_','+','-','<','>']
"   call submode#map('window', 'n', '', key, '<C-w>' . key)
" endfor


" Jump to tab: <Leader>t
function TabName(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return fnamemodify(bufname(buflist[winnr - 1]), ':t')
endfunction

function! s:jumpToTab(line)
  let pair = split(a:line, ' ')
  let cmd = pair[0].'gt'
  execute 'normal' cmd
endfunction

nnoremap <silent> <a-u> :call fzf#run({
      \   'source':  reverse(map(range(1, tabpagenr('$')), 'v:val." "." ".TabName(v:val)')),
      \   'sink':    function('<sid>jumpToTab'),
      \   'down':    tabpagenr('$') + 2
      \ })<CR>


nmap <a-g> :Git<CR>
nmap <a-d> :tabedit %<CR>:Gdiff<CR>

" au User FugitiveIndex nmap <buffer> dt :Gtabedit <Plug><cfile><Bar>Gdiffsplit<CR>

" Couldn't use the prescribed 'ctrl-/' in Mac,
" so use 'ctrl-_' instead (which is triggered by 'ctrl--' also).
" https://apple.stackexchange.com/questions/24261/how-do-i-send-c-that-is-control-slash-to-the-terminal#24282
" let g:fzf_preview_window = ['right:0%', 'ctrl-_']
" let g:debuggerPort=9003
" }}}
 let g:python3_host_prog = '/data/data/com.termux/files/usr/bin/python'
" let g:vdebug_options['port']=9003
" :let &winheight = 999
" let g:lens#height_resize_min = 80
" vim:foldmethod=marker:foldlevel=99
