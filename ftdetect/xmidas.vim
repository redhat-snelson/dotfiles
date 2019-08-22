fun! s:DetectXMidas()
	if getline(1) == '! -*-xmidas-*-'
		set ft=xmidas
	endif
endfun

autocmd BufNewFile,BufRead * call s:DetectXMidas()

