vim.cmd([[
silent !in-git-repo
if v:shell_error
    call FugitiveDetect('~/.cfg')
endif
]])
