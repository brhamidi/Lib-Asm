	global	_ft_isprint
	section	.text
_ft_isprint:
	cmp		rdi, 32
	jl		unmatch
	cmp		rdi, 126
	jg		unmatch
	mov		rax, 1
	ret

unmatch:
	mov		rax, 0
	ret
