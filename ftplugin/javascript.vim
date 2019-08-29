if executable('eslint')
	let b:ale_linters = ['eslint']
else
	echo('pls install executable eslint')
endif

if executable('node')
	nnoremap <F5> <Esc><Esc>:w<CR>:!node %<CR>
endif
