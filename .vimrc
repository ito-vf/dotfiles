"usual settings
:set number

:set expandtab
:set tabstop=2

:set ai
:set shiftwidth=2

:set hls
:set ic
:set is

:set pastetoggle=<F11>

":set cursorline

":set mouse=a

:so $VIMRUNTIME/macros/matchit.vim


"color
":colorscheme koehler
":colorscheme torte
:colorscheme ron


"filetypes
:filetype on
" SystemVerilog
"au BufNewFile,BufRead *.sv,*.svh    setf systemverilog
:au BufNewFile,BufRead *.sva setf systemverilog
:au BufNewFile,BufRead *[mM]akefile,*.mk,*.mak,*.dsp set tabstop=8
":au BufNewFile,BufRead .bashrc* set tabstop=8
:au BufNewFile,BufRead *.py set tabstop=8



