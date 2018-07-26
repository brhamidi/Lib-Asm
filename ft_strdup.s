	global	_ft_strdup
	extern	_malloc
	extern	_ft_strlen
	extern	_ft_memcpy

	section .text
_ft_strdup:
	push	rdi 		; save src address for memcpy
	call	_ft_strlen
	mov		rdi, rax 	; mov length for malloc
	push	rax			; save length for memcpy
	push	rbp			; to align
	inc		rdi
	call	_malloc
	pop		rbp
	pop		rdx
	pop		rsi 		; src parameter for memcpy ok
	mov		rdi, rax 	; dst parameter for memcpy ok
	push	rdi 		; align stack and save dst
	mov		byte [rdi + rdx], 0
	call	_ft_memcpy
	pop		rax
	ret
