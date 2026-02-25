" UI
syntax on
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent
set splitbelow

colorscheme slate

highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight StatusLine ctermbg=NONE ctermfg=white cterm=bold guibg=NONE guifg=white
highlight StatusLineNC ctermbg=NONE ctermfg=gray guibg=NONE guifg=gray
highlight ModeMsg ctermbg=NONE ctermfg=white guibg=NONE guifg=white
highlight Visual ctermbg=darkgray ctermfg=white guibg=#444444 guifg=white
highlight MatchParen ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
highlight ErrorMsg ctermbg=NONE guibg=NONE ctermfg=red guifg=red
highlight WarningMsg ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow

" navigation & mause
set whichwrap+=<,>,[,],h,l
set mouse=a
set selectmode=mouse,key
set keymodel=startsel,stopsel
set clipboard=unnamedplus
set mousemodel=popup

snoremap <BS> <C-g>d
snoremap <Del> <C-g>d
vnoremap <BS> d
vnoremap <Del> d

" ccp
vnoremap <C-S-c> "+y
snoremap <C-S-c> <C-g>"+y
vnoremap <C-S-x> "+d
snoremap <C-S-x> <C-g>"+d
vnoremap <C-c> "+y
snoremap <C-c> <C-g>"+y
vnoremap <C-x> "+d
snoremap <C-x> <C-g>"+d
inoremap <C-v> <C-r><C-o>+
inoremap <C-S-v> <C-r><C-o>+

" shortcut
nnoremap <C-a> ggVG<C-g>
inoremap <C-a> <Esc>ggVG<C-g>
snoremap <C-a> <C-g>ggVG<C-g>
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yypi
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" F9
autocmd filetype cpp nnoremap <F9> :w<CR>:10split <bar> term g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r<CR>i

" terminal close
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * nnoremap <buffer> q :q<CR>
