BITS 32

extern printf

section .rodata
	hello: db "Hello world!", 10, 0   ;creating variable

section .text
	global main

main:
	push ebp	;setting base pointer
	mov ebp, esp	;setting stack pointer
	sub esp, 0x4	;specifying the memory recqured

	push hello	;pushing the variable with the string
	call printf	;calling the print function

	leave
	ret
	
	
	
