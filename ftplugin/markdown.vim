if executable('proselint') && executable('prettier')
	let b:ale_linters = ['proselint', 'prettier']
	let b:ale_fixers = ['prettier']
else
	echo('pls install executable prettier proselint')
endif
