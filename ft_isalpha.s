	global	_ft_isalpha
	section	.text
_ft_isalpha:
	cmp		rdi, 65
	jl		unmatch
	cmp		rdi, 65 + 26 - 1
	jg		checkupper
	jmp		done

checkupper:
	cmp		rdi, 97
	jl		unmatch
	cmp		rdi, 97 + 26 - 1
	jg		unmatch
	jmp	done

unmatch:
	mov		rax, 0
	ret

done:
	mov		rax, 1
	ret
