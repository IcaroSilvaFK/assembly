bits 64

section .rodata 
  msg: db `Hello World!\n`
  MSG_SIZE equ $-msg

; section .text

global _main 
  _main:
    xor rcx,rcx
    nop
    jmp println
    inc rcx
    cmp, rcx,10
    jle for
    jmp exit


  println:;função para imprimir
    mov rax, 0x01
    mov rdi, 1
    mov rsi, msg
    mov rdx, MSG_SIZE
    syscall
    ret

  exit: ;função para encerrar
    mov rax, 0x3c
    mov rdi, 0
    syscall

  for:;função para repetir
    mov rcx,4
    nop
    loop for
  
  kill:;função para matar o processo
    mov rax,0x3e
    mov rdi, rax
    syscall
    ret
  
  mkdir: ;função para criar um diretorio
    mov rax, 0x53
    mov rdi, rax
    syscall
    ret
  
  rmdir: ;função para remover um diretorio
    mov rax, 054
    mov rdi, rax
    syscall
    ret