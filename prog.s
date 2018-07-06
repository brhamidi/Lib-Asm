
	global _start
	section	.text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, str
	mov rdx, strlen
	syscall
	mov rax, 60
	xor rdi, rdi
	syscall

	section .data
str:	db 'Hello Brams !', 10
strlen:	equ 14
