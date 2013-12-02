function! SetEncoding(f)
    let e = system('enca -Pe "' . a:f . '"')
    let e = substitute(e, '/.*', '', '')
    if e =~ 'unknown' || e =~ 'ASCII' || e =~ 'enca' || e =~ 'TeX'
        execute("set encoding=utf8")
        execute("set fileencodings=utf-8,koi8-r,cp1251,cp866,ucs-bom,ascii")
    else
        execute("set encoding=utf8")
        execute("set fileencodings=" . e)
    endif
endfunction

