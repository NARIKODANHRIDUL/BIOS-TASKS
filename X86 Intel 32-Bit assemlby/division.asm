BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0     ;fmt is almost like a variable
	quo: db "The quotient is        : %d",10,0
	rem: db "The reminder is        : %d",10,0
	n1: db "Enter num 1 (divident) : ",0
	n2: db "Enter num 2 (divisor)  : ",0

section .text
	global main

main:
	push ebp
	mov ebp, esp
	sub esp, 0x8

	push n1
	call printf
	lea eax, [ebp-0x8]
	push eax
	push fmt
	call scanf

	push n2
	call printf
	lea ecx, [ebp-0x4]  ;its like mov fn. with pointers
	push ecx            ;unlike scanf("%d",<variable>)...
	push fmt	     ;...the order of using %d and ...
	call scanf	     ;...variable is altered

	mov edx, 0
	mov ecx, dword [ebp-0x4] 
	mov eax, dword [ebp-0x8] 
	div ecx		  
	
	mov ebx, edx
	push eax
	push quo
	call printf
	
	push ebx
	push rem
	call printf
	
	leave
	ret
	
	
;mov edx,0 ; clear dividend, high
;mov eax,8003h ; dividend, low
;mov ecx,100h ; divisor
;div ecx ; EAX = 00000080h, EDX = 3
		
	
