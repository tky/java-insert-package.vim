## Insert package for java.

This is a plugin which insert package sentennce for java.  
if you write java file in `~/src/main/java/com/tky/sample`  
this pluin insert  `package com.tky.sample;`  to the fist line.

## Configuration

This is an example `~/.vimrc` configuration for NeoBundle.

  * `:pkg` to insert package sentence to the first line in your file.

```vim
" Plugin key-mappings."
NeoBundleLazy 'tky/java-insert-package.vim' ,{
  \ 'filetypes' : 'java',
\}
let s:hooks = neobundle#get_hooks('java-insert-package.vim')
function! s:hooks.on_source(bundle)
  nnoremap :pkg :JavaInsertPackage<CR>
endfunction
```
