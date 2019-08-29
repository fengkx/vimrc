if executable('raco')
	let b:ale_linters = ['raco']
else
	echo 'pls install executable raco'
endif
if executable('racket')
	:nnoremap <F5> <Esc><Esc>:w<CR>:!racket %<CR>
else
	echo 'pls install executable racket'
endif

