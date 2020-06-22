
openssl_crypto_dump/libcrypto-shlib-bsearch.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ossl_bsearch>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x28,%rsp
cmp    $0x0,%edx
mov    %rdi,(%rsp)
mov    %rsi,0x8(%rsp)
mov    %ecx,0x14(%rsp)
mov    %r9d,0x18(%rsp)
je     128 <ossl_bsearch+0x128>
jle    130 <ossl_bsearch+0x130>
mov    %edx,%r13d
mov    %r8,%r12
xor    %ebp,%ebp
jmp    4b <ossl_bsearch+0x4b>
nopl   0x0(%rax)
je     b0 <ossl_bsearch+0xb0>
lea    0x1(%r14),%ebp
cmp    %ebp,%r13d
jle    85 <ossl_bsearch+0x85>
lea    0x0(%r13,%rbp,1),%eax
mov    0x14(%rsp),%r15d
mov    (%rsp),%rdi
mov    %eax,%ecx
shr    $0x1f,%ecx
add    %eax,%ecx
sar    %ecx
imul   %ecx,%r15d
mov    %ecx,%r14d
mov    %ecx,%ebx
movslq %r15d,%r15
add    0x8(%rsp),%r15
mov    %r15,%rsi
callq  *%r12
test   %eax,%eax
jns    40 <ossl_bsearch+0x40>
mov    %r14d,%r13d
cmp    %ebp,%r13d
jg     4b <ossl_bsearch+0x4b>
test   %eax,%eax
je     b0 <ossl_bsearch+0xb0>
testb  $0x1,0x18(%rsp)
je     128 <ossl_bsearch+0x128>
mov    %r15,%r8
add    $0x28,%rsp
mov    %r8,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
testb  $0x2,0x18(%rsp)
mov    %r15,%r8
je     97 <ossl_bsearch+0x97>
test   %r14d,%r14d
jle    94 <ossl_bsearch+0x94>
mov    0x14(%rsp),%esi
lea    -0x1(%r14),%edx
mov    %esi,%eax
neg    %eax
cltq   
imul   %esi,%edx
mov    %rax,%r13
mov    0x8(%rsp),%rax
movslq %edx,%rdx
lea    (%rax,%rdx,1),%r15
jmp    f1 <ossl_bsearch+0xf1>
nopl   0x0(%rax)
add    %r13,%r15
test   %ebp,%ebp
mov    %ebp,%ebx
je     97 <ossl_bsearch+0x97>
mov    %r15,%rsi
mov    %r15,0x18(%rsp)
mov    (%rsp),%rdi
callq  *%r12
test   %eax,%eax
lea    -0x1(%rbx),%ebp
mov    0x18(%rsp),%r8
je     e8 <ossl_bsearch+0xe8>
imul   0x14(%rsp),%ebx
mov    0x8(%rsp),%r8
movslq %ebx,%rax
add    %rax,%r8
jmpq   97 <ossl_bsearch+0x97>
nopl   0x0(%rax)
xor    %r8d,%r8d
jmpq   97 <ossl_bsearch+0x97>
testb  $0x2,0x18(%rsp)
je     128 <ossl_bsearch+0x128>
mov    %rsi,%r15
jmpq   94 <ossl_bsearch+0x94>
