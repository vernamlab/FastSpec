
openssl_crypto_dump/libcrypto-shlib-core_fetch.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ossl_method_construct_this>:
push   %r14
push   %r13
mov    %edx,%r14d
push   %r12
push   %rbp
mov    %rsi,%rbp
push   %rbx
mov    0x18(%rcx),%rax
mov    %rdi,%rsi
mov    %rdi,%r13
mov    %rcx,%rbx
mov    0x20(%rcx),%rdx
mov    %rbp,%rdi
callq  *0x20(%rax)
test   %rax,%rax
je     a8 <ossl_method_construct_this+0xa8>
mov    0x14(%rbx),%edi
mov    %rax,%r12
test   %edi,%edi
jne    80 <ossl_method_construct_this+0x80>
test   %r14d,%r14d
je     80 <ossl_method_construct_this+0x80>
mov    0x18(%rbx),%rax
pushq  0x20(%rbx)
mov    %r12,%rdx
pushq  0x8(%rbp)
mov    0x8(%rbx),%rsi
mov    %r13,%rcx
mov    (%rbx),%rdi
mov    0x0(%rbp),%r9
mov    0x10(%rbx),%r8d
callq  *0x18(%rax)
pop    %rax
mov    0x18(%rbx),%rax
mov    0x20(%rbx),%rsi
mov    %r12,%rdi
pop    %rdx
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
mov    0x28(%rax),%rax
jmpq   *%rax
nopw   %cs:0x0(%rax,%rax,1)
mov    0x18(%rbx),%rax
pushq  0x20(%rbx)
mov    %r13,%rcx
pushq  0x8(%rbp)
xor    %esi,%esi
mov    0x0(%rbp),%r9
mov    0x10(%rbx),%r8d
mov    %r12,%rdx
mov    (%rbx),%rdi
callq  *0x18(%rax)
pop    %rcx
pop    %rsi
jmp    39 <ossl_method_construct_this+0x39>
nopl   0x0(%rax)
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

00000000000000c0 <ossl_method_construct_postcondition>:
sub    $0x8,%rsp
test   %r8,%r8
je     f0 <ossl_method_construct_postcondition+0x30>
test   %edx,%edx
movl   $0x1,(%r8)
mov    $0x1,%eax
jne    e9 <ossl_method_construct_postcondition+0x29>
movslq %esi,%rsi
callq  e1 <ossl_method_construct_postcondition+0x21>
test   %eax,%eax
setne  %al
movzbl %al,%eax
add    $0x8,%rsp
retq   
xchg   %ax,%ax
callq  f5 <ossl_method_construct_postcondition+0x35>
lea    0x0(%rip),%rdx        # fc <ossl_method_construct_postcondition+0x3c>
lea    0x0(%rip),%rdi        # 103 <ossl_method_construct_postcondition+0x43>
mov    $0x36,%esi
callq  10d <ossl_method_construct_postcondition+0x4d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  120 <ossl_method_construct_postcondition+0x60>
xor    %eax,%eax
jmp    e9 <ossl_method_construct_postcondition+0x29>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000130 <ossl_method_construct_precondition>:
test   %rcx,%rcx
push   %rbx
je     160 <ossl_method_construct_precondition+0x30>
movslq %esi,%rsi
mov    %rcx,%rdx
mov    %rcx,%rbx
callq  144 <ossl_method_construct_precondition+0x14>
test   %eax,%eax
je     158 <ossl_method_construct_precondition+0x28>
mov    (%rbx),%edx
xor    %eax,%eax
test   %edx,%edx
sete   %al
mov    %eax,(%rbx)
mov    $0x1,%eax
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)
callq  165 <ossl_method_construct_precondition+0x35>
lea    0x0(%rip),%rdx        # 16c <ossl_method_construct_precondition+0x3c>
lea    0x0(%rip),%rdi        # 173 <ossl_method_construct_precondition+0x43>
mov    $0x20,%esi
callq  17d <ossl_method_construct_precondition+0x4d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  190 <ossl_method_construct_precondition+0x60>
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000001a0 <ossl_method_construct>:
push   %r15
push   %r14
mov    %edx,%r15d
push   %r13
push   %r12
mov    %esi,%r14d
push   %rbp
push   %rbx
xor    %esi,%esi
mov    %rdi,%r12
mov    %rcx,%rbp
mov    %r8,%r13
sub    $0x38,%rsp
mov    %r8,%rdx
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
callq  *0x10(%rcx)
test   %rax,%rax
mov    %rax,%rbx
je     208 <ossl_method_construct+0x68>
mov    0x28(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    %rbx,%rax
jne    27c <ossl_method_construct+0xdc>
add    $0x38,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdi
callq  *0x0(%rbp)
test   %rax,%rax
mov    %rax,0x8(%rsp)
je     1dd <ossl_method_construct+0x3d>
mov    %r12,(%rsp)
mov    %r14d,0x10(%rsp)
sub    $0x8,%rsp
mov    %r15d,0x1c(%rsp)
mov    %rbp,0x20(%rsp)
lea    -0x176(%rip),%r9        # c0 <ossl_method_construct_postcondition>
mov    %r13,0x28(%rsp)
lea    0x8(%rsp),%rax
lea    -0x247(%rip),%r8        # 0 <ossl_method_construct_this>
lea    -0x11e(%rip),%rcx        # 130 <ossl_method_construct_precondition>
xor    %edx,%edx
mov    %r14d,%esi
push   %rax
mov    %r12,%rdi
callq  25c <ossl_method_construct+0xbc>
mov    0x18(%rsp),%rsi
mov    %r13,%rdx
mov    %r12,%rdi
callq  *0x10(%rbp)
mov    0x18(%rsp),%rdi
mov    %rax,%rbx
callq  *0x8(%rbp)
pop    %rax
pop    %rdx
jmpq   1dd <ossl_method_construct+0x3d>
callq  281 <ossl_method_construct+0xe1>
