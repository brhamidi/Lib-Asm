	global	_ft_isascii
	section	.text
_ft_isascii:
	cmp		rdi, 0
	jl		unmatch
	cmp		rdi, 127
	jg		unmatch
	mov		rax, 1
	ret

unmatch:
	mov		rax, 0
	ret
