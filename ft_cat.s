	global	_ft_cat

; ssize_t read(int fildes, void *buf, size_t nbyte)
; ssize_t write(int fildes, const void *buf, size_t nbyte);

	section	.text
_ft_cat:
	cmp		rdi, 0
	jl		error
	push	rdi
	mov     rax, 0x02000003 ; read syscall number
	lea		rsi, [rel buf]
	mov		rdx, len
	syscall
	pop		rdi
	jc		error
	cmp		rax, 0
	je		end
	jl		error

work:
	push	rdi
	mov		rdx, rax		; set len paramter for write syscall
	mov     rax, 0x02000004 ; write syscall number
	mov		rdi, 1
	lea		rsi, [rel buf]
	syscall
	pop		rdi
	mov     rax, 0x02000003
	lea		rsi, [rel buf]
	mov		rdx, len
	syscall
	jc		error
	cmp		rax, 0
	je		end
	jl		error
	jmp		work

error:
	mov		rax, -1
	ret

end:
	ret

	section		.bss
len		equ		256
buf:	resb	len
