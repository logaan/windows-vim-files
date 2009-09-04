function! LocationListFind(glob)
	let l:oldformat = &errorformat
	set errorformat=%f

	let l:results = glob(a:glob)
	if strlen(l:results) == 0
		echo "No matches found for: " a:glob
	else
		lexpr l:results
	endif

	let &errorformat = l:oldformat
endfunction

function! LocationListFindCompletion(ArgLead, CmdLine, CursorPos)
	let l:results = glob(join([a:ArgLead, "*"], ""))
	let l:fixed_results = substitute(l:results, "\\", "\/", "g")
	return l:fixed_results
endfunction

command! -nargs=+ -complete=custom,LocationListFindCompletion F :call LocationListFind("<args>")

