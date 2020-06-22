
openssl_crypto_dump/libfips-lib-core_algorithm.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <algorithm_do_this>:
push   %r15
push   %r14
mov    %rsi,%r15
push   %r13
push   %r12
mov    %rdi,%r12
push   %rbp
push   %rbx
sub    $0x28,%rsp
mov    0x8(%rsi),%r13d
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
movl   $0x0,0x10(%rsp)
test   %r13d,%r13d
mov    %r13d,%ebp
jne    43 <algorithm_do_this+0x43>
mov    $0x14,%r13d
mov    $0x1,%ebp
lea    0x10(%rsp),%rax
movl   $0x0,0x4(%rsp)
lea    0x14(%rsp),%r14
mov    %rax,0x8(%rsp)
jmp    8a <algorithm_do_this+0x8a>
nopl   0x0(%rax)
mov    0x28(%r15),%rdx
mov    %r14,%rcx
mov    %ebp,%esi
mov    %r12,%rdi
callq  *%rax
test   %eax,%eax
je     14d <algorithm_do_this+0x14d>
mov    0x14(%rsp),%edx
test   %edx,%edx
jne    9b <algorithm_do_this+0x9b>
add    $0x1,%ebp
cmp    %ebp,%r13d
jl     118 <algorithm_do_this+0x118>
mov    0x10(%r15),%rax
test   %rax,%rax
jne    60 <algorithm_do_this+0x60>
movl   $0x1,0x14(%rsp)
mov    0x8(%rsp),%rdx
mov    %ebp,%esi
mov    %r12,%rdi
callq  aa <algorithm_do_this+0xaa>
test   %rax,%rax
mov    %rax,%rsi
jne    ce <algorithm_do_this+0xce>
jmp    7e <algorithm_do_this+0x7e>
nopl   0x0(%rax)
lea    0x18(%rsi),%rbx
mov    0x28(%r15),%rcx
mov    0x10(%rsp),%edx
mov    %r12,%rdi
callq  *0x18(%r15)
mov    %rbx,%rsi
cmpq   $0x0,(%rsi)
jne    b8 <algorithm_do_this+0xb8>
mov    0x20(%r15),%rax
test   %rax,%rax
je     140 <algorithm_do_this+0x140>
mov    0x28(%r15),%rcx
mov    %r14,%r8
mov    0x10(%rsp),%edx
mov    %ebp,%esi
mov    %r12,%rdi
callq  *%rax
test   %eax,%eax
je     14d <algorithm_do_this+0x14d>
mov    0x14(%rsp),%eax
test   %eax,%eax
mov    $0x1,%eax
cmove  0x4(%rsp),%eax
add    $0x1,%ebp
cmp    %ebp,%r13d
mov    %eax,0x4(%rsp)
jge    8a <algorithm_do_this+0x8a>
nopl   0x0(%rax,%rax,1)
mov    0x4(%rsp),%eax
mov    0x18(%rsp),%rdi
xor    %fs:0x28,%rdi
jne    151 <algorithm_do_this+0x151>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
movl   $0x1,0x4(%rsp)
jmpq   7e <algorithm_do_this+0x7e>
xor    %eax,%eax
jmp    11c <algorithm_do_this+0x11c>
callq  156 <algorithm_do_this+0x156>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000160 <ossl_algorithm_do_all>:
push   %rbx
mov    %rdi,%r11
mov    %rcx,%rbx
mov    $0x6,%ecx
sub    $0x40,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
mov    %rsp,%rdi
test   %rdx,%rdx
rep stos %rax,%es:(%rdi)
mov    0x50(%rsp),%rax
mov    %r11,(%rsp)
mov    %esi,0x8(%rsp)
mov    %rbx,0x10(%rsp)
mov    %r8,0x18(%rsp)
mov    %r9,0x20(%rsp)
mov    %rax,0x28(%rsp)
je     1d0 <ossl_algorithm_do_all+0x70>
mov    %rsp,%rsi
mov    %rdx,%rdi
callq  0 <algorithm_do_this>
mov    0x38(%rsp),%rax
xor    %fs:0x28,%rax
jne    1e4 <ossl_algorithm_do_all+0x84>
add    $0x40,%rsp
pop    %rbx
retq   
nopl   (%rax)
lea    -0x1d7(%rip),%rsi        # 0 <algorithm_do_this>
mov    %rsp,%rdx
mov    %r11,%rdi
callq  1e2 <ossl_algorithm_do_all+0x82>
jmp    1b7 <ossl_algorithm_do_all+0x57>
callq  1e9 <ossl_algorithm_do_all+0x89>
