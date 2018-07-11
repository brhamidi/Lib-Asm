	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

	section	.text
_ft_isalnum:
	push	rbx
	call	_ft_isdigit
	cmp		rax, 1
	jne		unmatch
	call	_ft_isalpha
	cmp		rax, 1
	jne		unmatch
	jmp		done

unmatch:
	mov		rax, 0
	jmp		done;

done:
	pop		rbx
	ret
