if executable('htmlhint') && executable('prettier')
	let b:ale_linters = ['htmlhint', 'prettier']
	let b:ale_fixers = ['prettier']
else
	echo('pls install executable htmlhint prettier')
endif
