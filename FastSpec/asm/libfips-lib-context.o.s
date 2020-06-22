
openssl_crypto_dump/libfips-lib-context.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <openssl_ctx_generic_free>:
mov    0x8(%r9),%rax
mov    %rsi,%rdi
jmpq   *%rax
nopl   0x0(%rax)

0000000000000010 <openssl_ctx_generic_new>:
push   %r12
push   %rbp
mov    %rdx,%rdi
push   %rbx
mov    %ecx,%r12d
mov    %rdx,%rbx
mov    (%r9),%rbp
callq  25 <openssl_ctx_generic_new+0x15>
mov    %rax,%rdi
callq  *%rbp
test   %rax,%rax
je     48 <openssl_ctx_generic_new+0x38>
mov    %r12d,%esi
mov    %rbx,%rdi
mov    %rax,%rdx
pop    %rbx
pop    %rbp
pop    %r12
jmpq   41 <openssl_ctx_generic_new+0x31>
nopl   0x0(%rax)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   (%rax)

0000000000000050 <OPENSSL_CTX_free>:
test   %rdi,%rdi
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
je     f6 <OPENSSL_CTX_free+0xa6>
callq  65 <OPENSSL_CTX_free+0x15>
mov    0x170(%rbp),%rbx
test   %rbx,%rbx
je     9d <OPENSSL_CTX_free+0x4d>
nopl   0x0(%rax)
mov    %rbp,%rdi
callq  *(%rbx)
mov    0x8(%rbx),%r12
lea    0x0(%rip),%rsi        # 88 <OPENSSL_CTX_free+0x38>
mov    %rbx,%rdi
mov    $0x6d,%edx
callq  95 <OPENSSL_CTX_free+0x45>
test   %r12,%r12
mov    %r12,%rbx
jne    78 <OPENSSL_CTX_free+0x28>
lea    0x8(%rbp),%rdx
xor    %esi,%esi
mov    $0x10,%edi
lea    0xe8(%rbp),%rbx
lea    0x150(%rbp),%r12
callq  bb <OPENSSL_CTX_free+0x6b>
mov    %rbp,%rdi
callq  c3 <OPENSSL_CTX_free+0x73>
nopl   0x0(%rax,%rax,1)
mov    (%rbx),%rdi
add    $0x8,%rbx
callq  d4 <OPENSSL_CTX_free+0x84>
cmp    %r12,%rbx
jne    c8 <OPENSSL_CTX_free+0x78>
mov    0x150(%rbp),%rdi
callq  e5 <OPENSSL_CTX_free+0x95>
mov    0x0(%rbp),%rdi
callq  ee <OPENSSL_CTX_free+0x9e>
movq   $0x0,0x0(%rbp)
pop    %rbx
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # 101 <OPENSSL_CTX_free+0xb1>
mov    $0xa0,%edx
pop    %rbp
pop    %r12
jmpq   10e <OPENSSL_CTX_free+0xbe>
xchg   %ax,%ax

