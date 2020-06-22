
openssl_crypto_dump/libcrypto-lib-context.o:     file format elf64-x86-64


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

0000000000000050 <do_default_context_init_ossl_>:
push   %r12
push   %rbp
push   %rbx
callq  59 <do_default_context_init_ossl_+0x9>
test   %rax,%rax
mov    %rax,0x0(%rip)        # 63 <do_default_context_init_ossl_+0x13>
je     e6 <do_default_context_init_ossl_+0x96>
callq  6e <do_default_context_init_ossl_+0x1e>
test   %rax,%rax
mov    %rax,0x0(%rip)        # 78 <do_default_context_init_ossl_+0x28>
je     c7 <do_default_context_init_ossl_+0x77>
lea    0x0(%rip),%r12        # 81 <do_default_context_init_ossl_+0x31>
lea    0x0(%rip),%rbp        # 88 <do_default_context_init_ossl_+0x38>
xor    %ebx,%ebx
nopw   0x0(%rax,%rax,1)
callq  95 <do_default_context_init_ossl_+0x45>
test   %rax,%rax
mov    %rax,(%r12,%rbx,8)
movl   $0xffffffff,0x0(%rbp,%rbx,4)
je     c0 <do_default_context_init_ossl_+0x70>
add    $0x1,%rbx
cmp    $0xd,%rbx
jne    90 <do_default_context_init_ossl_+0x40>
lea    0x0(%rip),%rdi        # b7 <do_default_context_init_ossl_+0x67>
callq  bc <do_default_context_init_ossl_+0x6c>
test   %eax,%eax
jne    f8 <do_default_context_init_ossl_+0xa8>
mov    0x0(%rip),%rax        # c7 <do_default_context_init_ossl_+0x77>
mov    %rax,%rdi
callq  cf <do_default_context_init_ossl_+0x7f>
mov    0x0(%rip),%rdi        # d6 <do_default_context_init_ossl_+0x86>
callq  db <do_default_context_init_ossl_+0x8b>
movq   $0x0,0x0(%rip)        # e6 <do_default_context_init_ossl_+0x96>
pop    %rbx
movl   $0x1,0x0(%rip)        # f1 <do_default_context_init_ossl_+0xa1>
pop    %rbp
pop    %r12
retq   
nopl   (%rax)
lea    0x0(%rip),%rdi        # ff <do_default_context_init_ossl_+0xaf>
lea    0x0(%rip),%rcx        # 106 <do_default_context_init_ossl_+0xb6>
xor    %edx,%edx
mov    $0x10,%esi
callq  112 <do_default_context_init_ossl_+0xc2>
test   %eax,%eax
lea    0x0(%rip),%rdi        # 11b <do_default_context_init_ossl_+0xcb>
jne    130 <do_default_context_init_ossl_+0xe0>
callq  122 <do_default_context_init_ossl_+0xd2>
lea    0x0(%rip),%rdi        # 129 <do_default_context_init_ossl_+0xd9>
callq  12e <do_default_context_init_ossl_+0xde>
jmp    c0 <do_default_context_init_ossl_+0x70>
callq  135 <do_default_context_init_ossl_+0xe5>
test   %eax,%eax
je     122 <do_default_context_init_ossl_+0xd2>
lea    0x0(%rip),%rax        # 140 <do_default_context_init_ossl_+0xf0>
movl   $0x1,0x0(%rip)        # 14a <do_default_context_init_ossl_+0xfa>
pop    %rbx
mov    %rax,0x0(%rip)        # 152 <do_default_context_init_ossl_+0x102>
pop    %rbp
pop    %r12
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000160 <openssl_ctx_default_deinit>:
push   %r12
push   %rbp
mov    0x0(%rip),%rbp        # 16a <openssl_ctx_default_deinit+0xa>
push   %rbx
test   %rbp,%rbp
je     20e <openssl_ctx_default_deinit+0xae>
mov    %rbp,%rdi
callq  17c <openssl_ctx_default_deinit+0x1c>
mov    0x170(%rbp),%rbx
test   %rbx,%rbx
je     1b5 <openssl_ctx_default_deinit+0x55>
nopl   0x0(%rax,%rax,1)
mov    %rbp,%rdi
callq  *(%rbx)
mov    0x8(%rbx),%r12
lea    0x0(%rip),%rsi        # 1a0 <openssl_ctx_default_deinit+0x40>
mov    %rbx,%rdi
mov    $0x6d,%edx
callq  1ad <openssl_ctx_default_deinit+0x4d>
test   %r12,%r12
mov    %r12,%rbx
jne    190 <openssl_ctx_default_deinit+0x30>
lea    0x8(%rbp),%rdx
xor    %esi,%esi
mov    $0x10,%edi
lea    0xe8(%rbp),%rbx
lea    0x150(%rbp),%r12
callq  1d3 <openssl_ctx_default_deinit+0x73>
mov    %rbp,%rdi
callq  1db <openssl_ctx_default_deinit+0x7b>
nopl   0x0(%rax,%rax,1)
mov    (%rbx),%rdi
add    $0x8,%rbx
callq  1ec <openssl_ctx_default_deinit+0x8c>
cmp    %r12,%rbx
jne    1e0 <openssl_ctx_default_deinit+0x80>
mov    0x150(%rbp),%rdi
callq  1fd <openssl_ctx_default_deinit+0x9d>
mov    0x0(%rbp),%rdi
callq  206 <openssl_ctx_default_deinit+0xa6>
movq   $0x0,0x0(%rbp)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000220 <OPENSSL_CTX_load_config>:
sub    $0x8,%rsp
xor    %ecx,%ecx
xor    %edx,%edx
callq  22d <OPENSSL_CTX_load_config+0xd>
test   %eax,%eax
setg   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   0x0(%rax,%rax,1)

