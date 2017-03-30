" Real programmers don't use TABs but spaces
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal expandtab

set tw=99   " width of document (used by gd)
set colorcolumn=100

" Efficient Python Folding
setlocal nofoldenable

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

python << EOF
import os
import sys
import vim
for p in sys.path:
    # Add each directory in sys.path, if it exists.
    if os.path.isdir(p):
        # Command 'set' needs backslash before each space.
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

