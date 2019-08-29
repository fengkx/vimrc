if executable('csslint') && executable('prettier')
	let b:ale_linters = ['csslint', 'prettier']
	let b:ale_fixers = ['prettier']
else
	echo('pls install executable csslint and prettier')
endif
