	global	_ft_sum

	section	.text
_ft_sum:
	xor		rax, rax
	add		rax, rdi
	add		rax, rsi
	ret
