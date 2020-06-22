
openssl_crypto_dump/libcrypto-lib-o_time.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OPENSSL_gmtime>:
push   %rbx
mov    %rsi,%rbx
callq  9 <OPENSSL_gmtime+0x9>
test   %rax,%rax
cmovne %rbx,%rax
pop    %rbx
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <OPENSSL_gmtime_adj>:
mov    %rdx,%rcx
movabs $0x1845c8a0ce512957,%rdx
push   %rbx
mov    %rcx,%rax
imul   %rdx
mov    %rcx,%rax
sar    $0x3f,%rax
imul   $0xe10,0x8(%rdi),%r8d
sar    $0xd,%rdx
sub    %rax,%rdx
imul   $0x3c,0x4(%rdi),%eax
add    %edx,%esi
imul   $0xfffeae80,%edx,%edx
add    %ecx,%edx
add    %eax,%r8d
add    (%rdi),%r8d
add    %edx,%r8d
cmp    $0x1517f,%r8d
jle    2b0 <OPENSSL_gmtime_adj+0x290>
add    $0x1,%esi
sub    $0x15180,%r8d
mov    0x10(%rdi),%ebx
mov    $0x2aaaaaab,%ecx
mov    0x14(%rdi),%r10d
movslq %esi,%rsi
lea    -0xd(%rbx),%r9d
mov    %r9d,%eax
sar    $0x1f,%r9d
imul   %ecx
sar    %edx
mov    %edx,%r11d
sub    %r9d,%r11d
sub    %edx,%r9d
lea    (%r9,%r9,2),%eax
lea    -0x1(%rbx,%rax,4),%r9d
imul   $0x16f,%r9d,%r9d
mov    %r9d,%eax
sar    $0x1f,%r9d
imul   %ecx
lea    0x1a2c(%r10,%r11,1),%ecx
imul   $0x5b5,%ecx,%ecx
sar    %edx
sub    %r9d,%edx
lea    0x1a90(%r10,%r11,1),%r9d
lea    0x3(%rcx),%eax
test   %ecx,%ecx
cmovs  %eax,%ecx
mov    %r9d,%eax
sar    $0x1f,%r9d
sar    $0x2,%ecx
add    %edx,%ecx
mov    $0x51eb851f,%edx
imul   %edx
sar    $0x5,%edx
sub    %r9d,%edx
lea    (%rdx,%rdx,2),%edx
lea    0x3(%rdx),%eax
test   %edx,%edx
cmovns %edx,%eax
sar    $0x2,%eax
sub    %eax,%ecx
add    0xc(%rdi),%ecx
sub    $0x7d4b,%ecx
movslq %ecx,%rcx
add    %rcx,%rsi
js     2d0 <OPENSSL_gmtime_adj+0x2b0>
add    $0x10bd9,%rsi
movabs $0x396b06bcc8f862ed,%rdx
lea    0x0(,%rsi,4),%rcx
mov    %rcx,%rax
sar    $0x3f,%rcx
imul   %rdx
mov    %rdx,%rax
sar    $0xf,%rax
sub    %rcx,%rax
mov    %rax,%r10
imul   $0x23ab1,%rax,%rax
lea    0x6(%rax),%rdx
add    $0x3,%rax
cmovs  %rdx,%rax
movabs $0x16f77c5b896ec28d,%rdx
sar    $0x2,%rax
sub    %rax,%rsi
lea    0x1(%rsi),%r9
imul   $0xfa0,%r9,%r9
mov    %r9,%rax
sar    $0x3f,%r9
imul   %rdx
sar    $0x11,%rdx
sub    %r9,%rdx
movabs $0x137a5afac274c5c9,%r9
mov    %rdx,%r11
imul   $0x5b5,%rdx,%rdx
lea    0x3(%rdx),%rax
test   %rdx,%rdx
cmovns %rdx,%rax
sar    $0x2,%rax
sub    %rax,%rsi
add    $0x1f,%rsi
lea    (%rsi,%rsi,4),%rcx
shl    $0x4,%rcx
mov    %rcx,%rax
mov    %rcx,%rbx
imul   %r9
lea    -0x31(%r10),%rax
sar    $0x3f,%rbx
imul   $0x64,%eax,%eax
sar    $0xb,%rdx
mov    %rdx,%r9
add    %r11d,%eax
sub    %rbx,%r9
lea    -0x76c(%rax,%r9,1),%r10d
xor    %eax,%eax
cmp    $0x1fa3,%r10d
ja     2a5 <OPENSSL_gmtime_adj+0x285>
mov    %rcx,%rax
movabs $0xd641e8c65b047fa3,%rdx
mov    %r10d,0x14(%rdi)
imul   %rdx
lea    (%r9,%r9,2),%eax
mov    %r8d,%r9d
sar    $0x1f,%r9d
shl    $0x2,%eax
add    %rdx,%rcx
movabs $0x6666666666666667,%rdx
sar    $0xb,%rcx
sub    %rbx,%rcx
mov    %ecx,%ebx
imul   $0x98f,%rcx,%rcx
sub    %eax,%ebx
mov    %ebx,%eax
add    $0x1,%eax
mov    %eax,0x10(%rdi)
mov    %rcx,%rax
sar    $0x3f,%rcx
imul   %rdx
mov    %r8d,%eax
sar    $0x5,%rdx
sub    %rdx,%rcx
mov    $0x91a2b3c5,%edx
imul   %edx
add    %ecx,%esi
mov    %r8d,%eax
mov    %esi,0xc(%rdi)
mov    $0x88888889,%esi
add    %r8d,%edx
sar    $0xb,%edx
sub    %r9d,%edx
mov    %edx,0x8(%rdi)
imul   %esi
lea    (%rdx,%r8,1),%ecx
sar    $0x5,%ecx
sub    %r9d,%ecx
mov    %ecx,%eax
mov    %ecx,%ebx
imul   %esi
lea    (%rdx,%rcx,1),%eax
mov    %ecx,%edx
sar    $0x1f,%edx
sar    $0x5,%eax
sub    %edx,%eax
imul   $0x3c,%eax,%eax
imul   $0x3c,%ecx,%ecx
sub    %eax,%ebx
mov    $0x1,%eax
sub    %ecx,%r8d
mov    %ebx,0x4(%rdi)
mov    %r8d,(%rdi)
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)
test   %r8d,%r8d
jns    78 <OPENSSL_gmtime_adj+0x58>
sub    $0x1,%esi
add    $0x15180,%r8d
jmpq   78 <OPENSSL_gmtime_adj+0x58>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000002e0 <OPENSSL_gmtime_diff>:
push   %r13
push   %r12
mov    %rdx,%r11
push   %rbp
push   %rbx
imul   $0xe10,0x8(%rdx),%r9d
imul   $0x3c,0x4(%rdx),%eax
add    %eax,%r9d
add    (%rdx),%r9d
cmp    $0x1517f,%r9d
jle    4c0 <OPENSSL_gmtime_diff+0x1e0>
sub    $0x15180,%r9d
mov    $0x1,%r10d
mov    0x10(%r11),%r13d
mov    $0x2aaaaaab,%r8d
mov    0x14(%r11),%ebp
lea    -0xd(%r13),%ebx
mov    %ebx,%eax
sar    $0x1f,%ebx
imul   %r8d
sar    %edx
mov    %edx,%r12d
sub    %ebx,%r12d
sub    %edx,%ebx
lea    (%rbx,%rbx,2),%eax
lea    -0x1(%r13,%rax,4),%ebx
imul   $0x16f,%ebx,%ebx
mov    %ebx,%eax
sar    $0x1f,%ebx
imul   %r8d
lea    0x1a2c(%rbp,%r12,1),%r8d
imul   $0x5b5,%r8d,%r8d
sar    %edx
sub    %ebx,%edx
lea    0x1a90(%rbp,%r12,1),%ebx
lea    0x3(%r8),%eax
test   %r8d,%r8d
cmovs  %eax,%r8d
mov    %ebx,%eax
sar    $0x1f,%ebx
sar    $0x2,%r8d
add    %edx,%r8d
mov    $0x51eb851f,%edx
imul   %edx
sar    $0x5,%edx
sub    %ebx,%edx
lea    (%rdx,%rdx,2),%edx
lea    0x3(%rdx),%eax
test   %edx,%edx
cmovns %edx,%eax
sar    $0x2,%eax
sub    %eax,%r8d
mov    0xc(%r11),%eax
add    %r8d,%eax
sub    $0x7d4b,%eax
cltq   
add    %r10,%rax
mov    %rax,%r8
js     4e0 <OPENSSL_gmtime_diff+0x200>
imul   $0xe10,0x8(%rcx),%r10d
imul   $0x3c,0x4(%rcx),%eax
add    %eax,%r10d
add    (%rcx),%r10d
cmp    $0x1517f,%r10d
jg     4f0 <OPENSSL_gmtime_diff+0x210>
xor    %ebx,%ebx
test   %r10d,%r10d
js     530 <OPENSSL_gmtime_diff+0x250>
mov    0x10(%rcx),%r13d
mov    $0x2aaaaaab,%r11d
mov    0x14(%rcx),%r12d
lea    -0xd(%r13),%ebp
mov    %ebp,%eax
imul   %r11d
mov    %ebp,%eax
sar    $0x1f,%eax
sar    %edx
mov    %edx,%ebp
sub    %eax,%ebp
sub    %edx,%eax
lea    (%rax,%rax,2),%eax
lea    -0x1(%r13,%rax,4),%r13d
imul   $0x16f,%r13d,%r13d
mov    %r13d,%eax
sar    $0x1f,%r13d
imul   %r11d
lea    0x1a2c(%r12,%rbp,1),%r11d
lea    0x1a90(%r12,%rbp,1),%ebp
imul   $0x5b5,%r11d,%r11d
sar    %edx
sub    %r13d,%edx
lea    0x3(%r11),%eax
test   %r11d,%r11d
cmovs  %eax,%r11d
mov    %ebp,%eax
sar    $0x1f,%ebp
sar    $0x2,%r11d
add    %edx,%r11d
mov    $0x51eb851f,%edx
imul   %edx
sar    $0x5,%edx
sub    %ebp,%edx
lea    (%rdx,%rdx,2),%edx
lea    0x3(%rdx),%eax
test   %edx,%edx
cmovns %edx,%eax
sar    $0x2,%eax
sub    %eax,%r11d
mov    0xc(%rcx),%eax
add    %r11d,%eax
sub    $0x7d4b,%eax
cltq   
add    %rbx,%rax
js     4e0 <OPENSSL_gmtime_diff+0x200>
sub    %r8,%rax
sub    %r9d,%r10d
test   %rax,%rax
jle    508 <OPENSSL_gmtime_diff+0x228>
mov    %r10d,%edx
shr    $0x1f,%edx
test   %dl,%dl
je     508 <OPENSSL_gmtime_diff+0x228>
sub    $0x1,%rax
add    $0x15180,%r10d
test   %rdi,%rdi
je     4a8 <OPENSSL_gmtime_diff+0x1c8>
mov    %eax,(%rdi)
test   %rsi,%rsi
je     548 <OPENSSL_gmtime_diff+0x268>
pop    %rbx
mov    $0x1,%eax
mov    %r10d,(%rsi)
pop    %rbp
pop    %r12
pop    %r13
retq   
xor    %r10d,%r10d
test   %r9d,%r9d
jns    315 <OPENSSL_gmtime_diff+0x35>
add    $0x15180,%r9d
mov    $0xffffffffffffffff,%r10
jmpq   315 <OPENSSL_gmtime_diff+0x35>
nop
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
sub    $0x15180,%r10d
mov    $0x1,%ebx
jmpq   3e2 <OPENSSL_gmtime_diff+0x102>
nopl   0x0(%rax)
mov    %rax,%rdx
shr    $0x3f,%rdx
test   %dl,%dl
je     4a1 <OPENSSL_gmtime_diff+0x1c1>
test   %r10d,%r10d
jle    4a1 <OPENSSL_gmtime_diff+0x1c1>
add    $0x1,%rax
sub    $0x15180,%r10d
jmpq   4a1 <OPENSSL_gmtime_diff+0x1c1>
nopl   0x0(%rax,%rax,1)
add    $0x15180,%r10d
mov    $0xffffffffffffffff,%rbx
jmpq   3e2 <OPENSSL_gmtime_diff+0x102>
nopl   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmp    4e2 <OPENSSL_gmtime_diff+0x202>
