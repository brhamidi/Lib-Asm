	global	_ft_isdigit
	section	.text
_ft_isdigit:
	cmp		rdi, 48
	jl		unmatch
	cmp		rdi, 57
	jg		unmatch
	mov		rax, 1
	ret

unmatch:
	mov		rax, 0
	ret
