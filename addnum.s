        .global main
    .text
main:

    #write "enter num" message
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message1, %rsi      # address of message
    mov $23, %rdx       # write 21 bytes
    syscall

    # take in num from command line
    mov $0, %rax    # 0 is system call id for read?
    mov $0, %rdi    # 0 is fd for stdin
    mov %r8, %rsi  # load buffer address into rsi, store num 1 into r8
    syscall

    #write "enter num" message
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message1, %rsi      # address of message
    #mov $23, %rdx       # write 21 bytes
    syscall

    # take in num from command line
    mov $0, %rax    # 0 is system call id for read?
    mov $0, %rdi    # 0 is fd for stdin
    mov %r9, %rsi  # load buffer address into rsi, store num 2 into r9
    syscall

    add %r8, %r9        # add r8 to r9, store into r8
    # mov %r8, $res   # move result in r8 into res
    # add %r8, $'0'   # convert result into printable char

    #write "Result is: " message
    mov $1, %rax        # 1 is system call id for write
    mov $1, %rdi        # 1 is fd for stdout
    mov $message2, %rsi      # address of message
    # mov $21, %rdx       # write 21 bytes
    syscall

    mov $r8, %rsi   # move result into rsi
    call printf
    syscall

    mov $newline, %rsi   # move newline into rsi    
    syscall

    # exit(42)
    mov     $60, %rax        # 60 is system call id for exit
    mov     $33, %rdi        # 42 is the exit value
    syscall

.data
res: .zero 100;
message1: .ascii "Please enter a number: "
message2: .ascii "Result is: "
newline: .ascii "\n"