0000000000000240 <OPENSSL_CTX_free>:
test   %rdi,%rdi
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
je     2e6 <OPENSSL_CTX_free+0xa6>
callq  255 <OPENSSL_CTX_free+0x15>
mov    0x170(%rbp),%rbx
test   %rbx,%rbx
je     28d <OPENSSL_CTX_free+0x4d>
nopl   0x0(%rax)
mov    %rbp,%rdi
callq  *(%rbx)
mov    0x8(%rbx),%r12
lea    0x0(%rip),%rsi        # 278 <OPENSSL_CTX_free+0x38>
mov    %rbx,%rdi
mov    $0x6d,%edx
callq  285 <OPENSSL_CTX_free+0x45>
test   %r12,%r12
mov    %r12,%rbx
jne    268 <OPENSSL_CTX_free+0x28>
lea    0x8(%rbp),%rdx
xor    %esi,%esi
mov    $0x10,%edi
lea    0xe8(%rbp),%rbx
lea    0x150(%rbp),%r12
callq  2ab <OPENSSL_CTX_free+0x6b>
mov    %rbp,%rdi
callq  2b3 <OPENSSL_CTX_free+0x73>
nopl   0x0(%rax,%rax,1)
mov    (%rbx),%rdi
add    $0x8,%rbx
callq  2c4 <OPENSSL_CTX_free+0x84>
cmp    %r12,%rbx
jne    2b8 <OPENSSL_CTX_free+0x78>
mov    0x150(%rbp),%rdi
callq  2d5 <OPENSSL_CTX_free+0x95>
mov    0x0(%rbp),%rdi
callq  2de <OPENSSL_CTX_free+0x9e>
movq   $0x0,0x0(%rbp)
pop    %rbx
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # 2f1 <OPENSSL_CTX_free+0xb1>
mov    $0xa0,%edx
pop    %rbp
pop    %r12
jmpq   2fe <OPENSSL_CTX_free+0xbe>
xchg   %ax,%ax

