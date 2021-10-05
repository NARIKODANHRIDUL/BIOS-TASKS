BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0     	;fmt is almost like a variable
	output: db "The sum is  : %d",10,0
	n1: db "Enter num 1 : ",0
	n2: db "Enter num 2 : ",0

section .text
	global main

main:
	push ebp	;setting base pointer
	mov ebp, esp	;setting stack pointer
	sub esp, 0x10	;specifying the memory required
	
	push n1
	call printf
	lea eax, [ebp-0x4]  ;its like mov fn. with pointers
	push eax            ;unlike scanf("%d",<variable>)...
	push fmt	    ;...the order of using %d and ...
	call scanf	    ;...variable is altered

	push n2
	call printf
	lea edx, [ebp-0x8] 
	push edx           	
	push fmt	   
	call scanf
	
	mov ebx, dword [ebp-0x4]  ;dword takes actual value from the...
	mov eax, dword [ebp-0x8]  ;...pointer variable
	add eax, ebx		   ; adding 

	push eax	;pushing the sum
	push output
	call printf

	leave
	ret
	
	
	
	
