	global	_ft_memcpy

	section	.text
_ft_memcpy:
	cmp		rsi, 0
	je		src_null
	push	rdi
	mov		rcx, rdx
rep movsb
	pop		rax
	ret

src_null:
	xor		rax, rax
	ret