0000000000000300 <OPENSSL_CTX_new>:
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 309 <OPENSSL_CTX_new+0x9>
mov    $0x8c,%edx
mov    $0x178,%edi
sub    $0x8,%rsp
callq  31c <OPENSSL_CTX_new+0x1c>
test   %rax,%rax
mov    %rax,%rbp
je     3ad <OPENSSL_CTX_new+0xad>
callq  32d <OPENSSL_CTX_new+0x2d>
test   %rax,%rax
mov    %rax,0x0(%rbp)
je     3a3 <OPENSSL_CTX_new+0xa3>
callq  33b <OPENSSL_CTX_new+0x3b>
test   %rax,%rax
mov    %rax,0x150(%rbp)
je     38a <OPENSSL_CTX_new+0x8a>
xor    %ebx,%ebx
nopl   0x0(%rax)
callq  355 <OPENSSL_CTX_new+0x55>
test   %rax,%rax
mov    %rax,0xe8(%rbp,%rbx,8)
movl   $0xffffffff,0xb0(%rbp,%rbx,4)
je     383 <OPENSSL_CTX_new+0x83>
add    $0x1,%rbx
cmp    $0xd,%rbx
jne    350 <OPENSSL_CTX_new+0x50>
mov    %rbp,%rdi
callq  37f <OPENSSL_CTX_new+0x7f>
test   %eax,%eax
jne    3c0 <OPENSSL_CTX_new+0xc0>
mov    0x150(%rbp),%rax
mov    %rax,%rdi
callq  392 <OPENSSL_CTX_new+0x92>
mov    0x0(%rbp),%rdi
callq  39b <OPENSSL_CTX_new+0x9b>
movq   $0x0,0x0(%rbp)
mov    %rbp,%rdi
xor    %ebp,%ebp
callq  3ad <OPENSSL_CTX_new+0xad>
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
callq  3d3 <OPENSSL_CTX_new+0xd3>
test   %eax,%eax
mov    %rbp,%rdi
je     3f0 <OPENSSL_CTX_new+0xf0>
callq  3df <OPENSSL_CTX_new+0xdf>
test   %eax,%eax
jne    3ad <OPENSSL_CTX_new+0xad>
mov    %rbp,%rdi
callq  3eb <OPENSSL_CTX_new+0xeb>
jmp    383 <OPENSSL_CTX_new+0x83>
nopl   (%rax)
callq  3f5 <OPENSSL_CTX_new+0xf5>
jmp    3e3 <OPENSSL_CTX_new+0xe3>
nopw   0x0(%rax,%rax,1)

0000000000000400 <openssl_ctx_get_concrete>:
test   %rdi,%rdi
push   %rbx
mov    %rdi,%rbx
je     410 <openssl_ctx_get_concrete+0x10>
mov    %rbx,%rax
pop    %rbx
retq   
xchg   %ax,%ax
lea    -0x3c7(%rip),%rsi        # 50 <do_default_context_init_ossl_>
lea    0x0(%rip),%rdi        # 41e <openssl_ctx_get_concrete+0x1e>
callq  423 <openssl_ctx_get_concrete+0x23>
test   %eax,%eax
je     409 <openssl_ctx_get_concrete+0x9>
mov    0x0(%rip),%eax        # 42d <openssl_ctx_get_concrete+0x2d>
test   %eax,%eax
cmovne 0x0(%rip),%rbx        # 437 <openssl_ctx_get_concrete+0x37>
jmp    409 <openssl_ctx_get_concrete+0x9>
nopl   0x0(%rax)

0000000000000440 <openssl_ctx_is_default>:
test   %rdi,%rdi
je     458 <openssl_ctx_is_default+0x18>
xor    %eax,%eax
cmp    %rdi,0x0(%rip)        # 44e <openssl_ctx_is_default+0xe>
sete   %al
retq   
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
retq   
xchg   %ax,%ax

