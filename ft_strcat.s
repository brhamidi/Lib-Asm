	global _ft_strcat
	extern	_ft_strlen

	section	.text
_ft_strcat:
	push	rbp	; to align satck
	push	rdi
	push	rsi
	call	_ft_strlen
	mov		r8, rax
	pop		rdi
	push	rdi
	push	r8
	push	rbp
	call	_ft_strlen
	pop		rbp
	pop		r8
	mov		rcx, rax
	pop		rsi
	pop		rdi
	push	rdi
	add		rdi, r8
rep	movsb
	pop		rax
	pop		rbp
	ret
