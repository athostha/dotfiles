

function Selectblock()
	let number = line('.')
	let line = getline('.')
	if line[-1:]==":"
		let number = number + 1
	endif
	let pi = indent(number)
	let gnumber = number
	let snumber = number
	let coun = 1
	while 1
		let th = number+coun
		if indent(th)>=pi
			let gnumber = th
		else
			break
		endif
		let coun = coun + 1
	endwhile
	let coun = 1
	while 1
		let th = number-coun
		if indent(th)>=pi
			let snumber = th
		else
			let snumber = th
			break
		endif
		let coun = coun + 1
	endwhile
	return [snumber, gnumber]
endfunction
function Deleteblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."d"
endfunction
function Yankblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."y"
endfunction
function Substituteblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."c"
endfunction