0000000000000110 <OPENSSL_CTX_new>:
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 119 <OPENSSL_CTX_new+0x9>
mov    $0x8c,%edx
mov    $0x178,%edi
sub    $0x8,%rsp
callq  12c <OPENSSL_CTX_new+0x1c>
test   %rax,%rax
mov    %rax,%rbp
je     1bd <OPENSSL_CTX_new+0xad>
callq  13d <OPENSSL_CTX_new+0x2d>
test   %rax,%rax
mov    %rax,0x0(%rbp)
je     1b3 <OPENSSL_CTX_new+0xa3>
callq  14b <OPENSSL_CTX_new+0x3b>
test   %rax,%rax
mov    %rax,0x150(%rbp)
je     19a <OPENSSL_CTX_new+0x8a>
xor    %ebx,%ebx
nopl   0x0(%rax)
callq  165 <OPENSSL_CTX_new+0x55>
test   %rax,%rax
mov    %rax,0xe8(%rbp,%rbx,8)
movl   $0xffffffff,0xb0(%rbp,%rbx,4)
je     193 <OPENSSL_CTX_new+0x83>
add    $0x1,%rbx
cmp    $0xd,%rbx
jne    160 <OPENSSL_CTX_new+0x50>
mov    %rbp,%rdi
callq  18f <OPENSSL_CTX_new+0x7f>
test   %eax,%eax
jne    1d0 <OPENSSL_CTX_new+0xc0>
mov    0x150(%rbp),%rax
mov    %rax,%rdi
callq  1a2 <OPENSSL_CTX_new+0x92>
mov    0x0(%rbp),%rdi
callq  1ab <OPENSSL_CTX_new+0x9b>
movq   $0x0,0x0(%rbp)
mov    %rbp,%rdi
xor    %ebp,%ebp
callq  1bd <OPENSSL_CTX_new+0xad>
add    $0x8,%rsp
mov    %rbp,%rax
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
lea    0x8(%rbp),%rcx
xor    %edx,%edx
mov    %rbp,%rdi
mov    $0x10,%esi
callq  1e3 <OPENSSL_CTX_new+0xd3>
test   %eax,%eax
mov    %rbp,%rdi
je     200 <OPENSSL_CTX_new+0xf0>
callq  1ef <OPENSSL_CTX_new+0xdf>
test   %eax,%eax
jne    1bd <OPENSSL_CTX_new+0xad>
mov    %rbp,%rdi
callq  1fb <OPENSSL_CTX_new+0xeb>
jmp    193 <OPENSSL_CTX_new+0x83>
nopl   (%rax)
callq  205 <OPENSSL_CTX_new+0xf5>
jmp    1f3 <OPENSSL_CTX_new+0xe3>
nopw   0x0(%rax,%rax,1)

