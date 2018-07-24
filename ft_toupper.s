	global	_ft_toupper

	section	.text
_ft_toupper:
	cmp		rdi, 97
	jl 		error
	cmp		rdi, 122
	jg		error
	mov		rax, 65
	sub		rdi, 97
	add		rax, rdi
	ret

error:
	mov		rax, rdi
	ret
