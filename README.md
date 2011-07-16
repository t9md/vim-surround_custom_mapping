What is this?
==================================
mini utility which helps..

Easily setup custom surrounding mappings for each filetype and global.

All you have to do is setup `g:surround_custom_mapping` dictionary which `key` is
`&fieltype` and `value` is `surrounding rule`.
the key `_` is special key for global rule.
For surrounding rule, refer `:help surround-customizing`

Example
----------------------------------
    let g:surround_custom_mapping = {}
    let g:surround_custom_mapping._ = {
                \ 'p':  "<pre> \r </pre>",
                \ 'w':  "%w(\r)",
                \ }
    let g:surround_custom_mapping.help = {
                \ 'p':  "> \r <",
                \ }
    let g:surround_custom_mapping.ruby = {
                \ '-':  "<% \r %>",
                \ '=':  "<%= \r %>",
                \ '9':  "(\r)",
                \ '5':  "%(\r)",
                \ '%':  "%(\r)",
                \ 'w':  "%w(\r)",
                \ '#':  "#{\r}",
                \ '3':  "#{\r}",
                \ 'e':  "begin \r end",
                \ 'E':  "<<EOS \r EOS",
                \ 'i':  "if \1if\1 \r end",
                \ 'u':  "unless \1unless\1 \r end",
                \ 'c':  "class \1class\1 \r end",
                \ 'm':  "module \1module\1 \r end",
                \ 'd':  "def \1def\1\2args\r..*\r(&)\2 \r end",
                \ 'p':  "\1method\1 do \2args\r..*\r|&| \2\r end",
                \ 'P':  "\1method\1 {\2args\r..*\r|&|\2 \r }",
                \ }
    let g:surround_custom_mapping.javascript = {
                \ 'f':  "function(){ \r }"
                \ }
    let g:surround_custom_mapping.lua = {
                \ 'f':  "function(){ \r }"
                \ }
    let g:surround_custom_mapping.python = {
                \ 'p':  "print( \r)",
                \ '[':  "[\r]",
                \ }
    let g:surround_custom_mapping.vim= {
                \'f':  "function! \r endfunction"
                \ }
