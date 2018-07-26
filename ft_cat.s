	global	_ft_cat

; ssize_t read(int fildes, void *buf, size_t nbyte)

	section	.text
_ft_cat:
	mov     rax, 0x02000003
	lea		rsi, [rel buf]
	mov		rdx, len
	syscall
	cmp		rax, 0
	je		end
	jl		error

work:
	push	rdi
	mov     rax, 0x02000004
	mov		rdi, 1
	lea		rsi, [rel buf]
	mov		rdx, len
	syscall
	pop		rdi
	mov     rax, 0x02000003
	lea		rsi, [rel buf]
	mov		rdx, len
	syscall
	cmp		rax, 0
	je		end
	jl		error
	jmp		work

error:
	mov		rax, 1
	ret

end:
	ret

	section		.bss
len		equ		10
buf:	resb	len
