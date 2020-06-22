
openssl_crypto_dump/libcrypto-shlib-provider_core.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <core_gettable_params>:
lea    0x0(%rip),%rax        # 7 <core_gettable_params+0x7>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000010 <core_new_error>:
jmpq   15 <core_new_error+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <core_set_error_debug>:
mov    %rsi,%rdi
mov    %edx,%esi
mov    %rcx,%rdx
jmpq   2d <core_set_error_debug+0xd>
nopl   (%rax)

0000000000000030 <free_infopair>:
push   %rbx
mov    %rdi,%rbx
mov    (%rdi),%rdi
lea    0x0(%rip),%rsi        # 3e <free_infopair+0xe>
mov    $0x138,%edx
callq  48 <free_infopair+0x18>
mov    0x8(%rbx),%rdi
lea    0x0(%rip),%rsi        # 53 <free_infopair+0x23>
mov    $0x139,%edx
callq  5d <free_infopair+0x2d>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 67 <free_infopair+0x37>
mov    $0x13a,%edx
pop    %rbx
jmpq   72 <free_infopair+0x42>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000080 <provider_store_free>:
test   %rdi,%rdi
je     d0 <provider_store_free+0x50>
push   %rbx
mov    %rdi,%rbx
mov    0x10(%rdi),%rdi
lea    0x0(%rip),%rsi        # 94 <provider_store_free+0x14>
mov    $0x84,%edx
callq  9e <provider_store_free+0x1e>
mov    (%rbx),%rdi
lea    0x718(%rip),%rsi        # 7c0 <provider_deactivate_free>
callq  ad <provider_store_free+0x2d>
mov    0x8(%rbx),%rdi
callq  b6 <provider_store_free+0x36>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # c0 <provider_store_free+0x40>
mov    $0x87,%edx
pop    %rbx
jmpq   cb <provider_store_free+0x4b>
nopl   0x0(%rax,%rax,1)
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000000e0 <ossl_provider_cmp>:
mov    (%rsi),%rax
mov    0x10(%rax),%rsi
mov    (%rdi),%rax
mov    0x10(%rax),%rdi
jmpq   f3 <ossl_provider_cmp+0x13>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000100 <core_pop_error_to_mark>:
jmpq   105 <core_pop_error_to_mark+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000110 <core_clear_last_error_mark>:
jmpq   115 <core_clear_last_error_mark+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000120 <core_set_error_mark>:
jmpq   125 <core_set_error_mark+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000130 <core_vset_error>:
mov    %esi,%eax
shr    $0x18,%eax
test   %eax,%eax
jne    148 <core_vset_error+0x18>
mov    0x48(%rdi),%edi
jmpq   141 <core_vset_error+0x11>
nopl   0x0(%rax)
and    $0xfff,%esi
mov    %eax,%edi
jmpq   155 <core_vset_error+0x25>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000160 <core_thread_start>:
mov    %rsi,%rdx
mov    0x88(%rdi),%rsi
jmpq   16f <core_thread_start+0xf>
nop

