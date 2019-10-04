"cumstom key mappings
    "templates
    nnoremap ,C :-1read ~/.vim/templates/.skeleton.vim.c<CR>4j4la
    "random commands
        "use Q to run the command on currnet line and insert the output
        nnoremap Q !!sh<CR>
    "disable arrow keys
    noremap <Up>        <Nop>
    noremap <Down>      <Nop>
    noremap <Left>      <Nop>
    noremap <Right>     <Nop>

"external commands inside
command MakeTags !ctags -R .

"formatting
set nojoinspaces

"paths
set path+=**
set dir=~/.cache/vim

"Syntax ofc
syntax enable

"ease of navigation
set title
set ruler
set cursorline
set number
set relativenumber
set showcmd

"indetations etc
set autoindent
set expandtab
set shiftround
set tabstop=4
set shiftwidth=4
set linebreak
set sidescrolloff=5

"search settings
set hlsearch
set smartcase

"Setting colorscheme
colorscheme wombat256mod

"misc.
let mapleader = ","
set noswapfile
set visualbell
set autowrite
set splitbelow
set splitright

"use bundles if file exists
if filereadable("~/.vimrc.bundles")
    source ~/.vimrc.bundles
endif

"display trailing whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

