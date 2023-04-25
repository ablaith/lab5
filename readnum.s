    .global main

    .text
main:
    #write "enter num" message
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message, %rsi      # address of message
    mov $21, %rdx       # write 21 bytes
    syscall





    .data
message: .ascii "Please enter a number\n"