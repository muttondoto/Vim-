" Einar Cabrera [einn.o@yahoo.com]

filetype plugin on
set nocompatible
set number
set relativenumber
syntax on
set cursorline
set hlsearch

let mapleader = " "
inoremap jj <esc>
nnoremap <leader>w :w<CR>
nnoremap <leader>s :%source<CR>
nnoremap <leader>d :nohlsearch<CR>
nnoremap <leader>u :PlugUpdate<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>a :tabnext<CR>
nnoremap <leader>f :tabfind 
nnoremap <leader>z :shell<CR>
nnoremap <leader>j :q!<CR>
nnoremap <leader>k :wq<CR>

" my functions maps
nnoremap <silent> <leader>i :call SpellON()<CR>
nnoremap <silent> <C-i> :call ChangeLanguage()<CR>

noremap ; :
vnoremap ; :

"Plugins
call plug#begin()

" List your plugins here
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/vim-dict'
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

call plug#end()

"Config plugins
let g:airline_theme = 'catppuccin_mocha'
colorscheme catppuccin_mocha

"MAPS PLUGS

nmap <leader><leader> <Plug>(easymotion-prefix)
nmap  <Leader>q <Plug>(easymotion-bd-w)

" Vimtex

" let g:vimtex_view_method = 'sumatrapdf'

" Snips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" My functions

		" Set spelllang
		let g:status = 1
		let g:statuslanguage = 0

		function! SpellON()
			if g:status
				set spell spelllang=en_us
				let g:status = 0
				let g:statuslanguage = 1
			else
				set nospell
				let g:status = 1
			endif
		endfunction

		" Set spelllang Spanish [it switches between them]

		function! ChangeLanguage()
			if g:statuslanguage
				set spelllang=es_mx
				let g:statuslanguage = 0
			else
				set spelllang=en_us
				let g:statuslanguage = 1
			endif
		endfunction
