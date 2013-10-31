execute pathogen#infect()

" Sets tabs to be four, >> and << to be four and tabs to spaces
set tabstop=4 shiftwidth=4 expandtab

" Sets linenumbers
set number

" Sets the visual block you just indented after indentation
vnoremap < <gv
vnoremap > >gv

"Enables syntax highlighting
syntax on

"Set up /vs to split the window into two columns
:noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

"Tab completion stuff
set wildmenu
set wildmode=list:longest,full

"Turns off HTML link highlighting
hi link htmlLink NONE

"Turns on mouse capabilities (Requires EasySIMBL and MouseTerm on OS X)
set mouse=a

"Maps .less syntax
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"Always shows the status line
set laststatus=2
set noshowmode

"Change it so that ',' is the leader character.
"Not necessary, but I hate hitting '\'
:let mapleader = ","

"Exits insert mode by pressing 'jk' (while in insert mode, duh).
"This is kind of annoying until you get used to it. 
inoremap jk <Esc>

"Adds a line at 79 characters because I'm tired of builds failing
"due to pep8. This only happens on python, c, or sh files.
augroup LongLines
    autocmd!
    autocmd FileType * match none
    autocmd FileType python,c,sh match ColorColumn /\%>80v.\+/
augroup END

" Toggles NERDTree just by using <Leader>nt
nmap <Leader>nt :NERDTreeToggle<Cr>

"Opens NERDTree with every new vim instance
" autocmd vimenter * NERDTree

"closes vim if the only open window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Allows me to use ctrl+c to copy to the OS X clipboard. I KNOW I'M DOING IT WRONG
vmap <C-c> :w !pbcopy<ENTER><ENTER> 

