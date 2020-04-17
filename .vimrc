" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Highlight current line
set cursorline

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Always show the command entered
set showcmd

" Enable command auto-completion with enhanced mode
set wildmenu

" Customize width of tab and auto-indent
set tabstop=4
set shiftwidth=4
" Expand tab to spaces, :retab to replace existing tabs
set expandtab

" Apply the indentation of the current line to the next
set autoindent
" Reacts to the syntax/style of the code you are editing
set smartindent

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Enable search highlighting, use <C-l> to mute it temporarily
set hlsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Avoid strange indentation when using system paste command, in particular
" when the 'autoindent' option is enabled. Alternatively, you can run the
" Ex command :set paste before pasting from the system clipboard and then
" run :set paste! to turn the option off. A more elegant solution would be
" the normal mode command "+p that preserves the indentation of the text
" without any surprises.
set pastetoggle=<f5>

" Unbind some useless/annoying default key bindings.
nmap s <Nop>

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Key bindings for navigation
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

" Key bindings for buffer list traversal
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Key bindings to mute search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Key bindings for common file operations
nmap S :w<CR>
nmap Q :q<CR>

" Key bindings for additional plugins
map <C-n> :NERDTreeToggle<CR>

" Autoload the matchit plugin shipped with the Vim distribution so
" that the % command can jump between matching pair of keywords
filetype plugin on
runtime macros/matchit.vim

" Customize look and feel
colorscheme default
" Require vim-airline and vim-airline-themes (https://github.com/vim-airline)
let g:airline_theme='base16_default'