0000000000000170 <provider_activate>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
testb  $0x1,(%rdi)
movq   $0x0,0x8(%rsp)
mov    $0x1,%eax
movq   $0x0,0x10(%rsp)
jne    301 <provider_activate+0x191>
mov    0x28(%rdi),%rax
mov    %rdi,%rbx
test   %rax,%rax
je     360 <provider_activate+0x1f0>
lea    0x10(%rsp),%rcx
lea    0x8(%rsp),%rdx
lea    0x0(%rip),%rsi        # 1cb <provider_activate+0x5b>
mov    %rbx,%rdi
callq  *%rax
test   %eax,%eax
je     386 <provider_activate+0x216>
mov    0x8(%rsp),%rdx
mov    0x10(%rsp),%rdi
xor    %esi,%esi
lea    0x0(%rip),%rcx        # 1eb <provider_activate+0x7b>
mov    (%rdx),%eax
mov    %rdi,0x88(%rbx)
test   %eax,%eax
je     2f9 <provider_activate+0x189>
nopl   0x0(%rax)
sub    $0x400,%eax
cmp    $0x4,%eax
ja     220 <provider_activate+0xb0>
movslq (%rcx,%rax,4),%rax
add    %rcx,%rax
jmpq   *%rax
nopl   0x0(%rax,%rax,1)
mov    0x8(%rdx),%rax
mov    %rax,0x70(%rbx)
add    $0x10,%rdx
mov    (%rdx),%eax
test   %eax,%eax
jne    200 <provider_activate+0x90>
test   %rsi,%rsi
mov    %rdx,0x8(%rsp)
je     2f9 <provider_activate+0x189>
callq  *%rsi
mov    %rax,%rbp
mov    (%rax),%eax
test   %eax,%eax
je     417 <provider_activate+0x2a7>
shr    $0x18,%eax
xor    %ecx,%ecx
lea    0x10(%rbp),%rdx
test   %eax,%eax
je     272 <provider_activate+0x102>
jmpq   410 <provider_activate+0x2a0>
nopl   0x0(%rax)
shr    $0x18,%eax
add    $0x10,%rdx
mov    %rsi,%rcx
test   %eax,%eax
jne    410 <provider_activate+0x2a0>
mov    (%rdx),%eax
lea    0x1(%rcx),%rsi
test   %eax,%eax
jne    260 <provider_activate+0xf0>
lea    0x3(%rcx),%rdi
lea    0x2(%rcx),%r12
shl    $0x4,%rdi
lea    0x0(%rip),%rsi        # 28f <provider_activate+0x11f>
mov    $0x248,%edx
callq  299 <provider_activate+0x129>
test   %rax,%rax
mov    %rax,0x50(%rbx)
je     410 <provider_activate+0x2a0>
mov    0x48(%rbx),%edi
lea    0x18(%rax),%rcx
mov    $0x1,%r8d
mov    %edi,%edx
shl    $0x18,%edx
mov    %edx,%esi
mov    0x10(%rbx),%rdx
mov    %rsi,(%rax)
mov    %rdx,0x8(%rax)
lea    0x8(%rbp),%rdx
nopl   0x0(%rax)
movslq -0x8(%rdx),%r9
add    $0x1,%r8
add    $0x10,%rdx
add    $0x10,%rcx
mov    %r9,-0x18(%rcx)
mov    -0x10(%rdx),%r9
mov    %r9,-0x10(%rcx)
cmp    %r8,%r12
jae    2d0 <provider_activate+0x160>
mov    %rax,%rsi
callq  2f9 <provider_activate+0x189>
orb    $0x1,(%rbx)
mov    $0x1,%eax
mov    0x18(%rsp),%rdi
xor    %fs:0x28,%rdi
jne    533 <provider_activate+0x3c3>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
mov    0x8(%rdx),%rax
mov    %rax,0x68(%rbx)
jmpq   220 <provider_activate+0xb0>
nopl   (%rax)
mov    0x8(%rdx),%rax
mov    %rax,0x60(%rbx)
jmpq   220 <provider_activate+0xb0>
nopl   (%rax)
mov    0x8(%rdx),%rsi
jmpq   220 <provider_activate+0xb0>
nopl   0x0(%rax)
mov    0x8(%rdx),%rax
mov    %rax,0x58(%rbx)
jmpq   220 <provider_activate+0xb0>
nopl   (%rax)
mov    0x20(%rdi),%rdi
test   %rdi,%rdi
je     427 <provider_activate+0x2b7>
lea    0x0(%rip),%rsi        # 374 <provider_activate+0x204>
callq  379 <provider_activate+0x209>
mov    %rax,0x28(%rbx)
test   %rax,%rax
jne    1ba <provider_activate+0x4a>
callq  38b <provider_activate+0x21b>
lea    0x0(%rip),%rdx        # 392 <provider_activate+0x222>
lea    0x0(%rip),%rdi        # 399 <provider_activate+0x229>
mov    $0x20a,%esi
callq  3a3 <provider_activate+0x233>
mov    0x10(%rbx),%r8
lea    0x0(%rip),%rcx        # 3ae <provider_activate+0x23e>
xor    %edx,%edx
mov    $0x46,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  3c1 <provider_activate+0x251>
mov    0x20(%rbx),%rdi
callq  3ca <provider_activate+0x25a>
movq   $0x0,0x20(%rbx)
xor    %eax,%eax
jmpq   301 <provider_activate+0x191>
callq  3de <provider_activate+0x26e>
lea    0x0(%rip),%rdx        # 3e5 <provider_activate+0x275>
lea    0x0(%rip),%rdi        # 3ec <provider_activate+0x27c>
mov    $0xbf,%esi
callq  3f6 <provider_activate+0x286>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  409 <provider_activate+0x299>
nopl   0x0(%rax)
xor    %eax,%eax
jmpq   301 <provider_activate+0x191>
mov    $0x20,%edi
mov    $0x1,%r12d
jmpq   288 <provider_activate+0x118>
callq  42c <provider_activate+0x2bc>
test   %rax,%rax
mov    %rax,0x20(%rbx)
je     410 <provider_activate+0x2a0>
mov    0x38(%rbx),%rdi
lea    0x0(%rip),%rdx        # 440 <provider_activate+0x2d0>
mov    $0x1,%esi
callq  44a <provider_activate+0x2da>
test   %rax,%rax
mov    %rax,%r12
je     3d9 <provider_activate+0x269>
mov    0x8(%rax),%rdi
callq  45b <provider_activate+0x2eb>
test   %eax,%eax
je     410 <provider_activate+0x2a0>
mov    0x10(%r12),%rbp
test   %rbp,%rbp
je     538 <provider_activate+0x3c8>
mov    0x20(%rbx),%rdi
xor    %ecx,%ecx
mov    $0x2,%edx
mov    $0x2,%esi
xor    %r13d,%r13d
callq  485 <provider_activate+0x315>
mov    0x18(%rbx),%rax
test   %rax,%rax
je     502 <provider_activate+0x392>
mov    0x20(%rbx),%rdi
mov    %rbp,%rdx
mov    %rax,%rsi
callq  49d <provider_activate+0x32d>
mov    0x8(%r12),%rdi
mov    %rax,%rbp
callq  4aa <provider_activate+0x33a>
test   %rbp,%rbp
je     520 <provider_activate+0x3b0>
mov    0x20(%rbx),%rdi
xor    %ecx,%ecx
xor    %edx,%edx
mov    %rbp,%rsi
callq  4bf <provider_activate+0x34f>
test   %rax,%rax
je     520 <provider_activate+0x3b0>
lea    0x0(%rip),%rsi        # 4cb <provider_activate+0x35b>
mov    $0x1fc,%edx
mov    %rbp,%rdi
callq  4d8 <provider_activate+0x368>
lea    0x0(%rip),%rsi        # 4df <provider_activate+0x36f>
mov    %r13,%rdi
mov    $0x1fd,%edx
callq  4ec <provider_activate+0x37c>
mov    0x20(%rbx),%rdi
test   %rdi,%rdi
jne    36d <provider_activate+0x1fd>
mov    0x28(%rbx),%rax
jmpq   37d <provider_activate+0x20d>
mov    0x10(%rbx),%rsi
mov    0x20(%rbx),%rdi
callq  50f <provider_activate+0x39f>
test   %rax,%rax
jne    55a <provider_activate+0x3ea>
mov    0x8(%r12),%rdi
xor    %ebp,%ebp
callq  520 <provider_activate+0x3b0>
mov    0x20(%rbx),%rdi
callq  529 <provider_activate+0x3b9>
movq   $0x0,0x20(%rbx)
jmp    4c4 <provider_activate+0x354>
callq  538 <provider_activate+0x3c8>
lea    0x0(%rip),%rdi        # 53f <provider_activate+0x3cf>
callq  544 <provider_activate+0x3d4>
mov    %rax,%rbp
test   %rax,%rax
lea    0x0(%rip),%rax        # 551 <provider_activate+0x3e1>
cmove  %rax,%rbp
jmpq   46d <provider_activate+0x2fd>
mov    %rax,%r13
jmpq   48e <provider_activate+0x31e>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000570 <ossl_provider_up_ref>:
mov    $0x1,%eax
lock xadd %eax,0x4(%rdi)
add    $0x1,%eax
retq   
xchg   %ax,%ax

