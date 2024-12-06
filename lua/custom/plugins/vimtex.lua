return {
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.cmd [[
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmgs'
let g:tex_conceal_frac=1

let g:vimtex_ui_method = {
      \ 'confirm': 'nvim',
      \ 'input': 'nvim',
      \ 'select': 'nvim',
      \}

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
let g:vimtex_indent_lists = []
      ]]
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
        pattern = { '*.tex' },
        callback = function()
          vim.keymap.set(
            'n',
            '<leader>lp',
            [[:read ~/AppData/Local/nvim/skeletons/tex/preamb.tex<CR>]],
            { noremap = true, silent = true, buffer = true, desc = 'Read [P]reamble' }
          )
        end,
      })
    end,
  },
}
