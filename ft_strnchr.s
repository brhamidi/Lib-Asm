
	global	_ft_strnchr

	section		.text

_ft_strnchr:
	mov		r9, 0

work:
	cmp		r9, rdx
	je		end
	cmp		byte [rdi], 0
	je		end
	cmp		[rdi], sil
	je		found
	inc		rdi
	inc		r9
	jmp		work

end:
	mov		rax, 0
	ret

found:
	mov		rax, rdi
	ret
