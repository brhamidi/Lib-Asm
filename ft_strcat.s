	global _ft_strcat

	section	.text
_ft_strcat:
	mov		r8, rdi
	mov		r9, [rsi]
	cmp		r9, 0
	je		done
	mov		r11, [rdi]
	cmp		r11, 0
	je		concat

skip:
	inc		rdi
	mov		r11, [rdi]
	cmp 	r11, 0
	jne		skip

concat:
	mov		r9, [rsi]
	mov		[rdi], r9
	inc		rsi
	inc		rdi
	cmp		r9, 0
	jne		concat

done:
	mov		rax, r8
	ret