0000000000000580 <ossl_provider_find>:
push   %r13
push   %r12
mov    %edx,%r13d
push   %rbp
push   %rbx
lea    0x0(%rip),%rdx        # 590 <ossl_provider_find+0x10>
mov    %rsi,%r12
mov    $0x1,%esi
sub    $0xa8,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x98(%rsp)
xor    %eax,%eax
callq  5b7 <ossl_provider_find+0x37>
test   %rax,%rax
je     660 <ossl_provider_find+0xe0>
mov    %rax,%rbx
mov    $0x12,%ecx
xor    %eax,%eax
mov    %rsp,%rdi
test   %r13d,%r13d
mov    %rsp,%rbp
rep stos %rax,%es:(%rdi)
je     648 <ossl_provider_find+0xc8>
mov    0x8(%rbx),%rdi
mov    %r12,0x10(%rsp)
callq  5e6 <ossl_provider_find+0x66>
mov    (%rbx),%rdi
mov    %rbp,%rsi
callq  5f1 <ossl_provider_find+0x71>
cmp    $0xffffffff,%eax
je     614 <ossl_provider_find+0x94>
mov    (%rbx),%rdi
mov    %eax,%esi
callq  600 <ossl_provider_find+0x80>
test   %rax,%rax
mov    %rax,%rbp
je     614 <ossl_provider_find+0x94>
mov    %rax,%rdi
callq  610 <ossl_provider_find+0x90>
test   %eax,%eax
jne    616 <ossl_provider_find+0x96>
xor    %ebp,%ebp
mov    0x8(%rbx),%rdi
callq  61f <ossl_provider_find+0x9f>
mov    0x98(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    %rbp,%rax
jne    694 <ossl_provider_find+0x114>
add    $0xa8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
xor    %esi,%esi
mov    $0x40,%edi
callq  654 <ossl_provider_find+0xd4>
jmp    5d8 <ossl_provider_find+0x58>
nopw   %cs:0x0(%rax,%rax,1)
callq  665 <ossl_provider_find+0xe5>
lea    0x0(%rip),%rdx        # 66c <ossl_provider_find+0xec>
lea    0x0(%rip),%rdi        # 673 <ossl_provider_find+0xf3>
mov    $0xbf,%esi
xor    %ebp,%ebp
callq  67f <ossl_provider_find+0xff>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  692 <ossl_provider_find+0x112>
jmp    61f <ossl_provider_find+0x9f>
callq  699 <ossl_provider_find+0x119>
nopl   0x0(%rax)

00000000000006a0 <ossl_provider_free>:
test   %rdi,%rdi
je     6ca <ossl_provider_free+0x2a>
push   %rbp
push   %rbx
mov    $0xffffffff,%eax
mov    %rdi,%rbx
sub    $0x8,%rsp
lock xadd %eax,0x4(%rdi)
sub    $0x1,%eax
mov    %eax,%ebp
je     6d0 <ossl_provider_free+0x30>
cmp    $0x1,%eax
jle    732 <ossl_provider_free+0x92>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
repz retq 
nopl   0x0(%rax)
testb  $0x1,(%rdi)
jne    740 <ossl_provider_free+0xa0>
mov    0x20(%rbx),%rdi
callq  6de <ossl_provider_free+0x3e>
mov    0x10(%rbx),%rdi
lea    0x0(%rip),%rsi        # 6e9 <ossl_provider_free+0x49>
mov    $0x168,%edx
callq  6f3 <ossl_provider_free+0x53>
mov    0x18(%rbx),%rdi
lea    0x0(%rip),%rsi        # 6fe <ossl_provider_free+0x5e>
mov    $0x169,%edx
callq  708 <ossl_provider_free+0x68>
mov    0x30(%rbx),%rdi
lea    -0x6e3(%rip),%rsi        # 30 <free_infopair>
callq  718 <ossl_provider_free+0x78>
add    $0x8,%rsp
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 726 <ossl_provider_free+0x86>
pop    %rbx
pop    %rbp
mov    $0x16e,%edx
jmpq   732 <ossl_provider_free+0x92>
testb  $0x1,(%rdi)
je     6c4 <ossl_provider_free+0x24>
nopw   0x0(%rax,%rax,1)
mov    %rbx,%rdi
callq  748 <ossl_provider_free+0xa8>
mov    0x58(%rbx),%rax
test   %rax,%rax
je     75a <ossl_provider_free+0xba>
mov    0x88(%rbx),%rdi
callq  *%rax
mov    0x50(%rbx),%rsi
test   %rsi,%rsi
je     788 <ossl_provider_free+0xe8>
mov    0x48(%rbx),%edi
callq  76b <ossl_provider_free+0xcb>
mov    0x50(%rbx),%rdi
lea    0x0(%rip),%rsi        # 776 <ossl_provider_free+0xd6>
mov    $0x155,%edx
callq  780 <ossl_provider_free+0xe0>
movq   $0x0,0x50(%rbx)
mov    0x78(%rbx),%rdi
lea    0x0(%rip),%rsi        # 793 <ossl_provider_free+0xf3>
mov    $0x15a,%edx
callq  79d <ossl_provider_free+0xfd>
andb   $0xfe,(%rbx)
test   %ebp,%ebp
movq   $0x0,0x78(%rbx)
movq   $0x0,0x80(%rbx)
je     6d5 <ossl_provider_free+0x35>
jmpq   6c4 <ossl_provider_free+0x24>

00000000000007c0 <provider_deactivate_free>:
push   %rbx
movzbl (%rdi),%eax
mov    %rdi,%rbx
and    $0x5,%eax
cmp    $0x5,%al
je     7e0 <provider_deactivate_free+0x20>
mov    %rbx,%rdi
pop    %rbx
jmpq   7d7 <provider_deactivate_free+0x17>
nopw   0x0(%rax,%rax,1)
callq  7e5 <provider_deactivate_free+0x25>
mov    %rbx,%rdi
pop    %rbx
jmpq   7ee <provider_deactivate_free+0x2e>
xchg   %ax,%ax

00000000000007f0 <ossl_provider_new>:
push   %r14
mov    %rdx,%r14
push   %r13
lea    0x0(%rip),%rdx        # 7fe <ossl_provider_new+0xe>
push   %r12
push   %rbp
push   %rbx
mov    %rsi,%r13
mov    $0x1,%esi
mov    %rdi,%r12
mov    %ecx,%ebx
callq  814 <ossl_provider_new+0x24>
test   %rax,%rax
je     9b0 <ossl_provider_new+0x1c0>
mov    %ebx,%edx
mov    %r13,%rsi
mov    %r12,%rdi
mov    %rax,%rbp
callq  82d <ossl_provider_new+0x3d>
test   %rax,%rax
jne    910 <ossl_provider_new+0x120>
lea    0x0(%rip),%rsi        # 83d <ossl_provider_new+0x4d>
mov    $0xec,%edx
mov    $0x90,%edi
callq  84c <ossl_provider_new+0x5c>
test   %rax,%rax
mov    %rax,%rbx
je     988 <ossl_provider_new+0x198>
mov    %rax,%rdi
callq  860 <ossl_provider_new+0x70>
test   %eax,%eax
je     988 <ossl_provider_new+0x198>
lea    0x0(%rip),%rsi        # 86f <ossl_provider_new+0x7f>
mov    $0xf1,%edx
mov    %r13,%rdi
callq  87c <ossl_provider_new+0x8c>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     988 <ossl_provider_new+0x198>
mov    0x8(%rbp),%rdi
mov    %r14,0x28(%rbx)
callq  896 <ossl_provider_new+0xa6>
mov    %rbx,%rdi
callq  89e <ossl_provider_new+0xae>
test   %eax,%eax
je     8be <ossl_provider_new+0xce>
mov    0x0(%rbp),%rdi
mov    %rbx,%rsi
callq  8ae <ossl_provider_new+0xbe>
test   %eax,%eax
jne    960 <ossl_provider_new+0x170>
mov    %rbx,%rdi
callq  8be <ossl_provider_new+0xce>
mov    %rbx,%rdi
callq  8c6 <ossl_provider_new+0xd6>
mov    0x8(%rbp),%rdi
callq  8cf <ossl_provider_new+0xdf>
callq  8d4 <ossl_provider_new+0xe4>
lea    0x0(%rip),%rdx        # 8db <ossl_provider_new+0xeb>
mov    $0x12c,%esi
lea    0x0(%rip),%rdi        # 8e7 <ossl_provider_new+0xf7>
callq  8ec <ossl_provider_new+0xfc>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  8ff <ossl_provider_new+0x10f>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
mov    %rax,%rdi
callq  918 <ossl_provider_new+0x128>
callq  91d <ossl_provider_new+0x12d>
lea    0x0(%rip),%rdx        # 924 <ossl_provider_new+0x134>
lea    0x0(%rip),%rdi        # 92b <ossl_provider_new+0x13b>
mov    $0x111,%esi
callq  935 <ossl_provider_new+0x145>
lea    0x0(%rip),%rcx        # 93c <ossl_provider_new+0x14c>
mov    %r13,%r8
xor    %eax,%eax
xor    %edx,%edx
mov    $0x68,%esi
mov    $0xf,%edi
callq  952 <ossl_provider_new+0x162>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
mov    %r12,0x38(%rbx)
mov    %rbp,0x40(%rbx)
callq  96d <ossl_provider_new+0x17d>
mov    0x8(%rbp),%rdi
mov    %eax,0x48(%rbx)
callq  979 <ossl_provider_new+0x189>
mov    %rbx,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
mov    %rbx,%rdi
callq  990 <ossl_provider_new+0x1a0>
callq  995 <ossl_provider_new+0x1a5>
lea    0x0(%rip),%rdx        # 99c <ossl_provider_new+0x1ac>
mov    $0xf3,%esi
jmpq   8e0 <ossl_provider_new+0xf0>
nopw   %cs:0x0(%rax,%rax,1)
callq  9b5 <ossl_provider_new+0x1c5>
lea    0x0(%rip),%rdx        # 9bc <ossl_provider_new+0x1cc>
lea    0x0(%rip),%rdi        # 9c3 <ossl_provider_new+0x1d3>
mov    $0xbf,%esi
callq  9cd <ossl_provider_new+0x1dd>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
callq  9e0 <ossl_provider_new+0x1f0>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)

