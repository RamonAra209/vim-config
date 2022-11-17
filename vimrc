call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'joshdick/onedark.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'luochen1990/rainbow'
	Plug 'tpope/vim-fugitive'
	Plug 'kien/ctrlp.vim'
	" Plug 'jreybert/vimagit'
	Plug 'ervandew/supertab'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-commentary'
call plug#end()

" My defined settings"

nmap <space> <leader>

nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>, :CtrlPBuffer<CR>

nnoremap <leader>gg :Magit<CR>

nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wn :split<CR>
nnoremap <leader>wc :q<CR>

nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>

nnoremap <leader>tt :FloatermToggle<CR>
nnoremap <leader>tp :NERDTreeToggle<CR>

set nocompatible
set relativenumber
set wrap!               "no code wrapping"
syntax on

colorscheme onedark
hi CursorLineNr guifg=#e0944c

"Cursor differentiation between normal/insert mode"
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" set ttimeout
" set ttimeoutlen=1
" set ttyfast

let g:rainbow_active = 1
let g:magit_default_fold_level = 2
let g:ctrlp_show_hidden = 1

"vim coc settings below"
set encoding=utf-8
set nobackup
set nowritebackup

set updatetime=300

" set signcolumn=yes
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
" function! CheckBackspace() abort
" 	  let col = col('.') - 1
" 	    return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" if has('nvim')
"     inoremap <silent><expr> <c-space> coc#refresh()
" else
"     inoremap <silent><expr> <c-@> coc#refresh()
" endif
"
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" nnoremap <silent> K :call ShowDocumentation()<CR>
" function! ShowDocumentation()
" 	if CocAction('hasProvider', 'hover')
" 		call CocActionAsync('doHover')
" 	else
" 		call feedkeys('K', 'in')
" 	endif
" endfunction
"
" nmap <leader>lr <Plug>(coc-rename)
"
" nmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
"
" augroup mygroup
" 	autocmd!
" 	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" 	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" xmap <leader>a  <Plug>(coc-codeaction-selected)
"
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>ac  <Plug>(coc-codeaction)
" nmap <leader>qf  <Plug>(coc-fix-current)
" nmap <leader>cl  <Plug>(coc-codelens-action)
"
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
"
" if has('nvim-0.4.0') || has('patch-8.2.0750')
" 	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" 	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" 	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
" 	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" 	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" 	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif
"
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)
"
" command! -nargs=0 Format :call CocActionAsync('format')
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
