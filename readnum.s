    .global main

    .text
main:
    #write "enter num" message
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message1, %rsi      # address of message
    mov $21, %rdx       # write 21 bytes
    syscall

    #take in num from command line
    mov $0, %rax    # 0 is system call id for read?
    mov $0, %rdi    # 0 is fd for stdin
    mov $num, %rsi  # load buffer address into rsi
    mov $100 %rdx   # move size of buffer into rdx

    #write the number
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message2, %rsi      # address of message
    mov $18, %rdx       # write 18 bytes
    syscall



    .data
message1: .ascii "Please enter a number: "
message2: .ascii "You have entered: "
num: .zero 100