00000000000009f0 <ossl_provider_set_module_path>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rbp
lea    0x0(%rip),%rsi        # 9ff <ossl_provider_set_module_path+0xf>
mov    $0x176,%edx
sub    $0x8,%rsp
mov    0x18(%rdi),%rdi
callq  a11 <ossl_provider_set_module_path+0x21>
test   %rbp,%rbp
je     a33 <ossl_provider_set_module_path+0x43>
lea    0x0(%rip),%rsi        # a1d <ossl_provider_set_module_path+0x2d>
mov    $0x179,%edx
mov    %rbp,%rdi
callq  a2a <ossl_provider_set_module_path+0x3a>
test   %rax,%rax
mov    %rax,0x18(%rbx)
je     a40 <ossl_provider_set_module_path+0x50>
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nop
callq  a45 <ossl_provider_set_module_path+0x55>
lea    0x0(%rip),%rdx        # a4c <ossl_provider_set_module_path+0x5c>
lea    0x0(%rip),%rdi        # a53 <ossl_provider_set_module_path+0x63>
mov    $0x17b,%esi
callq  a5d <ossl_provider_set_module_path+0x6d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  a70 <ossl_provider_set_module_path+0x80>
xor    %eax,%eax
jmp    a38 <ossl_provider_set_module_path+0x48>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000a80 <ossl_provider_add_parameter>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # a90 <ossl_provider_add_parameter+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x10,%edi
sub    $0x8,%rsp
mov    $0x184,%edx
callq  aa9 <ossl_provider_add_parameter+0x29>
test   %rax,%rax
je     b50 <ossl_provider_add_parameter+0xd0>
cmpq   $0x0,0x30(%rbp)
mov    %rax,%rbx
je     b90 <ossl_provider_add_parameter+0x110>
lea    0x0(%rip),%rsi        # ac7 <ossl_provider_add_parameter+0x47>
mov    $0x187,%edx
mov    %r12,%rdi
callq  ad4 <ossl_provider_add_parameter+0x54>
test   %rax,%rax
mov    %rax,(%rbx)
je     b13 <ossl_provider_add_parameter+0x93>
lea    0x0(%rip),%rsi        # ae3 <ossl_provider_add_parameter+0x63>
mov    $0x188,%edx
mov    %r13,%rdi
callq  af0 <ossl_provider_add_parameter+0x70>
test   %rax,%rax
mov    %rax,0x8(%rbx)
je     b10 <ossl_provider_add_parameter+0x90>
mov    0x30(%rbp),%rdi
mov    %rbx,%rsi
callq  b05 <ossl_provider_add_parameter+0x85>
mov    %eax,%edx
mov    $0x1,%eax
test   %edx,%edx
jg     b82 <ossl_provider_add_parameter+0x102>
mov    (%rbx),%rax
lea    0x0(%rip),%rsi        # b1a <ossl_provider_add_parameter+0x9a>
mov    %rax,%rdi
mov    $0x18d,%edx
callq  b27 <ossl_provider_add_parameter+0xa7>
mov    0x8(%rbx),%rdi
lea    0x0(%rip),%rsi        # b32 <ossl_provider_add_parameter+0xb2>
mov    $0x18e,%edx
callq  b3c <ossl_provider_add_parameter+0xbc>
lea    0x0(%rip),%rsi        # b43 <ossl_provider_add_parameter+0xc3>
mov    $0x18f,%edx
mov    %rbx,%rdi
callq  b50 <ossl_provider_add_parameter+0xd0>
callq  b55 <ossl_provider_add_parameter+0xd5>
lea    0x0(%rip),%rdx        # b5c <ossl_provider_add_parameter+0xdc>
lea    0x0(%rip),%rdi        # b63 <ossl_provider_add_parameter+0xe3>
mov    $0x191,%esi
callq  b6d <ossl_provider_add_parameter+0xed>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  b80 <ossl_provider_add_parameter+0x100>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
callq  b95 <ossl_provider_add_parameter+0x115>
test   %rax,%rax
mov    %rax,0x30(%rbp)
jne    ac0 <ossl_provider_add_parameter+0x40>
jmpq   b10 <ossl_provider_add_parameter+0x90>
nopw   0x0(%rax,%rax,1)

0000000000000bb0 <OSSL_PROVIDER_set_default_search_path>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x8,%rsp
test   %rsi,%rsi
je     c60 <OSSL_PROVIDER_set_default_search_path+0xb0>
mov    %rsi,%rdi
lea    0x0(%rip),%rsi        # bcc <OSSL_PROVIDER_set_default_search_path+0x1c>
mov    $0x1a9,%edx
callq  bd6 <OSSL_PROVIDER_set_default_search_path+0x26>
test   %rax,%rax
mov    %rax,%rbp
je     ca8 <OSSL_PROVIDER_set_default_search_path+0xf8>
lea    0x0(%rip),%rdx        # be9 <OSSL_PROVIDER_set_default_search_path+0x39>
mov    %rbx,%rdi
mov    $0x1,%esi
callq  bf6 <OSSL_PROVIDER_set_default_search_path+0x46>
test   %rax,%rax
mov    %rax,%rbx
je     c70 <OSSL_PROVIDER_set_default_search_path+0xc0>
mov    0x8(%rax),%rdi
callq  c07 <OSSL_PROVIDER_set_default_search_path+0x57>
test   %eax,%eax
jne    c30 <OSSL_PROVIDER_set_default_search_path+0x80>
lea    0x0(%rip),%rsi        # c12 <OSSL_PROVIDER_set_default_search_path+0x62>
mov    $0x1b6,%edx
mov    %rbp,%rdi
callq  c1f <OSSL_PROVIDER_set_default_search_path+0x6f>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
mov    0x10(%rbx),%rdi
lea    0x0(%rip),%rsi        # c3b <OSSL_PROVIDER_set_default_search_path+0x8b>
mov    $0x1b1,%edx
callq  c45 <OSSL_PROVIDER_set_default_search_path+0x95>
mov    0x8(%rbx),%rdi
mov    %rbp,0x10(%rbx)
callq  c52 <OSSL_PROVIDER_set_default_search_path+0xa2>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
xor    %ebp,%ebp
jmpq   be2 <OSSL_PROVIDER_set_default_search_path+0x32>
nopw   0x0(%rax,%rax,1)
callq  c75 <OSSL_PROVIDER_set_default_search_path+0xc5>
lea    0x0(%rip),%rdx        # c7c <OSSL_PROVIDER_set_default_search_path+0xcc>
lea    0x0(%rip),%rdi        # c83 <OSSL_PROVIDER_set_default_search_path+0xd3>
mov    $0xbf,%esi
callq  c8d <OSSL_PROVIDER_set_default_search_path+0xdd>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  ca0 <OSSL_PROVIDER_set_default_search_path+0xf0>
jmpq   c0b <OSSL_PROVIDER_set_default_search_path+0x5b>
nopl   (%rax)
callq  cad <OSSL_PROVIDER_set_default_search_path+0xfd>
lea    0x0(%rip),%rdx        # cb4 <OSSL_PROVIDER_set_default_search_path+0x104>
lea    0x0(%rip),%rdi        # cbb <OSSL_PROVIDER_set_default_search_path+0x10b>
mov    $0x1ab,%esi
callq  cc5 <OSSL_PROVIDER_set_default_search_path+0x115>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  cd8 <OSSL_PROVIDER_set_default_search_path+0x128>
xor    %eax,%eax
jmpq   c21 <OSSL_PROVIDER_set_default_search_path+0x71>
nop

