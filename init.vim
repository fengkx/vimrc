" Initialize vim-plugin
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Appearance
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'

"Editting
Plug 'vim-scripts/fcitx.vim'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

"Linting
Plug 'dense-analysis/ale'

"MISC
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf.vim'
Plug 'antoyo/vim-licenses'
Plug 'editorconfig/editorconfig-vim'

"Git
Plug 'Xuyuanp/nerdtree-git-plugin'

"Language Specific {{{

  "HTML/CSS
  Plug 'mattn/emmet-vim'
  "Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  "JavaScript
  Plug 'pangloss/vim-javascript'
  "Toml
  Plug 'cespare/vim-toml'
  "Nunjucks
  Plug 'niftylettuce/vim-jinja', { 'for': 'njk' }
  "Markdown
  Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
" }}}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"General {{{
"General Appearance
colo seoul256
highlight Comment cterm=italic term=italic gui=italic
highlight htmlArg cterm=italic term=italic gui=italic
highlight xmlAttrib cterm=italic term=italic gui=italic

"General Setting And Keymap
set number
set pastetoggle=<F3>
imap <c-c> <esc>
set mouse=a
"}}}

" Faster split resizing (+,-) {{{
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
" }}}

" Faster move line {{{
nnoremap <A-u> :m-2<CR>
nnoremap <A-d> :m+<CR>
inoremap <A-u> <Esc>:m-2<CR>
inoremap <A-d> <Esc>:m+<CR>

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>
" }}}

:runtime! ./plugconf/ale.vim
:runtime! ./plugconf/coc.vim
":runtime! ./plugconf/markdown-preview.nvim.vim
:runtime! ./plugconf/nerdtree.vim
:runtime! ./plugconf/rainbow.vim
:runtime! ./plugconf/undotree.vim
:runtime! ./plugconf/vim-go.vim
:runtime! ./plugconf/vim-javascript.vim
:runtime! ./plugconf/vim-lisences.vim

