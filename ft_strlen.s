	global	_ft_strlen

	section	.text
_ft_strlen:
		mov		rcx, 0
		mov		al, 0
		cld
 repne	scasb
		mov		rax, rcx
		ret
