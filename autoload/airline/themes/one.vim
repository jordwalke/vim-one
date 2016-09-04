let g:airline#themes#one#palette = {}

function! airline#themes#one#refresh()
  let g:airline#themes#one#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffAdd', 'fg'], 'none')
  let s:N2 = airline#themes#get_highlight('Pmenu')
  let s:N3 = airline#themes#get_highlight('CursorLine')
  let g:airline#themes#one#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('Normal')
  let g:airline#themes#one#palette.normal_modified = g:airline#themes#one#palette.normal

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffLine', 'fg'], 'none')
  let s:I2 = airline#themes#get_highlight2(['MoreMsg', 'fg'], ['Normal', 'bg'])
  let s:I3 = s:N3
  let g:airline#themes#one#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#one#palette.insert_modified = g:airline#themes#one#palette.normal

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Error', 'fg'], 'none')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#one#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#one#palette.replace_modified = g:airline#themes#one#palette.normal

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'none')
  let s:V2 = airline#themes#get_highlight2(['Constant', 'fg'], ['Normal', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#one#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#one#palette.visual_modified = g:airline#themes#one#palette.normal

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
  let g:airline#themes#one#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#one#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  " Warnings
  let s:WI = airline#themes#get_highlight2(['WarningMsg', 'bg'], ['WarningMsg', 'fg'], 'bold')
  let g:airline#themes#one#palette.normal.airline_warning = [
       \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
       \ ]

  let g:airline#themes#one#palette.normal_modified.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning


  let g:airline#themes#one#palette.insert.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning

  let g:airline#themes#one#palette.insert_modified.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning

  let g:airline#themes#one#palette.visual.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning

  let g:airline#themes#one#palette.visual_modified.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning

  let g:airline#themes#one#palette.replace.airline_warning =
      \ g:airline#themes#one#palette.normal.airline_warning

  let g:airline#themes#one#palette.replace_modified.airline_warning =
      \ g:airline#themes#base16#palette.normal.airline_warning


endfunction

call airline#themes#one#refresh()

