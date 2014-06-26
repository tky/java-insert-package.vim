function! jinspackage#InsertPackage()
  let a:path = expand("%:p")
  let a:splitted = split(a:path, "/")

  let a:index = 0
  for p in a:splitted
    if (p =~ '\v(com|org)')
      exe "normal gg"
      exe "normal O"."package " .  join(a:splitted[a:index : -2], ".") . ";"
    endif
    let a:index = a:index + 1
  endfor
endfunction
