" Vim Plug {{{
call plug#begin(stdpath('data') . '/plugged')
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
" Plug 'mileszs/ack.vim'
Plug 'chrismccord/bclose.vim'
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'vim-scripts/taglist.vim'
" Plug 'shawncplus/phpcomplete.vim'
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

function PrintXdebug()
  :call feedkeys('oxdebug_break();')
  :call feedkeys("\<esc>")
endfunction

function CloseBuffer()
  :tab sb
  :bw
endfunction

function! DeleteFile(newspec)
  let old = expand('%')
  " could be improved:
  call delete(old)
endfunction

function CommandHistory()
  :call feedkeys("q:\<c-w>_")
endfunction

function SwitchDir()
  :lcd%:p:h
  " :call feedkeys(":pwd\<cr>")
endfunction

function DoFasdCD(line)
  :execute 'tabnew'
  :execute 'lcd ' . split(a:line)[-1]
endfunction

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
  " :exec 'cd' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))
  :exec 'cd' fnameescape('~/')
  " :call feedkeys(":cd ~/\<cr>")
  :execute 'mks!'
  :wqa<cr>
endfunction

function MoveUpDir()
  :call feedkeys(":cd ../\<cr>")
  :call feedkeys(":pwd\<cr>")
endfunction

function StartVdebug()
  :execute '!debug-start.sh'
  " :execute 'VdebugStart'
endfunction

function StopVdebug()
  :call feedkeys("\<a>q")
endfunction

function SaveFile()
  :update
  :noh
endfunction

function GotoDefinition()
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

function DoCD(thedir)
  let thedir = FKeySplit(a:thedir)
  let theshortdir = FKeySplit2(thedir)
  :execute 'TabooOpen' fnameescape(theshortdir)
  :execute 'lcd' fnameescape(thedir)
  :execute 'Files!'
endfunction

function StartProjects()
  :lcd ~/dotfiles
  :TabooRename dotfiles
  :tabnew
  :lcd ~/drupal9-headless
  :TabooRename drupal9-headless
  :tabn1
endfunction

function CloseFile()
  :Bclose
endfunction

function SearchFiles()
  :call feedkeys(":Rg!\<cr>")
endfunction

function OpenTerminal()
  " :call feedkeys(":!open-terminal.sh\<cr>")
  :execute "silent !open-terminal.sh"
endfunction

function SplitPaneEx()
  " :call feedkeys(":!tmux split-pane\<cr>")
  : call feedkeys(":!split-pane-ex.sh")
endfunction

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

set wildcharm=<Tab>

let g:auto_save = 1

" let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
" let g:ack_autoclose = 0

" Any empty ack search will search for the work the cursor is on
" let g:ack_use_cword_for_empty_search = 1

:command! -nargs=0 StartProjects :call StartProjects()
" :command! -nargs=0 Explorer :NERDTreeToggle
" :command! -nargs=0 GotoInExplorer :NERDTreeFind
:command! -nargs=0 OpenTerminal :call OpenTerminal()
:command! -nargs=0 SearchFiles :call SearchFiles()
" :command! -nargs=0 SwitchContextOld :call FKey(1)
:command! -nargs=0 MiscCommands :call FKey(10)
:command! -nargs=0 SwitchDir :call SwitchDir()
:command! -nargs=0 PrintXdebug :call PrintXdebug()
:command! -nargs=0 MoveUpDir :call MoveUpDir()
:command! -nargs=0 BufferList :Buffers!
:command! -nargs=0 OpenFile :Files!
:command! -nargs=0 CommandHistory :call CommandHistory()
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
:command! -nargs=1 DoCD :call DoCD(<q-args>)
:command! -nargs=1 DoFasdCD :call DoFasdCD(<q-args>)
" :command! -nargs=0 Explorer :NERDTreeToggle
" :command! -nargs=0 GotoInExplorer :NERDTreeFind

