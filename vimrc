execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set ai

" Hybrid numbers with toggle on buffer/window enter/exit
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Add support for powerline symbols
"let g:airline_powerline_fonts = 1

" Mappings
nnoremap <F10> :!xterm -e 'cd ${PWD} && run % && read' <Enter>
