	global	_ft_tolower

	section	.text
_ft_tolower:
	cmp		rdi, 65
	jl 		error
	cmp		rdi, 90
	jg		error
	mov		rax, 97
	sub		rdi, 65
	add		rax, rdi
	ret

error:
	mov		rax, rdi
	ret
