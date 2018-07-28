	global	_ft_strcpy
	extern	_ft_strlen

	section	.text
_ft_strcpy:
	cmp		rsi, 0
	je		src_null
	push	rdi
	push	rdi	; save dst address
	push	rsi
	mov		rdi, rsi
	call	_ft_strlen
	mov		rcx, rax
	pop		rsi
	pop		rdi
rep movsb
	mov		byte [rdi], 0
	pop		rax
	ret

src_null:
	xor		rax, rax
	ret
