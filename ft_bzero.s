	global	_ft_bzero

	section	.text
_ft_bzero:
	mov		rcx, 0
	cmp		rcx, rsi
	jne		loop
	jmp		done

loop:
	mov		byte [rdi], 0
	inc		rdi
	inc		rcx
	cmp		rcx, rsi
	jne 	loop

done:
	ret