0000000000000ce0 <ossl_provider_activate>:
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
testb  $0x1,(%rdi)
movq   $0x0,0x8(%rsp)
movq   $0x0,0x10(%rsp)
jne    e6c <ossl_provider_activate+0x18c>
mov    0x28(%rdi),%rax
test   %rax,%rax
je     ef0 <ossl_provider_activate+0x210>
lea    0x10(%rsp),%rcx
lea    0x8(%rsp),%rdx
lea    0x0(%rip),%rsi        # d36 <ossl_provider_activate+0x56>
mov    %rbx,%rdi
callq  *%rax
test   %eax,%eax
je     f12 <ossl_provider_activate+0x232>
mov    0x8(%rsp),%rdx
mov    0x10(%rsp),%rdi
xor    %esi,%esi
lea    0x0(%rip),%rcx        # d56 <ossl_provider_activate+0x76>
mov    (%rdx),%eax
mov    %rdi,0x88(%rbx)
test   %eax,%eax
je     e69 <ossl_provider_activate+0x189>
nopw   0x0(%rax,%rax,1)
sub    $0x400,%eax
cmp    $0x4,%eax
ja     d90 <ossl_provider_activate+0xb0>
movslq (%rcx,%rax,4),%rax
add    %rcx,%rax
jmpq   *%rax
nopl   0x0(%rax,%rax,1)
mov    0x8(%rdx),%rax
mov    %rax,0x70(%rbx)
add    $0x10,%rdx
mov    (%rdx),%eax
test   %eax,%eax
jne    d70 <ossl_provider_activate+0x90>
test   %rsi,%rsi
mov    %rdx,0x8(%rsp)
je     e69 <ossl_provider_activate+0x189>
callq  *%rsi
mov    %rax,%rbp
mov    (%rax),%eax
test   %eax,%eax
je     f65 <ossl_provider_activate+0x285>
shr    $0x18,%eax
xor    %ecx,%ecx
lea    0x10(%rbp),%rdx
test   %eax,%eax
je     de2 <ossl_provider_activate+0x102>
jmpq   f5e <ossl_provider_activate+0x27e>
nopl   0x0(%rax)
shr    $0x18,%eax
add    $0x10,%rdx
mov    %rsi,%rcx
test   %eax,%eax
jne    f5e <ossl_provider_activate+0x27e>
mov    (%rdx),%eax
lea    0x1(%rcx),%rsi
test   %eax,%eax
jne    dd0 <ossl_provider_activate+0xf0>
lea    0x3(%rcx),%rdi
lea    0x2(%rcx),%r12
shl    $0x4,%rdi
lea    0x0(%rip),%rsi        # dff <ossl_provider_activate+0x11f>
mov    $0x248,%edx
callq  e09 <ossl_provider_activate+0x129>
test   %rax,%rax
mov    %rax,0x50(%rbx)
je     f5e <ossl_provider_activate+0x27e>
mov    0x48(%rbx),%edi
lea    0x18(%rax),%rcx
mov    $0x1,%r8d
mov    %edi,%edx
shl    $0x18,%edx
mov    %edx,%esi
mov    0x10(%rbx),%rdx
mov    %rsi,(%rax)
mov    %rdx,0x8(%rax)
lea    0x8(%rbp),%rdx
nopl   0x0(%rax)
movslq -0x8(%rdx),%r9
add    $0x1,%r8
add    $0x10,%rdx
add    $0x10,%rcx
mov    %r9,-0x18(%rcx)
mov    -0x10(%rdx),%r9
mov    %r9,-0x10(%rcx)
cmp    %r12,%r8
jbe    e40 <ossl_provider_activate+0x160>
mov    %rax,%rsi
callq  e69 <ossl_provider_activate+0x189>
orb    $0x1,(%rbx)
mov    0x40(%rbx),%rax
mov    0x8(%rax),%rdi
callq  e79 <ossl_provider_activate+0x199>
mov    0x40(%rbx),%rax
andb   $0xfe,0x18(%rax)
mov    0x8(%rax),%rdi
callq  e8a <ossl_provider_activate+0x1aa>
mov    $0x1,%eax
mov    0x18(%rsp),%rsi
xor    %fs:0x28,%rsi
jne    10cb <ossl_provider_activate+0x3eb>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
xchg   %ax,%ax
mov    0x8(%rdx),%rax
mov    %rax,0x68(%rbx)
jmpq   d90 <ossl_provider_activate+0xb0>
nopl   (%rax)
mov    0x8(%rdx),%rax
mov    %rax,0x60(%rbx)
jmpq   d90 <ossl_provider_activate+0xb0>
nopl   (%rax)
mov    0x8(%rdx),%rsi
jmpq   d90 <ossl_provider_activate+0xb0>
nopl   0x0(%rax)
mov    0x8(%rdx),%rax
mov    %rax,0x58(%rbx)
jmpq   d90 <ossl_provider_activate+0xb0>
nopl   (%rax)
mov    0x20(%rdi),%rdi
test   %rdi,%rdi
je     f75 <ossl_provider_activate+0x295>
lea    0x0(%rip),%rsi        # f00 <ossl_provider_activate+0x220>
callq  f05 <ossl_provider_activate+0x225>
mov    %rax,0x28(%rbx)
test   %rax,%rax
jne    d25 <ossl_provider_activate+0x45>
callq  f17 <ossl_provider_activate+0x237>
lea    0x0(%rip),%rdx        # f1e <ossl_provider_activate+0x23e>
lea    0x0(%rip),%rdi        # f25 <ossl_provider_activate+0x245>
mov    $0x20a,%esi
callq  f2f <ossl_provider_activate+0x24f>
mov    0x10(%rbx),%r8
lea    0x0(%rip),%rcx        # f3a <ossl_provider_activate+0x25a>
xor    %edx,%edx
mov    $0x46,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  f4d <ossl_provider_activate+0x26d>
mov    0x20(%rbx),%rdi
callq  f56 <ossl_provider_activate+0x276>
movq   $0x0,0x20(%rbx)
xor    %eax,%eax
jmpq   e8f <ossl_provider_activate+0x1af>
mov    $0x20,%edi
mov    $0x1,%r12d
jmpq   df8 <ossl_provider_activate+0x118>
callq  f7a <ossl_provider_activate+0x29a>
test   %rax,%rax
mov    %rax,0x20(%rbx)
je     f5e <ossl_provider_activate+0x27e>
mov    0x38(%rbx),%rdi
lea    0x0(%rip),%rdx        # f8e <ossl_provider_activate+0x2ae>
mov    $0x1,%esi
callq  f98 <ossl_provider_activate+0x2b8>
test   %rax,%rax
mov    %rax,%r12
je     105d <ossl_provider_activate+0x37d>
mov    0x8(%rax),%rdi
callq  fad <ossl_provider_activate+0x2cd>
test   %eax,%eax
je     f5e <ossl_provider_activate+0x27e>
mov    0x10(%r12),%rbp
test   %rbp,%rbp
je     10d0 <ossl_provider_activate+0x3f0>
mov    0x20(%rbx),%rdi
xor    %ecx,%ecx
mov    $0x2,%esi
mov    $0x2,%edx
xor    %r13d,%r13d
callq  fd7 <ossl_provider_activate+0x2f7>
mov    0x18(%rbx),%rsi
test   %rsi,%rsi
je     1094 <ossl_provider_activate+0x3b4>
mov    0x20(%rbx),%rdi
mov    %rbp,%rdx
callq  ff0 <ossl_provider_activate+0x310>
mov    0x8(%r12),%rdi
mov    %rax,%rbp
callq  ffd <ossl_provider_activate+0x31d>
test   %rbp,%rbp
je     10b5 <ossl_provider_activate+0x3d5>
mov    0x20(%rbx),%rdi
xor    %ecx,%ecx
xor    %edx,%edx
mov    %rbp,%rsi
callq  1016 <ossl_provider_activate+0x336>
test   %rax,%rax
je     10b5 <ossl_provider_activate+0x3d5>
lea    0x0(%rip),%rsi        # 1026 <ossl_provider_activate+0x346>
mov    $0x1fc,%edx
mov    %rbp,%rdi
callq  1033 <ossl_provider_activate+0x353>
lea    0x0(%rip),%rsi        # 103a <ossl_provider_activate+0x35a>
mov    %r13,%rdi
mov    $0x1fd,%edx
callq  1047 <ossl_provider_activate+0x367>
mov    0x20(%rbx),%rdi
test   %rdi,%rdi
jne    ef9 <ossl_provider_activate+0x219>
mov    0x28(%rbx),%rax
jmpq   f09 <ossl_provider_activate+0x229>
callq  1062 <ossl_provider_activate+0x382>
lea    0x0(%rip),%rdx        # 1069 <ossl_provider_activate+0x389>
lea    0x0(%rip),%rdi        # 1070 <ossl_provider_activate+0x390>
mov    $0xbf,%esi
callq  107a <ossl_provider_activate+0x39a>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
callq  108d <ossl_provider_activate+0x3ad>
xor    %eax,%eax
jmpq   e8f <ossl_provider_activate+0x1af>
mov    0x10(%rbx),%rsi
mov    0x20(%rbx),%rdi
callq  10a1 <ossl_provider_activate+0x3c1>
test   %rax,%rax
mov    %rax,%r13
jne    10f2 <ossl_provider_activate+0x412>
mov    0x8(%r12),%rdi
xor    %ebp,%ebp
callq  10b5 <ossl_provider_activate+0x3d5>
mov    0x20(%rbx),%rdi
callq  10be <ossl_provider_activate+0x3de>
movq   $0x0,0x20(%rbx)
jmpq   101f <ossl_provider_activate+0x33f>
callq  10d0 <ossl_provider_activate+0x3f0>
lea    0x0(%rip),%rdi        # 10d7 <ossl_provider_activate+0x3f7>
callq  10dc <ossl_provider_activate+0x3fc>
mov    %rax,%rbp
test   %rax,%rax
lea    0x0(%rip),%rax        # 10e9 <ossl_provider_activate+0x409>
cmove  %rax,%rbp
jmpq   fbf <ossl_provider_activate+0x2df>
mov    %rax,%rsi
jmpq   fe4 <ossl_provider_activate+0x304>
nopw   0x0(%rax,%rax,1)

0000000000001100 <ossl_provider_ctx>:
mov    0x88(%rdi),%rax
retq   
nopl   0x0(%rax,%rax,1)

0000000000001110 <ossl_provider_forall_loaded>:
push   %r15
push   %r14
mov    %rdx,%r15
push   %r13
push   %r12
lea    0x0(%rip),%rdx        # 1122 <ossl_provider_forall_loaded+0x12>
push   %rbp
push   %rbx
mov    %rsi,%r14
mov    $0x1,%esi
sub    $0x18,%rsp
callq  1135 <ossl_provider_forall_loaded+0x25>
test   %rax,%rax
je     123d <ossl_provider_forall_loaded+0x12d>
mov    %rax,%rbp
xor    %esi,%esi
mov    $0x40,%edi
callq  114d <ossl_provider_forall_loaded+0x3d>
mov    0x8(%rbp),%rdi
callq  1156 <ossl_provider_forall_loaded+0x46>
testb  $0x1,0x18(%rbp)
jne    11c0 <ossl_provider_forall_loaded+0xb0>
mov    0x0(%rbp),%rdi
mov    $0x1,%r12d
callq  116b <ossl_provider_forall_loaded+0x5b>
test   %eax,%eax
mov    %eax,%r13d
jle    11a0 <ossl_provider_forall_loaded+0x90>
xor    %ebx,%ebx
nopl   0x0(%rax)
mov    0x0(%rbp),%rdi
mov    %ebx,%esi
callq  1183 <ossl_provider_forall_loaded+0x73>
testb  $0x1,(%rax)
je     1198 <ossl_provider_forall_loaded+0x88>
mov    %r15,%rsi
mov    %rax,%rdi
callq  *%r14
test   %eax,%eax
mov    %eax,%r12d
je     11a0 <ossl_provider_forall_loaded+0x90>
add    $0x1,%ebx
cmp    %ebx,%r13d
jne    1178 <ossl_provider_forall_loaded+0x68>
mov    0x8(%rbp),%rdi
callq  11a9 <ossl_provider_forall_loaded+0x99>
add    $0x18,%rsp
mov    %r12d,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rdi
xor    %ebx,%ebx
callq  11cb <ossl_provider_forall_loaded+0xbb>
test   %eax,%eax
mov    %eax,%r12d
movl   $0x0,0xc(%rsp)
jg     11e8 <ossl_provider_forall_loaded+0xd8>
jmp    115c <ossl_provider_forall_loaded+0x4c>
nopl   0x0(%rax)
add    $0x1,%ebx
cmp    %ebx,%r12d
je     1228 <ossl_provider_forall_loaded+0x118>
mov    0x0(%rbp),%rdi
mov    %ebx,%esi
callq  11f3 <ossl_provider_forall_loaded+0xe3>
testb  $0x2,(%rax)
mov    %rax,%r13
je     11e0 <ossl_provider_forall_loaded+0xd0>
mov    %rax,%rdi
callq  1203 <ossl_provider_forall_loaded+0xf3>
test   %eax,%eax
je     11e0 <ossl_provider_forall_loaded+0xd0>
mov    %r13,%rdi
callq  170 <provider_activate>
test   %eax,%eax
je     1284 <ossl_provider_forall_loaded+0x174>
add    $0x1,%ebx
orb    $0x4,0x0(%r13)
addl   $0x1,0xc(%rsp)
cmp    %ebx,%r12d
jne    11e8 <ossl_provider_forall_loaded+0xd8>
nopl   (%rax)
mov    0xc(%rsp),%eax
test   %eax,%eax
je     115c <ossl_provider_forall_loaded+0x4c>
andb   $0xfe,0x18(%rbp)
jmpq   115c <ossl_provider_forall_loaded+0x4c>
callq  1242 <ossl_provider_forall_loaded+0x132>
lea    0x0(%rip),%rdx        # 1249 <ossl_provider_forall_loaded+0x139>
lea    0x0(%rip),%rdi        # 1250 <ossl_provider_forall_loaded+0x140>
mov    $0xbf,%esi
mov    $0x1,%r12d
callq  1260 <ossl_provider_forall_loaded+0x150>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  1273 <ossl_provider_forall_loaded+0x163>
xor    %esi,%esi
mov    $0x40,%edi
callq  127f <ossl_provider_forall_loaded+0x16f>
jmpq   11a9 <ossl_provider_forall_loaded+0x99>
mov    %r13,%rdi
callq  128c <ossl_provider_forall_loaded+0x17c>
jmpq   11e0 <ossl_provider_forall_loaded+0xd0>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

00000000000012a0 <ossl_provider_available>:
test   %rdi,%rdi
je     1370 <ossl_provider_available+0xd0>
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x8,%rsp
mov    0x40(%rdi),%rax
mov    0x8(%rax),%rdi
callq  12c7 <ossl_provider_available+0x27>
mov    0x40(%rbp),%r13
testb  $0x1,0x18(%r13)
jne    12f8 <ossl_provider_available+0x58>
mov    0x8(%r13),%rdi
callq  12db <ossl_provider_available+0x3b>
movzbl 0x0(%rbp),%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
and    $0x1,%eax
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    0x0(%r13),%rdi
xor    %r15d,%r15d
xor    %ebx,%ebx
callq  1306 <ossl_provider_available+0x66>
test   %eax,%eax
mov    %eax,%r14d
jg     1318 <ossl_provider_available+0x78>
jmp    1362 <ossl_provider_available+0xc2>
nop
add    $0x1,%ebx
cmp    %ebx,%r14d
je     1358 <ossl_provider_available+0xb8>
mov    0x0(%r13),%rdi
mov    %ebx,%esi
callq  1323 <ossl_provider_available+0x83>
testb  $0x2,(%rax)
mov    %rax,%r12
je     1310 <ossl_provider_available+0x70>
mov    %rax,%rdi
callq  1333 <ossl_provider_available+0x93>
test   %eax,%eax
je     1310 <ossl_provider_available+0x70>
mov    %r12,%rdi
callq  170 <provider_activate>
test   %eax,%eax
je     1378 <ossl_provider_available+0xd8>
add    $0x1,%ebx
orb    $0x4,(%r12)
add    $0x1,%r15d
cmp    %ebx,%r14d
jne    1318 <ossl_provider_available+0x78>
nopl   0x0(%rax)
test   %r15d,%r15d
je     1362 <ossl_provider_available+0xc2>
andb   $0xfe,0x18(%r13)
mov    0x40(%rbp),%r13
jmpq   12d2 <ossl_provider_available+0x32>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdi
callq  1380 <ossl_provider_available+0xe0>
jmp    1310 <ossl_provider_available+0x70>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001390 <ossl_provider_set_fallback>:
test   %rdi,%rdi
je     13a0 <ossl_provider_set_fallback+0x10>
orb    $0x2,(%rdi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000013b0 <provider_store_new>:
push   %r15
push   %r14
lea    0x0(%rip),%rsi        # 13bb <provider_store_new+0xb>
push   %r13
push   %r12
mov    %rdi,%r15
push   %rbp
push   %rbx
mov    $0x8c,%edx
mov    $0x20,%edi
sub    $0x8,%rsp
callq  13d7 <provider_store_new+0x27>
test   %rax,%rax
je     1604 <provider_store_new+0x254>
lea    -0x1307(%rip),%rdi        # e0 <ossl_provider_cmp>
mov    %rax,%r12
callq  13ef <provider_store_new+0x3f>
test   %rax,%rax
mov    %rax,(%r12)
je     15c0 <provider_store_new+0x210>
callq  1401 <provider_store_new+0x51>
test   %rax,%rax
mov    %rax,0x8(%r12)
je     15c0 <provider_store_new+0x210>
mov    0x0(%rip),%rbp        # 1416 <provider_store_new+0x66>
orb    $0x1,0x18(%r12)
mov    0x0(%rbp),%r13
test   %r13,%r13
jne    1441 <provider_store_new+0x91>
jmpq   14db <provider_store_new+0x12b>
nopw   0x0(%rax,%rax,1)
add    $0x18,%rbp
mov    0x0(%rbp),%r13
test   %r13,%r13
je     14db <provider_store_new+0x12b>
lea    0x0(%rip),%rsi        # 1448 <provider_store_new+0x98>
mov    $0xec,%edx
mov    $0x90,%edi
mov    0x8(%rbp),%r14
callq  145b <provider_store_new+0xab>
test   %rax,%rax
mov    %rax,%rbx
je     14f0 <provider_store_new+0x140>
mov    %rax,%rdi
callq  146f <provider_store_new+0xbf>
test   %eax,%eax
je     14f0 <provider_store_new+0x140>
lea    0x0(%rip),%rsi        # 147a <provider_store_new+0xca>
mov    $0xf1,%edx
mov    %r13,%rdi
callq  1487 <provider_store_new+0xd7>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     14f0 <provider_store_new+0x140>
mov    (%r12),%rdi
mov    %r14,0x28(%rbx)
mov    %rbx,%rsi
callq  14a0 <provider_store_new+0xf0>
test   %eax,%eax
je     15b8 <provider_store_new+0x208>
mov    %r15,0x38(%rbx)
mov    %r12,0x40(%rbx)
callq  14b5 <provider_store_new+0x105>
testb  $0x1,0x10(%rbp)
mov    %eax,0x48(%rbx)
je     1430 <provider_store_new+0x80>
add    $0x18,%rbp
mov    %rbx,%rdi
callq  14ce <provider_store_new+0x11e>
mov    0x0(%rbp),%r13
test   %r13,%r13
jne    1441 <provider_store_new+0x91>
add    $0x8,%rsp
mov    %r12,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   (%rax)
mov    %rbx,%rdi
callq  14f8 <provider_store_new+0x148>
callq  14fd <provider_store_new+0x14d>
lea    0x0(%rip),%rdx        # 1504 <provider_store_new+0x154>
lea    0x0(%rip),%rdi        # 150b <provider_store_new+0x15b>
mov    $0xf3,%esi
callq  1515 <provider_store_new+0x165>
mov    $0xf,%edi
xor    %edx,%edx
mov    $0x41,%esi
xor    %eax,%eax
callq  1528 <provider_store_new+0x178>
xor    %edi,%edi
callq  152f <provider_store_new+0x17f>
mov    0x10(%r12),%rdi
lea    0x0(%rip),%rsi        # 153b <provider_store_new+0x18b>
mov    $0x84,%edx
callq  1545 <provider_store_new+0x195>
mov    (%r12),%rdi
lea    -0xd90(%rip),%rsi        # 7c0 <provider_deactivate_free>
callq  1555 <provider_store_new+0x1a5>
mov    0x8(%r12),%rdi
callq  155f <provider_store_new+0x1af>
lea    0x0(%rip),%rsi        # 1566 <provider_store_new+0x1b6>
mov    $0x87,%edx
mov    %r12,%rdi
callq  1573 <provider_store_new+0x1c3>
callq  1578 <provider_store_new+0x1c8>
lea    0x0(%rip),%rdx        # 157f <provider_store_new+0x1cf>
lea    0x0(%rip),%rdi        # 1586 <provider_store_new+0x1d6>
mov    $0xa4,%esi
callq  1590 <provider_store_new+0x1e0>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
callq  15a3 <provider_store_new+0x1f3>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    %rbx,%rdi
jmpq   152a <provider_store_new+0x17a>
mov    0x10(%r12),%rdi
lea    0x0(%rip),%rsi        # 15cc <provider_store_new+0x21c>
mov    $0x84,%edx
callq  15d6 <provider_store_new+0x226>
mov    (%r12),%rdi
lea    -0xe21(%rip),%rsi        # 7c0 <provider_deactivate_free>
callq  15e6 <provider_store_new+0x236>
mov    0x8(%r12),%rdi
callq  15f0 <provider_store_new+0x240>
lea    0x0(%rip),%rsi        # 15f7 <provider_store_new+0x247>
mov    $0x87,%edx
mov    %r12,%rdi
callq  1604 <provider_store_new+0x254>
xor    %eax,%eax
jmp    15a5 <provider_store_new+0x1f5>
nopl   0x0(%rax,%rax,1)

0000000000001610 <ossl_provider_name>:
mov    0x10(%rdi),%rax
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001620 <ossl_provider_dso>:
mov    0x20(%rdi),%rax
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001630 <ossl_provider_module_name>:
mov    0x20(%rdi),%rdi
jmpq   1639 <ossl_provider_module_name+0x9>
nopl   0x0(%rax)

0000000000001640 <ossl_provider_module_path>:
mov    0x20(%rdi),%rdi
jmpq   1649 <ossl_provider_module_path+0x9>
nopl   0x0(%rax)

0000000000001650 <core_get_params>:
push   %r13
push   %r12
mov    %rsi,%r13
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 1660 <core_get_params+0x10>
mov    %rdi,%r12
mov    %r13,%rdi
sub    $0x8,%rsp
callq  166f <core_get_params+0x1f>
test   %rax,%rax
je     1683 <core_get_params+0x33>
lea    0x0(%rip),%rsi        # 167b <core_get_params+0x2b>
mov    %rax,%rdi
callq  1683 <core_get_params+0x33>
lea    0x0(%rip),%rsi        # 168a <core_get_params+0x3a>
mov    %r13,%rdi
callq  1692 <core_get_params+0x42>
test   %rax,%rax
je     16a4 <core_get_params+0x54>
mov    0x10(%r12),%rsi
mov    %rax,%rdi
callq  16a4 <core_get_params+0x54>
lea    0x0(%rip),%rsi        # 16ab <core_get_params+0x5b>
mov    %r13,%rdi
callq  16b3 <core_get_params+0x63>
test   %rax,%rax
mov    %rax,%rbx
je     16ce <core_get_params+0x7e>
mov    %r12,%rdi
callq  16c3 <core_get_params+0x73>
mov    %rbx,%rdi
mov    %rax,%rsi
callq  16ce <core_get_params+0x7e>
mov    0x30(%r12),%rdi
test   %rdi,%rdi
je     171c <core_get_params+0xcc>
xor    %ebx,%ebx
jmp    1713 <core_get_params+0xc3>
nopl   0x0(%rax)
mov    0x30(%r12),%rdi
mov    %ebx,%esi
callq  16ec <core_get_params+0x9c>
mov    (%rax),%rsi
mov    %r13,%rdi
mov    %rax,%rbp
callq  16fa <core_get_params+0xaa>
test   %rax,%rax
je     170b <core_get_params+0xbb>
mov    0x8(%rbp),%rsi
mov    %rax,%rdi
callq  170b <core_get_params+0xbb>
mov    0x30(%r12),%rdi
add    $0x1,%ebx
callq  1718 <core_get_params+0xc8>
cmp    %eax,%ebx
jl     16e0 <core_get_params+0x90>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)

