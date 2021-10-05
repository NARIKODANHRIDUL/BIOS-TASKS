BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0     
	ask: db "Enter number  :",0
	ya: db "PRIME",10,0
	no: db "NOT PRIME",10,0

section .text
	global main
	
main:
	push ebp		;setting base pointer
	mov ebp, esp		;setting stack pointer
	sub esp, 0x4		;specifying the memory required
	
	push ask		;asking user for input
	call printf		;printing
	lea eax, [ebp-0x4]	;loading the address to eax
	push eax		
	push fmt		
	call scanf		;taking input from user
	cmp dword[ebp-0x4],2	;checking if the input is 2
	je ysprm		;if yes then jumping to ysprm
	mov edx, 0		; edx = 0  for taking reminder value
	mov ecx, 2		; ecx = 2
	mov eax, dword [ebp-0x4]  ; eax = user input
	div ecx			;diving userinput/2  (we only need ...
				;...to divide user input with n/2 or less
	cmp edx,0		;checking if edx(or reminder)=0 ?
	je noprm		;if yes jumping to nprm
	mov ecx, eax		; ecx = quotient (n/2 will be the start of counter)

loop:
	mov eax, dword [ebp-0x4]    ; eax = user input	
	xor edx, edx		; similar to edx = 0
	div ecx	
			
	cmp edx, 0		;checking if the reminder is 
	je noprm
	dec ecx		;decrementing counter 
	cmp ecx, 1		;checking if the counter variable became 1
	je ysprm
	jmp loop		;calling loop again (for iteration)

noprm:
	push no		;for printing "NOT PRIME"
	call printf		;printing
	leave			;exiting from program
	ret

ysprm:
	push ya		;for printing "PRIME"
	call printf		;printing
	leave			;exiting from program
	ret	

	
	
	
