	global	_ft_puts

	section	.text
_ft_puts:
	mov		r9, rdi
	mov		rcx, 0
	cmp		byte [rdi], 0
	je		nl

len:
	inc		rcx
	inc		rdi
	cmp		byte [rdi], 0
	jne		len

print:
	mov		rax, 0x02000004
	mov		rdi, 1
	mov		rsi, r9
	mov		rdx, rcx
	syscall

nl:
	mov		rax, 0x02000004
	mov		rdi, 1
	lea		rsi, [rel newline]
	mov		rdx, 1
	syscall
	mov		rax, 10
	ret

	section	.data
newline: db		10
