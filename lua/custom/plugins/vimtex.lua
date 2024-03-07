return {
  {
    'lervag/vimtex',
    init = function()
      vim.cmd [[
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmgs'
let g:tex_conceal_frac=1

function! s:write_server_name() abort
  let nvim_server_file = (has('win32') ? $TEMP : '/tmp') . '/vimtexserver.txt'
  call writefile([v:servername], nvim_server_file)
endfunction

augroup vimtex_common
  autocmd!
  autocmd FileType tex call s:write_server_name()
augroup END

let g:vimtex_compiler_latexmk = {
    \ 'aux_dir' : '',
    \ 'out_dir' : 'out',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
      ]]
    end,
  },
}
