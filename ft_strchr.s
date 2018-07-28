	global	_ft_strchr

	section		.text

_ft_strchr:

work:
	cmp		[rdi], sil
	je		found
	cmp		byte [rdi], 0
	je		end
	inc		rdi
	jmp		work

end:
	mov		rax, 0
	ret

found:
	mov		rax, rdi
	ret