0000000000000460 <openssl_ctx_get_data>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
movslq %esi,%rbp
sub    $0x8,%rsp
callq  479 <openssl_ctx_get_data+0x19>
test   %rax,%rax
je     5f5 <openssl_ctx_get_data+0x195>
mov    %rax,%rbx
mov    (%rax),%rdi
lea    (%rbx,%rbp,4),%r14
callq  491 <openssl_ctx_get_data+0x31>
mov    0xb0(%r14),%r12d
mov    (%rbx),%rdi
callq  4a0 <openssl_ctx_get_data+0x40>
cmp    $0xffffffff,%r12d
je     4e8 <openssl_ctx_get_data+0x88>
lea    (%rbx,%rbp,8),%rbp
mov    0xe8(%rbp),%rdi
callq  4b6 <openssl_ctx_get_data+0x56>
lea    0x8(%rbx),%rdi
mov    %r12d,%esi
callq  4c2 <openssl_ctx_get_data+0x62>
mov    0xe8(%rbp),%rdi
mov    %rax,%rbx
callq  4d1 <openssl_ctx_get_data+0x71>
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
callq  4f9 <openssl_ctx_get_data+0x99>
mov    (%rbx),%rdi
callq  501 <openssl_ctx_get_data+0xa1>
mov    0xb0(%r14),%r15d
cmp    $0xffffffff,%r15d
je     548 <openssl_ctx_get_data+0xe8>
mov    (%rbx),%rdi
callq  516 <openssl_ctx_get_data+0xb6>
lea    0x8(%rbx),%rdi
mov    %r15d,%esi
callq  522 <openssl_ctx_get_data+0xc2>
mov    0xe8(%r12),%rdi
mov    %rax,%rbx
callq  532 <openssl_ctx_get_data+0xd2>
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
callq  550 <openssl_ctx_get_data+0xf0>
test   %rax,%rax
mov    %rax,%r15
je     5e0 <openssl_ctx_get_data+0x180>
lea    -0x563(%rip),%rax        # 0 <openssl_ctx_generic_free>
sub    $0x8,%rsp
lea    -0x55e(%rip),%r8        # 10 <openssl_ctx_generic_new>
xor    %edx,%edx
xor    %r9d,%r9d
mov    %r13,%rcx
push   %rax
mov    $0x10,%esi
mov    %r15,%rdi
callq  584 <openssl_ctx_get_data+0x124>
test   %eax,%eax
pop    %rdx
pop    %rcx
js     5e0 <openssl_ctx_get_data+0x180>
mov    (%rbx),%rdi
mov    %eax,0xb0(%r15,%rbp,4)
add    $0x8,%rbx
xor    %ebp,%ebp
callq  5a0 <openssl_ctx_get_data+0x140>
mov    0xb0(%r14),%ecx
xor    %esi,%esi
mov    %rbx,%rdx
mov    $0x10,%edi
callq  5b6 <openssl_ctx_get_data+0x156>
test   %eax,%eax
jne    600 <openssl_ctx_get_data+0x1a0>
mov    0xe8(%r12),%rdi
callq  5c7 <openssl_ctx_get_data+0x167>
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
callq  5e8 <openssl_ctx_get_data+0x188>
mov    0xe8(%r12),%rdi
callq  5f5 <openssl_ctx_get_data+0x195>
xor    %eax,%eax
jmpq   4d4 <openssl_ctx_get_data+0x74>
nopl   0x0(%rax)
mov    0xb0(%r14),%esi
mov    %rbx,%rdi
callq  60f <openssl_ctx_get_data+0x1af>
mov    %rax,%rbp
jmp    5ba <openssl_ctx_get_data+0x15a>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000620 <openssl_ctx_get_ex_data_global>:
sub    $0x8,%rsp
callq  629 <openssl_ctx_get_ex_data_global+0x9>
test   %rax,%rax
je     640 <openssl_ctx_get_ex_data_global+0x20>
add    $0x18,%rax
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    632 <openssl_ctx_get_ex_data_global+0x12>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000650 <openssl_ctx_run_once>:
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %esi,%ebp
sub    $0x8,%rsp
callq  664 <openssl_ctx_run_once+0x14>
mov    %rax,%rbx
xor    %eax,%eax
test   %rbx,%rbx
je     6a0 <openssl_ctx_run_once+0x50>
mov    0x150(%rbx),%rdi
lea    (%rbx,%rbp,4),%r12
callq  67e <openssl_ctx_run_once+0x2e>
mov    0x158(%r12),%edx
test   %edx,%edx
je     6b0 <openssl_ctx_run_once+0x60>
mov    0x164(%r12),%ebp
mov    0x150(%rbx),%rdi
callq  69e <openssl_ctx_run_once+0x4e>
mov    %ebp,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
mov    0x150(%rbx),%rdi
callq  6bc <openssl_ctx_run_once+0x6c>
mov    0x150(%rbx),%rdi
callq  6c8 <openssl_ctx_run_once+0x78>
mov    0x158(%r12),%eax
test   %eax,%eax
jne    68a <openssl_ctx_run_once+0x3a>
mov    %rbx,%rdi
callq  *%r13
movl   $0x1,0x158(%r12)
mov    %eax,0x164(%r12)
mov    %eax,%ebp
mov    0x150(%rbx),%rdi
callq  6fc <openssl_ctx_run_once+0xac>
add    $0x8,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)

0000000000000710 <openssl_ctx_onfree>:
push   %rbp
push   %rbx
mov    %rsi,%rbp
lea    0x0(%rip),%rsi        # 71c <openssl_ctx_onfree+0xc>
mov    %rdi,%rbx
mov    $0x13e,%edx
sub    $0x8,%rsp
mov    $0x10,%edi
callq  732 <openssl_ctx_onfree+0x22>
test   %rax,%rax
je     760 <openssl_ctx_onfree+0x50>
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
