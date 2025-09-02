vim.cmd([[

    setlocal makeprg=pyright
    setlocal errorformat=%f:%l:%c\ -\ %t%.%#:%m
]])
    --setlocal makeprg=python3\ %
    --setlocal errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