" AutoSurround {{
" inoremap ( ()<Left>
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap " ""<Left>
" }}}
"
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
set sessionoptions+=tabpages,globals
" " A message will appear in the message line when you're in a submode
" }}}
"
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
set autoread
source $VIMRUNTIME/menu.vim
" source /data/data/com.termux/files/home/dotfiles/nvim/nerdtree-symlink.vim
" }}}
" NERDTree {{{
set autochdir
let NERDTreeChDirMode=0
let NERDTreeShowBookmarks=1
" let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
" }}}"
" Searching {{{
set path+=**
set wildignore+=**/node_modules/**
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
" autocmd BufEnter,BufRead * :lcd%:p:h
let ftToIgnore = ['fzf', 'terminal']
autocmd BufEnter,BufRead * if index(ftToIgnore, &ft) < 0 | :SwitchDir
au VimLeave * :Exit
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
let g:loaded_clipboard_provider = 1
" set clipboard=unnamed
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
" nnoremap <TAB> za
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


" Leader Shortcuts {{{
let mapleader=","
" }}}
"
" Misc {{{
set hidden
set mouse=a
" }}}
set hidden


" Console log from insert mode; Puts focus inside parentheses
imap cll console.log()<Esc><S-f>(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

:map <C-cp> ciw<C-r>0<ESC>

nnoremap <C-D> Odebugger<esc>:w<CR>:!node debug node_modules/nodeunit/bin/nodeunit -t dev<CR>dd:w<CR>

nnoremap <leader>v :source $MYVIMRC<CR>

nnoremap <leader>90 :source ~/dotfiles/Session.vim<cr> :NERDTree ~/dotfiles/Session.vim<cr> :NERDTreeToggle<cr>
set timeoutlen=700

nnoremap <A-<> 10<c-w><
inoremap <A-<> <esc>10<c-w><
nnoremap <A->> 10<c-w>>
inoremap <A->> <esc>10<c-w>>
nnoremap <TAB> :BufferList<CR>
nnoremap <leader>af1 :OpenTerminal<cr>
nnoremap <leader>f2 :NERDTreeToggle<cr>
nnoremap <c-p> :NERDTreeToggle<cr>
inoremap <leader>f2 <esc>:NERDTreeToggle<cr>
noremap <leader>af2 :NERDTreeFind<cr>
inoremap <leader>af2 <esc>:NERDTreeFind<cr>
nnoremap <leader>f3 :OpenFile<cr>
inoremap <leader>f3 <esc>:OpenFile<cr>
nnoremap <leader>af3 :SearchFiles<cr>
inoremap <leader>af3 <esc>:SearchFiles<cr>
nnoremap <leader>f4 :RecentFiles<cr>
inoremap <leader>f4 <esc>:RecentFiles<cr>
nnoremap <leader>af4 :CloseFile<cr>
inoremap <leader>af4 <esc>:CloseFile<cr>
nnoremap <c-s> :SaveFile<cr>
nnoremap <leader>f5 :SaveFile<cr>
inoremap <leader>f5 <esc>:SaveFile<cr>
nnoremap <leader>af5 :SaveFile<cr>
inoremap <leader>af5 <esc>:SaveFile<cr>
nnoremap <leader>f6 :ViewTags<cr>
inoremap <leader>f6 <esc>:ViewTags<cr>
" inoremap <leader>af6 <esc>:ViewTags<cr>
" nnoremap <leader>af6 :ViewTags<cr>
nnoremap <c-z> <nop>
nmap <leader>f7 gcc
nmap <c-/> gcc
imap <leader>f7 <esc>gcc
nnoremap <leader>f10 :MiscCommands<cr>
inoremap <leader>f10 <esc>:MiscCommands<cr>
nnoremap <a-:> :CommandHistory<cr>
inoremap <a-:> <esc>:CommandHistory<cr>

nnoremap <F9> :exec '!'.getline('.')
nnoremap <F9> :exec '!'.getline('.')
"nnoremap <C-A-d> okint($<c-p>
"inoremap <C-A-d> <esc>okint($<c-p>

" nnoremap <A-n> :silent !split-pane-ex.sh<cr>
" nnoremap <A-f> :silent !split-pane-find.sh<cr>
" nnoremap <A-/> :Ack!<cr>
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
nnoremap <leader>. :MoveUpDir<cr> 
nnoremap <a-<> 80<c-w><
nnoremap <a->> 80<c-w>>
nnoremap <a-]> :tabnew<cr>
nnoremap <a-[> :tabclose<cr>
" Don't jump to first match
" cnoreabbrev Ack Ack!
" Maps <leader>/ so we're ready to type the search keyword
" nnoremap <Leader>/ :Ack!<Space>
" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

set wildcharm=<Tab>
" set wildmenu
" nnoremap <Tab> :Buffers<Space><Tab> nnoremap <Tab> :Buffers<cr> function!
" s:do_domething() abort

" vdebug {{{
 " let g:vdebug_keymap = {
 " \    "run" : "<A-/>",
 " \    "run_to_cursor" : "<A><Down>",
 " \    "step_over" : "<A><Up>",
 " \    "step_into" : "<A><Left>",
 " \    "step_out" : "<A><Right>",
 " \    "close" : "<A>q",
 " \    "detach" : "<A>:",
 " \    "eval_visual" : "<A>e"
 " \}
 let g:vdebug_keymap = {
 \    "run" : "<Leader>/",
 \    "run_to_cursor" : "<Leader><Down>",
 \    "step_over" : "<Leader><Up>",
 \    "step_into" : "<Leader><Left>",
 \    "step_out" : "<Leader><Right>",
 \    "close" : "<Leader>q",
 \    "detach" : "<Leader>:",
 \    "eval_visual" : "<Leader>e"
 \}

" let g:vdebug_keymap = {
"       \    "run" : "5<cr>",
"       \    "step_over" : "2<cr>",
"       \    "step_into" : "3<cr>",
"       \    "step_out" : "4<cr>",
"       \    "close" : "6<cr>",
"       \    "detach" : "7<cr>",
"       \    "run_to_cursor" : "9<cr>",
"       \    "set_breakpoint" : "0<cr>",
"       \    "eval_visual" : "01<cr>"
"       \}

let g:vdebug_options = {
      \    'port' : 9000,
      \    'timeout' : 20,
      \    'server' : '',
      \    'on_close' : 'stop',
      \    'break_on_open' : 0,
      \    'ide_key' : '',
      \    'debug_window_level' : 0,
      \    'debug_file_level' : 0,
      \    'debug_file' : '',
      \    'path_maps' : {},
      \    'watch_window_style' : 'expanded',
      \    'marker_default' : '⬦',
      \    'marker_closed_tree' : '▸',
      \    'marker_open_tree' : '▾',
      \    'sign_breakpoint' : '▷',
      \    'sign_current' : '▶',
      \    'continuous_mode'  : 1,
      \    'simplified_status': 1,
      \    'layout': 'vertical',
    \}

" set showtabline=2
set sessionoptions+=tabpages,globals

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
 let g:python3_host_prog = '/usr/bin/python3'
 let g:python_host_prog = '/usr/bin/python'
" let g:vdebug_options['port']=9003
" :let &winheight = 999
" let g:lens#height_resize_min = 80
" vim:foldmethod=marker:foldlevel=99
