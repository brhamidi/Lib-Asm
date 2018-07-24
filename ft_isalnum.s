	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

	section	.text
_ft_isalnum:
	push	rbx
	call	_ft_isdigit
	pop		rbx
	cmp		rax, 0
	je		unmatch
	ret

unmatch:
	push	rbx
	call	_ft_isalpha
	pop		rbx
	ret
