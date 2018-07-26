	global	_ft_strlen

	section	.text
_ft_strlen:
	xor		al, al
	mov		rcx, -1
	repne	scasb
	mov		rax, rcx
	neg		rax
	sub		rax, 2
	ret
