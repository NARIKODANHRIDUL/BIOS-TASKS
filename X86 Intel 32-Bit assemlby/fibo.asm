BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	output: db "Fibonacci is  : %d",10,0
	ask: db "Enter number  : ",0
	
section .text
	global main
main:
	push ebp		;setting base pointer
	mov ebp, esp		;setting stack pointer
	sub esp, 0x8		;specifying the memory required
	push ask		;asking user for input
	call printf		;printing	
	lea eax, [ebp-0x4] 
	push eax         
	push fmt	   
	call scanf	  	;taking input from user
	mov eax, dword [ebp-0x4]  ;eax = user_input value
	mov ebx, 0
	mov ecx, 1 
	mov edx, 0 		;initialising edx with 0(when input is 1)
	cmp eax, 1		;if eax(input) = 1
	je fibo		;if yes, jump to fibo with answer as zero(in edx)
	mov edx, 1		;edx = 1 (when input is 2)
loop:
	cmp eax, 2		;if eax=2
	je fibo		;if yes, jump to fibo
	mov edx, 0		;resetting edx value for further use
	add edx, ecx		;edx = edx + ecx
	add edx, ebx		;edx = edx + ebx
	mov ebx, ecx		;ebx = ecx
	mov ecx, edx		;ecx = edx
	dec eax		;eax-- (eax act as the counter here)
	jmp loop		;for looping
fibo: 
	push edx		;push edx (nth fibonacci number)
	push output		;pushing the string to be printed
	call printf		;printing
	leave			;exiting from the program
	ret
	
	
	
	
