	global	_ft_puts

	section	.text
_ft_puts:
	cmp		rdi, 0
	je		null
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

null:
	mov		rax, 0x02000004
	mov		rdi, 1
	lea		rsi, [rel msg_err]
	mov		rdx, 7
	syscall
	ret

	section	.data
newline: db		10
msg_err: db		"(null)", 10
