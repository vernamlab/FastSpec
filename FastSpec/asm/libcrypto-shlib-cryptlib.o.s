
openssl_crypto_dump/libcrypto-shlib-cryptlib.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OPENSSL_cpuid_setup>:
mov    0x0(%rip),%eax        # 6 <OPENSSL_cpuid_setup+0x6>
test   %eax,%eax
je     10 <OPENSSL_cpuid_setup+0x10>
retq   
nopl   0x0(%rax,%rax,1)
push   %r15
push   %r14
lea    0x0(%rip),%rdi        # 1b <OPENSSL_cpuid_setup+0x1b>
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x18,%rsp
movl   $0x1,0x0(%rip)        # 2f <OPENSSL_cpuid_setup+0x2f>
callq  34 <OPENSSL_cpuid_setup+0x34>
test   %rax,%rax
mov    %rax,%r12
je     240 <OPENSSL_cpuid_setup+0x240>
movzbl (%rax),%eax
xor    %r13d,%r13d
mov    $0xa,%r15d
cmp    $0x7e,%al
mov    %al,0x8(%rsp)
sete   %r13b
add    %r12,%r13
cmpb   $0x30,0x0(%r13)
je     280 <OPENSSL_cpuid_setup+0x280>
xor    %ebp,%ebp
mov    %r15d,%r14d
jmp    7f <OPENSSL_cpuid_setup+0x7f>
nopl   0x0(%rax,%rax,1)
sub    $0x30,%ebx
cmp    %r15d,%ebx
jae    ac <OPENSSL_cpuid_setup+0xac>
imul   %r14,%rbp
add    %rbx,%rbp
add    $0x1,%r13
movsbl -0x1(%r13),%ebx
mov    $0x4,%esi
mov    %ebx,%edi
callq  94 <OPENSSL_cpuid_setup+0x94>
test   %eax,%eax
jne    70 <OPENSSL_cpuid_setup+0x70>
mov    $0x10,%esi
mov    %ebx,%edi
callq  a4 <OPENSSL_cpuid_setup+0xa4>
test   %eax,%eax
jne    1a0 <OPENSSL_cpuid_setup+0x1a0>
cmpb   $0x7e,0x8(%rsp)
je     1b0 <OPENSSL_cpuid_setup+0x1b0>
movzbl (%r12),%eax
mov    0x0(%rip),%r15        # c3 <OPENSSL_cpuid_setup+0xc3>
cmp    $0x3a,%al
je     2a0 <OPENSSL_cpuid_setup+0x2a0>
test   %al,%al
je     1f8 <OPENSSL_cpuid_setup+0x1f8>
nopl   0x0(%rax,%rax,1)
add    $0x1,%r12
movzbl (%r12),%eax
test   %al,%al
je     1f8 <OPENSSL_cpuid_setup+0x1f8>
cmp    $0x3a,%al
jne    d8 <OPENSSL_cpuid_setup+0xd8>
movzbl 0x1(%r12),%eax
cmp    $0x7e,%al
mov    %al,0xf(%rsp)
sete   %al
movzbl %al,%eax
lea    0x1(%r12,%rax,1),%r13
cmpb   $0x30,0x0(%r13)
je     257 <OPENSSL_cpuid_setup+0x257>
movl   $0xa,0x8(%rsp)
xor    %r12d,%r12d
mov    0x8(%rsp),%r14d
jmp    138 <OPENSSL_cpuid_setup+0x138>
nopl   0x0(%rax)
lea    -0x30(%rbx),%edx
cmp    0x8(%rsp),%edx
jae    165 <OPENSSL_cpuid_setup+0x165>
imul   %r14,%r12
add    %rdx,%r12
add    $0x1,%r13
movsbl -0x1(%r13),%ebx
mov    $0x4,%esi
mov    %ebx,%edi
callq  14d <OPENSSL_cpuid_setup+0x14d>
test   %eax,%eax
jne    128 <OPENSSL_cpuid_setup+0x128>
mov    $0x10,%esi
mov    %ebx,%edi
callq  15d <OPENSSL_cpuid_setup+0x15d>
test   %eax,%eax
jne    210 <OPENSSL_cpuid_setup+0x210>
cmpb   $0x7e,0xf(%rsp)
je     220 <OPENSSL_cpuid_setup+0x220>
mov    %r12d,0x8(%r15)
shr    $0x20,%r12
mov    %r12d,0xc(%r15)
mov    %ebp,%eax
shr    $0x20,%rbp
or     $0x4,%ah
mov    %ebp,0x4(%r15)
mov    %eax,(%r15)
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
mov    %ebx,%edi
callq  1a7 <OPENSSL_cpuid_setup+0x1a7>
lea    -0x57(%rax),%ebx
jmpq   73 <OPENSSL_cpuid_setup+0x73>
nop
mov    0x0(%rip),%r15        # 1b7 <OPENSSL_cpuid_setup+0x1b7>
mov    %r15,%rdi
callq  1bf <OPENSSL_cpuid_setup+0x1bf>
mov    %rbp,%rcx
mov    %rbp,%rdx
not    %rcx
and    $0x1000000,%edx
and    %rcx,%rax
test   %rdx,%rdx
mov    %rax,%rbp
je     1e6 <OPENSSL_cpuid_setup+0x1e6>
movabs $0xedfff7fdffffffff,%rax
and    %rax,%rbp
movzbl (%r12),%eax
test   %al,%al
jne    e9 <OPENSSL_cpuid_setup+0xe9>
nopl   0x0(%rax,%rax,1)
movl   $0x0,0x8(%r15)
movl   $0x0,0xc(%r15)
jmpq   17c <OPENSSL_cpuid_setup+0x17c>
nopl   (%rax)
mov    %ebx,%edi
callq  217 <OPENSSL_cpuid_setup+0x217>
lea    -0x57(%rax),%edx
jmpq   12b <OPENSSL_cpuid_setup+0x12b>
nop
mov    %r12d,%eax
shr    $0x20,%r12
not    %eax
not    %r12d
and    %eax,0x8(%r15)
and    %r12d,0xc(%r15)
jmpq   17c <OPENSSL_cpuid_setup+0x17c>
nopl   0x0(%rax)
mov    0x0(%rip),%r15        # 247 <OPENSSL_cpuid_setup+0x247>
mov    %r15,%rdi
callq  24f <OPENSSL_cpuid_setup+0x24f>
mov    %rax,%rbp
jmpq   17c <OPENSSL_cpuid_setup+0x17c>
movsbl 0x1(%r13),%edi
callq  261 <OPENSSL_cpuid_setup+0x261>
cmp    $0x78,%eax
je     2bf <OPENSSL_cpuid_setup+0x2bf>
add    $0x1,%r13
movl   $0x8,0x8(%rsp)
jmpq   117 <OPENSSL_cpuid_setup+0x117>
nopw   0x0(%rax,%rax,1)
movsbl 0x1(%r13),%edi
callq  28a <OPENSSL_cpuid_setup+0x28a>
cmp    $0x78,%eax
je     2b0 <OPENSSL_cpuid_setup+0x2b0>
add    $0x1,%r13
mov    $0x8,%r15d
jmpq   64 <OPENSSL_cpuid_setup+0x64>
xchg   %ax,%ax
mov    %r15,%rdi
callq  2a8 <OPENSSL_cpuid_setup+0x2a8>
mov    %rax,%rbp
jmpq   1e6 <OPENSSL_cpuid_setup+0x1e6>
add    $0x2,%r13
mov    $0x10,%r15d
jmpq   64 <OPENSSL_cpuid_setup+0x64>
add    $0x2,%r13
movl   $0x10,0x8(%rsp)
jmpq   117 <OPENSSL_cpuid_setup+0x117>

00000000000002d0 <OPENSSL_showfatal>:
sub    $0xd8,%rsp
test   %al,%al
mov    %rsi,0x28(%rsp)
mov    %rdx,0x30(%rsp)
mov    %rcx,0x38(%rsp)
mov    %r8,0x40(%rsp)
mov    %r9,0x48(%rsp)
je     32b <OPENSSL_showfatal+0x5b>
movaps %xmm0,0x50(%rsp)
movaps %xmm1,0x60(%rsp)
movaps %xmm2,0x70(%rsp)
movaps %xmm3,0x80(%rsp)
movaps %xmm4,0x90(%rsp)
movaps %xmm5,0xa0(%rsp)
movaps %xmm6,0xb0(%rsp)
movaps %xmm7,0xc0(%rsp)
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
lea    0xe0(%rsp),%rax
mov    %rdi,%rdx
mov    %rsp,%rcx
mov    $0x1,%esi
mov    %rax,0x8(%rsp)
lea    0x20(%rsp),%rax
movl   $0x8,(%rsp)
movl   $0x30,0x4(%rsp)
mov    %rax,0x10(%rsp)
mov    0x0(%rip),%rax        # 373 <OPENSSL_showfatal+0xa3>
mov    (%rax),%rdi
callq  37b <OPENSSL_showfatal+0xab>
mov    0x18(%rsp),%rax
xor    %fs:0x28,%rax
jne    393 <OPENSSL_showfatal+0xc3>
add    $0xd8,%rsp
retq   
callq  398 <OPENSSL_showfatal+0xc8>
nopl   0x0(%rax,%rax,1)

00000000000003a0 <OPENSSL_isservice>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003b0 <OPENSSL_die>:
mov    %rdi,%rcx
lea    0x0(%rip),%rdi        # 3ba <OPENSSL_die+0xa>
sub    $0x8,%rsp
xor    %eax,%eax
callq  3c5 <OPENSSL_die+0x15>
callq  3ca <OPENSSL_die+0x1a>