0000000000000210 <openssl_ctx_get_concrete>:
mov    %rdi,%rax
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000220 <openssl_ctx_is_default>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000230 <openssl_ctx_get_data>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
movslq %esi,%rbp
sub    $0x8,%rsp
callq  249 <openssl_ctx_get_data+0x19>
test   %rax,%rax
je     3c5 <openssl_ctx_get_data+0x195>
mov    %rax,%rbx
mov    (%rax),%rdi
lea    (%rbx,%rbp,4),%r14
callq  261 <openssl_ctx_get_data+0x31>
mov    0xb0(%r14),%r12d
mov    (%rbx),%rdi
callq  270 <openssl_ctx_get_data+0x40>
cmp    $0xffffffff,%r12d
je     2b8 <openssl_ctx_get_data+0x88>
lea    (%rbx,%rbp,8),%rbp
mov    0xe8(%rbp),%rdi
callq  286 <openssl_ctx_get_data+0x56>
lea    0x8(%rbx),%rdi
mov    %r12d,%esi
callq  292 <openssl_ctx_get_data+0x62>
mov    0xe8(%rbp),%rdi
mov    %rax,%rbx
callq  2a1 <openssl_ctx_get_data+0x71>
mov    %rbx,%rax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
lea    (%rbx,%rbp,8),%r12
mov    0xe8(%r12),%rdi
callq  2c9 <openssl_ctx_get_data+0x99>
mov    (%rbx),%rdi
callq  2d1 <openssl_ctx_get_data+0xa1>
mov    0xb0(%r14),%r15d
cmp    $0xffffffff,%r15d
je     318 <openssl_ctx_get_data+0xe8>
mov    (%rbx),%rdi
callq  2e6 <openssl_ctx_get_data+0xb6>
lea    0x8(%rbx),%rdi
mov    %r15d,%esi
callq  2f2 <openssl_ctx_get_data+0xc2>
mov    0xe8(%r12),%rdi
mov    %rax,%rbx
callq  302 <openssl_ctx_get_data+0xd2>
add    $0x8,%rsp
mov    %rbx,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    %rbx,%rdi
callq  320 <openssl_ctx_get_data+0xf0>
test   %rax,%rax
mov    %rax,%r15
je     3b0 <openssl_ctx_get_data+0x180>
lea    -0x333(%rip),%rax        # 0 <openssl_ctx_generic_free>
sub    $0x8,%rsp
lea    -0x32e(%rip),%r8        # 10 <openssl_ctx_generic_new>
xor    %edx,%edx
xor    %r9d,%r9d
mov    %r13,%rcx
push   %rax
mov    $0x10,%esi
mov    %r15,%rdi
callq  354 <openssl_ctx_get_data+0x124>
test   %eax,%eax
pop    %rdx
pop    %rcx
js     3b0 <openssl_ctx_get_data+0x180>
mov    (%rbx),%rdi
mov    %eax,0xb0(%r15,%rbp,4)
add    $0x8,%rbx
xor    %ebp,%ebp
callq  370 <openssl_ctx_get_data+0x140>
mov    0xb0(%r14),%ecx
xor    %esi,%esi
mov    %rbx,%rdx
mov    $0x10,%edi
callq  386 <openssl_ctx_get_data+0x156>
test   %eax,%eax
jne    3d0 <openssl_ctx_get_data+0x1a0>
mov    0xe8(%r12),%rdi
callq  397 <openssl_ctx_get_data+0x167>
add    $0x8,%rsp
mov    %rbp,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    (%rbx),%rdi
callq  3b8 <openssl_ctx_get_data+0x188>
mov    0xe8(%r12),%rdi
callq  3c5 <openssl_ctx_get_data+0x195>
xor    %eax,%eax
jmpq   2a4 <openssl_ctx_get_data+0x74>
nopl   0x0(%rax)
mov    0xb0(%r14),%esi
mov    %rbx,%rdi
callq  3df <openssl_ctx_get_data+0x1af>
mov    %rax,%rbp
jmp    38a <openssl_ctx_get_data+0x15a>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000003f0 <openssl_ctx_get_ex_data_global>:
sub    $0x8,%rsp
callq  3f9 <openssl_ctx_get_ex_data_global+0x9>
test   %rax,%rax
je     410 <openssl_ctx_get_ex_data_global+0x20>
add    $0x18,%rax
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    402 <openssl_ctx_get_ex_data_global+0x12>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000420 <openssl_ctx_run_once>:
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %esi,%ebp
sub    $0x8,%rsp
callq  434 <openssl_ctx_run_once+0x14>
mov    %rax,%rbx
xor    %eax,%eax
test   %rbx,%rbx
je     470 <openssl_ctx_run_once+0x50>
mov    0x150(%rbx),%rdi
lea    (%rbx,%rbp,4),%r12
callq  44e <openssl_ctx_run_once+0x2e>
mov    0x158(%r12),%edx
test   %edx,%edx
je     480 <openssl_ctx_run_once+0x60>
mov    0x164(%r12),%ebp
mov    0x150(%rbx),%rdi
callq  46e <openssl_ctx_run_once+0x4e>
mov    %ebp,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
mov    0x150(%rbx),%rdi
callq  48c <openssl_ctx_run_once+0x6c>
mov    0x150(%rbx),%rdi
callq  498 <openssl_ctx_run_once+0x78>
mov    0x158(%r12),%eax
test   %eax,%eax
jne    45a <openssl_ctx_run_once+0x3a>
mov    %rbx,%rdi
callq  *%r13
movl   $0x1,0x158(%r12)
mov    %eax,0x164(%r12)
mov    %eax,%ebp
mov    0x150(%rbx),%rdi
callq  4cc <openssl_ctx_run_once+0xac>
add    $0x8,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)

00000000000004e0 <openssl_ctx_onfree>:
push   %rbp
push   %rbx
mov    %rsi,%rbp
lea    0x0(%rip),%rsi        # 4ec <openssl_ctx_onfree+0xc>
mov    %rdi,%rbx
mov    $0x13e,%edx
sub    $0x8,%rsp
mov    $0x10,%edi
callq  502 <openssl_ctx_onfree+0x22>
test   %rax,%rax
je     530 <openssl_ctx_onfree+0x50>
mov    0x170(%rbx),%rdx
mov    %rbp,(%rax)
mov    %rdx,0x8(%rax)
mov    %rax,0x170(%rbx)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
