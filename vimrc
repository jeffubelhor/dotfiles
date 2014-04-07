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

" Toggles VimRoom
nnoremap <silent> <Leader>vr <Plug>VimroomToggle

"Opens NERDTree with every new vim instance
"autocmd vimenter * NERDTree

"closes vim if the only open window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Allows me to use ctrl+c to copy to the OS X clipboard. I KNOW I'M DOING IT WRONG
vmap <C-c> :w !pbcopy<ENTER><ENTER> 

"Removes vertical split
set fillchars+=vert:\ 

" Color specifications. Change them as you would like.

hi Comment  term=none   ctermfg=black    guifg=Gray
hi Constant term=underline  ctermfg=cyan    guifg=Cyan
hi Identifier   term=underline  ctermfg=blue   guifg=White
hi Statement    term=bold   ctermfg=red guifg=red
hi operator term=bold cterm=bold ctermfg=1 gui=bold guifg=Red 
hi PreProc  term=underline  ctermfg=Red  guifg=Red
hi Special  term=bold   ctermfg=blue    guifg=Blue
hi Nontext  term=bold   ctermfg=red guifg=Red
hi Normal   guifg=Yellow    guibg=#00007F
hi String   ctermfg=Yellow
hi LineNr   ctermfg=Black
hi Type     ctermfg=red
hi Variable ctermfg=magenta
hi vertsplit term=none cterm=none ctermbg=black
hi StatusLine term=none cterm=none ctermbg=black ctermfg=red

"TEST
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L "[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor
