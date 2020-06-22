
openssl_crypto_dump/libcrypto-shlib-provider_conf.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <provider_conf_deinit>:
sub    $0x8,%rsp
mov    0x0(%rip),%rsi        # b <provider_conf_deinit+0xb>
mov    0x0(%rip),%rdi        # 12 <provider_conf_deinit+0x12>
callq  17 <provider_conf_deinit+0x17>
movq   $0x0,0x0(%rip)        # 22 <provider_conf_deinit+0x22>
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)

0000000000000030 <provider_conf_params>:
push   %r15
push   %r14
mov    %rcx,%r14
push   %r13
push   %r12
mov    %rsi,%r13
push   %rbp
push   %rbx
mov    %rdx,%rsi
mov    %rdx,%rbx
sub    $0x228,%rsp
mov    %rdi,0x8(%rsp)
mov    %rcx,%rdi
mov    %fs:0x28,%rax
mov    %rax,0x218(%rsp)
xor    %eax,%eax
callq  6d <provider_conf_params+0x3d>
test   %rax,%rax
je     17f <provider_conf_params+0x14f>
xor    %ebp,%ebp
test   %r13,%r13
mov    %rax,%r12
je     e4 <provider_conf_params+0xb4>
lea    0x10(%rsp),%rbx
mov    $0x200,%edx
mov    %r13,%rsi
mov    %rbx,%rdi
mov    %rbx,%rbp
callq  98 <provider_conf_params+0x68>
lea    0x0(%rip),%rsi        # 9f <provider_conf_params+0x6f>
mov    $0x200,%edx
mov    %rbx,%rdi
callq  ac <provider_conf_params+0x7c>
mov    0x0(%rbp),%edx
add    $0x4,%rbp
lea    -0x1010101(%rdx),%eax
not    %edx
and    %edx,%eax
and    $0x80808080,%eax
je     ac <provider_conf_params+0x7c>
mov    %eax,%edx
shr    $0x10,%edx
test   $0x8080,%eax
cmove  %edx,%eax
lea    0x2(%rbp),%rdx
mov    %eax,%ecx
cmove  %rdx,%rbp
add    %al,%cl
sbb    $0x3,%rbp
sub    %rbx,%rbp
xor    %ebx,%ebx
lea    0x10(%rsp),%r13
jmp    142 <provider_conf_params+0x112>
nopl   (%rax)
mov    %ebx,%esi
mov    %r12,%rdi
callq  fa <provider_conf_params+0xca>
mov    0x8(%rax),%rdi
mov    %rax,%r15
callq  106 <provider_conf_params+0xd6>
add    %rbp,%rax
cmp    $0x1ff,%rax
ja     158 <provider_conf_params+0x128>
movb   $0x0,0x10(%rsp,%rbp,1)
mov    0x8(%r15),%rsi
mov    $0x200,%edx
mov    %r13,%rdi
callq  127 <provider_conf_params+0xf7>
mov    0x10(%r15),%rdx
mov    0x8(%rsp),%rdi
mov    %r14,%rcx
mov    %r13,%rsi
callq  30 <provider_conf_params>
test   %eax,%eax
je     158 <provider_conf_params+0x128>
add    $0x1,%ebx
mov    %r12,%rdi
callq  14a <provider_conf_params+0x11a>
cmp    %eax,%ebx
jl     f0 <provider_conf_params+0xc0>
mov    $0x1,%eax
jmp    15a <provider_conf_params+0x12a>
nopl   (%rax)
xor    %eax,%eax
mov    0x218(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    191 <provider_conf_params+0x161>
add    $0x228,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
mov    0x8(%rsp),%rdi
mov    %rbx,%rdx
mov    %r13,%rsi
callq  18f <provider_conf_params+0x15f>
jmp    15a <provider_conf_params+0x12a>
callq  196 <provider_conf_params+0x166>
nopw   %cs:0x0(%rax,%rax,1)

00000000000001a0 <provider_conf_init>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rsi,%rbx
sub    $0x38,%rsp
mov    %rsi,0x20(%rsp)
callq  1bb <provider_conf_init+0x1b>
mov    %rbx,%rdi
mov    %rax,%rsi
callq  1c6 <provider_conf_init+0x26>
test   %rax,%rax
mov    %rax,0x10(%rsp)
je     4bc <provider_conf_init+0x31c>
mov    %rax,%rdi
movl   $0x0,0x4(%rsp)
callq  1e4 <provider_conf_init+0x44>
cmp    %eax,0x4(%rsp)
jge    3a9 <provider_conf_init+0x209>
xchg   %ax,%ax
mov    0x4(%rsp),%esi
mov    0x10(%rsp),%rdi
callq  1fe <provider_conf_init+0x5e>
mov    0x20(%rsp),%r14
mov    0x8(%rax),%r12
mov    $0x2e,%esi
mov    0x10(%rax),%rbx
mov    0x20(%r14),%rax
mov    %r12,%rdi
mov    %rbx,0x28(%rsp)
mov    %rax,0x18(%rsp)
callq  226 <provider_conf_init+0x86>
lea    0x1(%rax),%rdx
test   %rax,%rax
mov    %rbx,%rsi
mov    %r14,%rdi
cmovne %rdx,%r12
callq  23c <provider_conf_init+0x9c>
test   %rax,%rax
mov    %rax,%rbp
je     473 <provider_conf_init+0x2d3>
xor    %r13d,%r13d
movq   $0x0,0x8(%rsp)
movl   $0x0,(%rsp)
xor    %ebx,%ebx
jmp    2b3 <provider_conf_init+0x113>
nop
lea    0x0(%rip),%rdi        # 267 <provider_conf_init+0xc7>
mov    $0xa,%ecx
mov    %rdx,%rsi
repz cmpsb %es:(%rdi),%ds:(%rsi)
je     310 <provider_conf_init+0x170>
lea    0x0(%rip),%rdi        # 27e <provider_conf_init+0xde>
mov    $0x7,%ecx
mov    %rdx,%rsi
repz cmpsb %es:(%rdi),%ds:(%rsi)
je     320 <provider_conf_init+0x180>
lea    0x0(%rip),%rdi        # 295 <provider_conf_init+0xf5>
mov    $0x9,%ecx
mov    %rdx,%rsi
mov    $0x1,%eax
repz cmpsb %es:(%rdi),%ds:(%rsi)
cmove  %rax,%r13
nopl   0x0(%rax,%rax,1)
add    $0x1,%ebx
mov    %rbp,%rdi
callq  2bb <provider_conf_init+0x11b>
cmp    %eax,%ebx
jge    330 <provider_conf_init+0x190>
mov    %ebx,%esi
mov    %rbp,%rdi
callq  2c9 <provider_conf_init+0x129>
mov    0x8(%rax),%r14
mov    $0x2e,%esi
mov    %rax,%r15
mov    %r14,%rdi
callq  2dd <provider_conf_init+0x13d>
lea    0x1(%rax),%rsi
test   %rax,%rax
lea    0x0(%rip),%rdi        # 2eb <provider_conf_init+0x14b>
mov    $0x9,%ecx
mov    0x10(%r15),%r8
mov    %rsi,%rdx
cmove  %r14,%rdx
mov    %rdx,%rsi
repz cmpsb %es:(%rdi),%ds:(%rsi)
jne    260 <provider_conf_init+0xc0>
mov    %r8,%r12
jmp    2b0 <provider_conf_init+0x110>
nopl   0x0(%rax,%rax,1)
movl   $0x1,(%rsp)
jmp    2b0 <provider_conf_init+0x110>
nopl   0x0(%rax)
mov    %r8,0x8(%rsp)
jmp    2b0 <provider_conf_init+0x110>
nopw   0x0(%rax,%rax,1)
mov    0x18(%rsp),%rdi
mov    $0x1,%edx
mov    %r12,%rsi
callq  342 <provider_conf_init+0x1a2>
test   %rax,%rax
mov    %rax,%rbx
je     445 <provider_conf_init+0x2a5>
mov    0x8(%rsp),%rax
test   %rax,%rax
je     363 <provider_conf_init+0x1c3>
mov    %rax,%rsi
mov    %rbx,%rdi
callq  363 <provider_conf_init+0x1c3>
mov    0x20(%rsp),%rcx
mov    0x28(%rsp),%rdx
xor    %esi,%esi
mov    %rbx,%rdi
callq  30 <provider_conf_params>
test   %eax,%eax
je     381 <provider_conf_init+0x1e1>
test   $0x1,%r13b
jne    3c0 <provider_conf_init+0x220>
test   %eax,%eax
sete   %dl
and    $0x1,%r13d
je     3f8 <provider_conf_init+0x258>
test   %dl,%dl
jne    3f8 <provider_conf_init+0x258>
mov    0x10(%rsp),%rdi
addl   $0x1,0x4(%rsp)
callq  39f <provider_conf_init+0x1ff>
cmp    %eax,0x4(%rsp)
jl     1f0 <provider_conf_init+0x50>
add    $0x38,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   (%rax)
mov    %rbx,%rdi
callq  3c8 <provider_conf_init+0x228>
test   %eax,%eax
je     428 <provider_conf_init+0x288>
mov    0x0(%rip),%rdi        # 3d3 <provider_conf_init+0x233>
test   %rdi,%rdi
je     4a8 <provider_conf_init+0x308>
mov    %rbx,%rsi
callq  3e4 <provider_conf_init+0x244>
xor    %edx,%edx
and    $0x1,%r13d
mov    $0x1,%eax
jne    38c <provider_conf_init+0x1ec>
nopl   0x0(%rax)
mov    %rbx,%rdi
mov    %eax,(%rsp)
callq  403 <provider_conf_init+0x263>
mov    (%rsp),%eax
test   %eax,%eax
jne    390 <provider_conf_init+0x1f0>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
add    $0x38,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    %rbx,%rdi
mov    %eax,(%rsp)
callq  433 <provider_conf_init+0x293>
mov    (%rsp),%eax
add    $0x38,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
mov    0x18(%rsp),%rdi
xor    %edx,%edx
mov    $0x1,%ecx
mov    %r12,%rsi
callq  459 <provider_conf_init+0x2b9>
test   %rax,%rax
mov    %rax,%rbx
jne    34e <provider_conf_init+0x1ae>
mov    (%rsp),%eax
test   %eax,%eax
je     410 <provider_conf_init+0x270>
callq  471 <provider_conf_init+0x2d1>
jmp    410 <provider_conf_init+0x270>
callq  478 <provider_conf_init+0x2d8>
lea    0x0(%rip),%rdx        # 47f <provider_conf_init+0x2df>
lea    0x0(%rip),%rdi        # 486 <provider_conf_init+0x2e6>
mov    $0x5b,%esi
callq  490 <provider_conf_init+0x2f0>
xor    %edx,%edx
mov    $0x69,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  4a3 <provider_conf_init+0x303>
jmpq   410 <provider_conf_init+0x270>
callq  4ad <provider_conf_init+0x30d>
mov    %rax,%rdi
mov    %rax,0x0(%rip)        # 4b7 <provider_conf_init+0x317>
jmpq   3dc <provider_conf_init+0x23c>
callq  4c1 <provider_conf_init+0x321>
lea    0x0(%rip),%rdx        # 4c8 <provider_conf_init+0x328>
lea    0x0(%rip),%rdi        # 4cf <provider_conf_init+0x32f>
mov    $0xa3,%esi
callq  4d9 <provider_conf_init+0x339>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x69,%esi
mov    $0xf,%edi
callq  4ec <provider_conf_init+0x34c>
xor    %eax,%eax
jmpq   412 <provider_conf_init+0x272>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000500 <ossl_provider_add_conf_module>:
lea    -0x507(%rip),%rdx        # 0 <provider_conf_deinit>
lea    -0x36e(%rip),%rsi        # 1a0 <provider_conf_init>
lea    0x0(%rip),%rdi        # 515 <ossl_provider_add_conf_module+0x15>
jmpq   51a <ossl_provider_add_conf_module+0x1a>