0000000000001730 <ossl_provider_prov_ctx>:
test   %rdi,%rdi
je     1740 <ossl_provider_prov_ctx+0x10>
mov    0x88(%rdi),%rax
retq   
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001750 <ossl_provider_library_context>:
test   %rdi,%rdi
je     1760 <ossl_provider_library_context+0x10>
mov    0x38(%rdi),%rax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001770 <core_get_libctx>:
jmpq   1775 <core_get_libctx+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001780 <ossl_provider_teardown>:
mov    0x58(%rdi),%rax
test   %rax,%rax
je     1798 <ossl_provider_teardown+0x18>
mov    0x88(%rdi),%rdi
jmpq   *%rax
nopw   0x0(%rax,%rax,1)
repz retq 
nopw   0x0(%rax,%rax,1)

00000000000017a0 <ossl_provider_gettable_params>:
mov    0x60(%rdi),%rax
test   %rax,%rax
je     17b8 <ossl_provider_gettable_params+0x18>
mov    0x88(%rdi),%rdi
jmpq   *%rax
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

00000000000017c0 <ossl_provider_get_params>:
mov    0x68(%rdi),%rax
test   %rax,%rax
je     17d8 <ossl_provider_get_params+0x18>
mov    0x88(%rdi),%rdi
jmpq   *%rax
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

00000000000017e0 <ossl_provider_query_operation>:
mov    %rdi,%rax
mov    0x88(%rdi),%rdi
mov    0x70(%rax),%rax
jmpq   *%rax

00000000000017f0 <ossl_provider_set_operation_bit>:
mov    %esi,%ecx
push   %r12
mov    $0x1,%eax
push   %rbp
and    $0x7,%ecx
push   %rbx
mov    %rsi,%rbx
shl    %cl,%eax
mov    %rdi,%r12
shr    $0x3,%rbx
cmp    0x80(%rdi),%rbx
mov    %eax,%ebp
jae    1830 <ossl_provider_set_operation_bit+0x40>
add    0x78(%r12),%rbx
mov    $0x1,%eax
or     %bpl,(%rbx)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopw   0x0(%rax,%rax,1)
mov    0x78(%rdi),%rdi
lea    0x1(%rbx),%rsi
lea    0x0(%rip),%rdx        # 183f <ossl_provider_set_operation_bit+0x4f>
mov    $0x346,%ecx
callq  1849 <ossl_provider_set_operation_bit+0x59>
test   %rax,%rax
mov    %rax,0x78(%r12)
je     1878 <ossl_provider_set_operation_bit+0x88>
mov    0x80(%r12),%rcx
mov    %rbx,%rdx
xor    %esi,%esi
sub    %rcx,%rdx
lea    (%rax,%rcx,1),%rdi
add    $0x1,%rdx
callq  1870 <ossl_provider_set_operation_bit+0x80>
jmp    1815 <ossl_provider_set_operation_bit+0x25>
nopw   0x0(%rax,%rax,1)
callq  187d <ossl_provider_set_operation_bit+0x8d>
lea    0x0(%rip),%rdx        # 1884 <ossl_provider_set_operation_bit+0x94>
lea    0x0(%rip),%rdi        # 188b <ossl_provider_set_operation_bit+0x9b>
mov    $0x348,%esi
callq  1895 <ossl_provider_set_operation_bit+0xa5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  18a8 <ossl_provider_set_operation_bit+0xb8>
xor    %eax,%eax
jmpq   1822 <ossl_provider_set_operation_bit+0x32>
nop

00000000000018b0 <ossl_provider_test_operation_bit>:
mov    %rsi,%r8
shr    $0x3,%r8
test   %rdx,%rdx
je     18f0 <ossl_provider_test_operation_bit+0x40>
cmp    0x80(%rdi),%r8
movl   $0x0,(%rdx)
mov    $0x1,%eax
jae    192a <ossl_provider_test_operation_bit+0x7a>
mov    0x78(%rdi),%rdi
mov    %esi,%ecx
mov    %eax,%esi
and    $0x7,%ecx
shl    %cl,%esi
test   %sil,(%rdi,%r8,1)
setne  %cl
movzbl %cl,%ecx
mov    %ecx,(%rdx)
retq   
nopw   0x0(%rax,%rax,1)
sub    $0x8,%rsp
callq  18f9 <ossl_provider_test_operation_bit+0x49>
lea    0x0(%rip),%rdx        # 1900 <ossl_provider_test_operation_bit+0x50>
lea    0x0(%rip),%rdi        # 1907 <ossl_provider_test_operation_bit+0x57>
mov    $0x359,%esi
callq  1911 <ossl_provider_test_operation_bit+0x61>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  1924 <ossl_provider_test_operation_bit+0x74>
add    $0x8,%rsp
xor    %eax,%eax
repz retq 
