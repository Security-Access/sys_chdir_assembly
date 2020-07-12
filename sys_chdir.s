BITS 64

global _start
section .rodata

	directory db "name_of_dir", 0

section .text

_start:
	mov rax, 80
	mov rdi, directory
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
