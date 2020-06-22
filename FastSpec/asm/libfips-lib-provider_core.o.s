
openssl_crypto_dump/libfips-lib-provider_core.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <core_gettable_params>:
lea    0x0(%rip),%rax        # 7 <core_gettable_params+0x7>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000010 <provider_activate>:
push   %rbp
push   %rbx
mov    $0x1,%ebp
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
testb  $0x1,(%rdi)
movq   $0x0,0x8(%rsp)
movq   $0x0,0x10(%rsp)
jne    e8 <provider_activate+0xd8>
mov    0x28(%rdi),%rax
mov    %rdi,%rbx
test   %rax,%rax
je     168 <provider_activate+0x158>
lea    0x10(%rsp),%rcx
lea    0x8(%rsp),%rdx
lea    0x0(%rip),%rsi        # 67 <provider_activate+0x57>
callq  *%rax
test   %eax,%eax
mov    %eax,%ebp
je     108 <provider_activate+0xf8>
mov    0x10(%rsp),%rax
mov    0x8(%rsp),%rdx
mov    %rax,0x78(%rbx)
mov    (%rdx),%eax
add    $0x8,%rdx
test   %eax,%eax
jne    b4 <provider_activate+0xa4>
jmp    e0 <provider_activate+0xd0>
nopl   (%rax)
cmp    $0x402,%eax
je     148 <provider_activate+0x138>
cmp    $0x403,%eax
jne    a9 <provider_activate+0x99>
mov    (%rdx),%rax
mov    %rax,0x60(%rbx)
add    $0x10,%rdx
mov    -0x8(%rdx),%eax
test   %eax,%eax
je     e0 <provider_activate+0xd0>
cmp    $0x401,%eax
je     158 <provider_activate+0x148>
jg     90 <provider_activate+0x80>
cmp    $0x400,%eax
jne    a9 <provider_activate+0x99>
mov    (%rdx),%rax
add    $0x10,%rdx
mov    %rax,0x48(%rbx)
mov    -0x8(%rdx),%eax
test   %eax,%eax
jne    b4 <provider_activate+0xa4>
nopw   0x0(%rax,%rax,1)
orb    $0x1,(%rbx)
mov    $0x1,%ebp
mov    0x18(%rsp),%rsi
xor    %fs:0x28,%rsi
mov    %ebp,%eax
jne    16f <provider_activate+0x15f>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
callq  10d <provider_activate+0xfd>
lea    0x0(%rip),%rdx        # 114 <provider_activate+0x104>
lea    0x0(%rip),%rdi        # 11b <provider_activate+0x10b>
mov    $0x20a,%esi
callq  125 <provider_activate+0x115>
mov    0x10(%rbx),%r8
lea    0x0(%rip),%rcx        # 130 <provider_activate+0x120>
xor    %edx,%edx
mov    $0x46,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  143 <provider_activate+0x133>
jmp    e8 <provider_activate+0xd8>
nopl   (%rax)
mov    (%rdx),%rax
mov    %rax,0x58(%rbx)
jmpq   a9 <provider_activate+0x99>
nopl   0x0(%rax)
mov    (%rdx),%rax
mov    %rax,0x50(%rbx)
jmpq   a9 <provider_activate+0x99>
nopl   0x0(%rax)
xor    %ebp,%ebp
jmpq   e8 <provider_activate+0xd8>
callq  174 <provider_activate+0x164>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000180 <free_infopair>:
push   %rbx
mov    %rdi,%rbx
mov    (%rdi),%rdi
lea    0x0(%rip),%rsi        # 18e <free_infopair+0xe>
mov    $0x138,%edx
callq  198 <free_infopair+0x18>
mov    0x8(%rbx),%rdi
lea    0x0(%rip),%rsi        # 1a3 <free_infopair+0x23>
mov    $0x139,%edx
callq  1ad <free_infopair+0x2d>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 1b7 <free_infopair+0x37>
mov    $0x13a,%edx
pop    %rbx
jmpq   1c2 <free_infopair+0x42>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000001d0 <provider_store_free>:
test   %rdi,%rdi
je     220 <provider_store_free+0x50>
push   %rbx
mov    %rdi,%rbx
mov    0x10(%rdi),%rdi
lea    0x0(%rip),%rsi        # 1e4 <provider_store_free+0x14>
mov    $0x84,%edx
callq  1ee <provider_store_free+0x1e>
mov    (%rbx),%rdi
lea    0x368(%rip),%rsi        # 560 <provider_deactivate_free>
callq  1fd <provider_store_free+0x2d>
mov    0x8(%rbx),%rdi
callq  206 <provider_store_free+0x36>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 210 <provider_store_free+0x40>
mov    $0x87,%edx
pop    %rbx
jmpq   21b <provider_store_free+0x4b>
nopl   0x0(%rax,%rax,1)
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000230 <ossl_provider_cmp>:
mov    (%rsi),%rax
mov    0x10(%rax),%rsi
mov    (%rdi),%rax
mov    0x10(%rax),%rdi
jmpq   243 <ossl_provider_cmp+0x13>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000250 <core_thread_start>:
mov    %rsi,%rdx
mov    0x78(%rdi),%rsi
jmpq   25c <core_thread_start+0xc>
nopl   0x0(%rax)

0000000000000260 <core_get_params>:
push   %r13
push   %r12
mov    %rsi,%r13
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 270 <core_get_params+0x10>
mov    %rdi,%r12
mov    %r13,%rdi
sub    $0x8,%rsp
callq  27f <core_get_params+0x1f>
test   %rax,%rax
je     293 <core_get_params+0x33>
lea    0x0(%rip),%rsi        # 28b <core_get_params+0x2b>
mov    %rax,%rdi
callq  293 <core_get_params+0x33>
lea    0x0(%rip),%rsi        # 29a <core_get_params+0x3a>
mov    %r13,%rdi
callq  2a2 <core_get_params+0x42>
test   %rax,%rax
je     2b4 <core_get_params+0x54>
mov    0x10(%r12),%rsi
mov    %rax,%rdi
callq  2b4 <core_get_params+0x54>
mov    0x30(%r12),%rdi
test   %rdi,%rdi
je     304 <core_get_params+0xa4>
xor    %ebx,%ebx
jmp    2fb <core_get_params+0x9b>
nopw   0x0(%rax,%rax,1)
mov    0x30(%r12),%rdi
mov    %ebx,%esi
callq  2d4 <core_get_params+0x74>
mov    (%rax),%rsi
mov    %r13,%rdi
mov    %rax,%rbp
callq  2e2 <core_get_params+0x82>
test   %rax,%rax
je     2f3 <core_get_params+0x93>
mov    0x8(%rbp),%rsi
mov    %rax,%rdi
callq  2f3 <core_get_params+0x93>
mov    0x30(%r12),%rdi
add    $0x1,%ebx
callq  300 <core_get_params+0xa0>
cmp    %eax,%ebx
jl     2c8 <core_get_params+0x68>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000320 <ossl_provider_up_ref>:
mov    $0x1,%eax
lock xadd %eax,0x4(%rdi)
add    $0x1,%eax
retq   
xchg   %ax,%ax

0000000000000330 <ossl_provider_find>:
push   %rbp
push   %rbx
lea    0x0(%rip),%rdx        # 339 <ossl_provider_find+0x9>
mov    %rsi,%rbp
mov    $0x1,%esi
sub    $0x98,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x88(%rsp)
xor    %eax,%eax
callq  360 <ossl_provider_find+0x30>
test   %rax,%rax
je     3e0 <ossl_provider_find+0xb0>
mov    %rax,%rbx
mov    %rsp,%rdi
xor    %eax,%eax
mov    $0x10,%ecx
rep stos %rax,%es:(%rdi)
mov    0x8(%rbx),%rdi
mov    %rbp,0x10(%rsp)
callq  383 <ossl_provider_find+0x53>
mov    (%rbx),%rdi
mov    %rsp,%rsi
callq  38e <ossl_provider_find+0x5e>
cmp    $0xffffffff,%eax
je     3b1 <ossl_provider_find+0x81>
mov    (%rbx),%rdi
mov    %eax,%esi
callq  39d <ossl_provider_find+0x6d>
test   %rax,%rax
mov    %rax,%rbp
je     3b1 <ossl_provider_find+0x81>
mov    %rax,%rdi
callq  3ad <ossl_provider_find+0x7d>
test   %eax,%eax
jne    3b3 <ossl_provider_find+0x83>
xor    %ebp,%ebp
mov    0x8(%rbx),%rdi
callq  3bc <ossl_provider_find+0x8c>
mov    0x88(%rsp),%rdx
xor    %fs:0x28,%rdx
mov    %rbp,%rax
jne    414 <ossl_provider_find+0xe4>
add    $0x98,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
callq  3e5 <ossl_provider_find+0xb5>
lea    0x0(%rip),%rdx        # 3ec <ossl_provider_find+0xbc>
lea    0x0(%rip),%rdi        # 3f3 <ossl_provider_find+0xc3>
mov    $0xbf,%esi
xor    %ebp,%ebp
callq  3ff <ossl_provider_find+0xcf>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  412 <ossl_provider_find+0xe2>
jmp    3bc <ossl_provider_find+0x8c>
callq  419 <ossl_provider_find+0xe9>
nopl   0x0(%rax)

0000000000000420 <ossl_provider_free>:
test   %rdi,%rdi
je     44e <ossl_provider_free+0x2e>
push   %rbp
push   %rbx
mov    $0xffffffff,%eax
mov    %rdi,%rbx
sub    $0x8,%rsp
lock xadd %eax,0x4(%rdi)
sub    $0x1,%eax
mov    %eax,%ebp
je     450 <ossl_provider_free+0x30>
cmp    $0x1,%eax
jle    51d <ossl_provider_free+0xfd>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
repz retq 
testb  $0x1,(%rdi)
je     494 <ossl_provider_free+0x74>
mov    0x48(%rdi),%rax
test   %rax,%rax
je     4f0 <ossl_provider_free+0xd0>
mov    0x78(%rbx),%rdi
callq  *%rax
mov    0x68(%rbx),%rdi
lea    0x0(%rip),%rsi        # 473 <ossl_provider_free+0x53>
mov    $0x15a,%edx
callq  47d <ossl_provider_free+0x5d>
andb   $0xfe,(%rbx)
test   %ebp,%ebp
movq   $0x0,0x68(%rbx)
movq   $0x0,0x70(%rbx)
jne    448 <ossl_provider_free+0x28>
mov    0x10(%rbx),%rdi
lea    0x0(%rip),%rsi        # 49f <ossl_provider_free+0x7f>
mov    $0x168,%edx
callq  4a9 <ossl_provider_free+0x89>
mov    0x18(%rbx),%rdi
lea    0x0(%rip),%rsi        # 4b4 <ossl_provider_free+0x94>
mov    $0x169,%edx
callq  4be <ossl_provider_free+0x9e>
mov    0x30(%rbx),%rdi
lea    -0x349(%rip),%rsi        # 180 <free_infopair>
callq  4ce <ossl_provider_free+0xae>
add    $0x8,%rsp
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 4dc <ossl_provider_free+0xbc>
pop    %rbx
pop    %rbp
mov    $0x16e,%edx
jmpq   4e8 <ossl_provider_free+0xc8>
nopl   0x0(%rax,%rax,1)
mov    0x68(%rbx),%rdi
lea    0x0(%rip),%rsi        # 4fb <ossl_provider_free+0xdb>
mov    $0x15a,%edx
callq  505 <ossl_provider_free+0xe5>
movq   $0x0,0x68(%rbx)
movq   $0x0,0x70(%rbx)
andb   $0xfe,(%rbx)
jmpq   494 <ossl_provider_free+0x74>
testb  $0x1,(%rdi)
je     448 <ossl_provider_free+0x28>
mov    0x48(%rdi),%rax
test   %rax,%rax
jne    462 <ossl_provider_free+0x42>
mov    0x68(%rbx),%rdi
lea    0x0(%rip),%rsi        # 53e <ossl_provider_free+0x11e>
mov    $0x15a,%edx
callq  548 <ossl_provider_free+0x128>
movq   $0x0,0x68(%rbx)
movq   $0x0,0x70(%rbx)
andb   $0xfe,(%rbx)
jmpq   448 <ossl_provider_free+0x28>

0000000000000560 <provider_deactivate_free>:
push   %rbx
movzbl (%rdi),%eax
mov    %rdi,%rbx
and    $0x5,%eax
cmp    $0x5,%al
je     580 <provider_deactivate_free+0x20>
mov    %rbx,%rdi
pop    %rbx
jmpq   577 <provider_deactivate_free+0x17>
nopw   0x0(%rax,%rax,1)
callq  585 <provider_deactivate_free+0x25>
mov    %rbx,%rdi
pop    %rbx
jmpq   58e <provider_deactivate_free+0x2e>
xchg   %ax,%ax

0000000000000590 <ossl_provider_new>:
push   %r14
mov    %rdx,%r14
push   %r13
lea    0x0(%rip),%rdx        # 59e <ossl_provider_new+0xe>
push   %r12
push   %rbp
push   %rbx
mov    %rsi,%r13
mov    $0x1,%esi
mov    %rdi,%r12
mov    %ecx,%ebx
callq  5b4 <ossl_provider_new+0x24>
test   %rax,%rax
je     740 <ossl_provider_new+0x1b0>
mov    %ebx,%edx
mov    %r13,%rsi
mov    %r12,%rdi
mov    %rax,%rbp
callq  5cd <ossl_provider_new+0x3d>
test   %rax,%rax
jne    678 <ossl_provider_new+0xe8>
lea    0x0(%rip),%rsi        # 5dd <ossl_provider_new+0x4d>
mov    $0xec,%edx
mov    $0x80,%edi
callq  5ec <ossl_provider_new+0x5c>
test   %rax,%rax
mov    %rax,%rbx
je     720 <ossl_provider_new+0x190>
mov    %rax,%rdi
callq  600 <ossl_provider_new+0x70>
test   %eax,%eax
je     720 <ossl_provider_new+0x190>
lea    0x0(%rip),%rsi        # 60f <ossl_provider_new+0x7f>
mov    $0xf1,%edx
mov    %r13,%rdi
callq  61c <ossl_provider_new+0x8c>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     720 <ossl_provider_new+0x190>
mov    0x8(%rbp),%rdi
mov    %r14,0x28(%rbx)
callq  636 <ossl_provider_new+0xa6>
mov    %rbx,%rdi
callq  63e <ossl_provider_new+0xae>
test   %eax,%eax
je     6d0 <ossl_provider_new+0x140>
mov    0x0(%rbp),%rdi
mov    %rbx,%rsi
callq  652 <ossl_provider_new+0xc2>
test   %eax,%eax
je     6c8 <ossl_provider_new+0x138>
mov    0x8(%rbp),%rdi
mov    %r12,0x38(%rbx)
mov    %rbp,0x40(%rbx)
callq  667 <ossl_provider_new+0xd7>
mov    %rbx,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    %rax,%rdi
callq  680 <ossl_provider_new+0xf0>
callq  685 <ossl_provider_new+0xf5>
lea    0x0(%rip),%rdx        # 68c <ossl_provider_new+0xfc>
lea    0x0(%rip),%rdi        # 693 <ossl_provider_new+0x103>
mov    $0x111,%esi
callq  69d <ossl_provider_new+0x10d>
lea    0x0(%rip),%rcx        # 6a4 <ossl_provider_new+0x114>
mov    %r13,%r8
xor    %eax,%eax
xor    %edx,%edx
mov    $0x68,%esi
mov    $0xf,%edi
callq  6ba <ossl_provider_new+0x12a>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
mov    %rbx,%rdi
callq  6d0 <ossl_provider_new+0x140>
mov    %rbx,%rdi
callq  6d8 <ossl_provider_new+0x148>
mov    0x8(%rbp),%rdi
callq  6e1 <ossl_provider_new+0x151>
callq  6e6 <ossl_provider_new+0x156>
lea    0x0(%rip),%rdx        # 6ed <ossl_provider_new+0x15d>
mov    $0x12c,%esi
lea    0x0(%rip),%rdi        # 6f9 <ossl_provider_new+0x169>
callq  6fe <ossl_provider_new+0x16e>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  711 <ossl_provider_new+0x181>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax)
mov    %rbx,%rdi
callq  728 <ossl_provider_new+0x198>
callq  72d <ossl_provider_new+0x19d>
lea    0x0(%rip),%rdx        # 734 <ossl_provider_new+0x1a4>
mov    $0xf3,%esi
jmp    6f2 <ossl_provider_new+0x162>
nopl   0x0(%rax,%rax,1)
callq  745 <ossl_provider_new+0x1b5>
lea    0x0(%rip),%rdx        # 74c <ossl_provider_new+0x1bc>
lea    0x0(%rip),%rdi        # 753 <ossl_provider_new+0x1c3>
mov    $0xbf,%esi
callq  75d <ossl_provider_new+0x1cd>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
callq  770 <ossl_provider_new+0x1e0>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)

0000000000000780 <ossl_provider_set_module_path>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rbp
lea    0x0(%rip),%rsi        # 78f <ossl_provider_set_module_path+0xf>
mov    $0x176,%edx
sub    $0x8,%rsp
mov    0x18(%rdi),%rdi
callq  7a1 <ossl_provider_set_module_path+0x21>
test   %rbp,%rbp
je     7c3 <ossl_provider_set_module_path+0x43>
lea    0x0(%rip),%rsi        # 7ad <ossl_provider_set_module_path+0x2d>
mov    $0x179,%edx
mov    %rbp,%rdi
callq  7ba <ossl_provider_set_module_path+0x3a>
test   %rax,%rax
mov    %rax,0x18(%rbx)
je     7d0 <ossl_provider_set_module_path+0x50>
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nop
callq  7d5 <ossl_provider_set_module_path+0x55>
lea    0x0(%rip),%rdx        # 7dc <ossl_provider_set_module_path+0x5c>
lea    0x0(%rip),%rdi        # 7e3 <ossl_provider_set_module_path+0x63>
mov    $0x17b,%esi
callq  7ed <ossl_provider_set_module_path+0x6d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  800 <ossl_provider_set_module_path+0x80>
xor    %eax,%eax
jmp    7c8 <ossl_provider_set_module_path+0x48>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000810 <ossl_provider_add_parameter>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 820 <ossl_provider_add_parameter+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x10,%edi
sub    $0x8,%rsp
mov    $0x184,%edx
callq  839 <ossl_provider_add_parameter+0x29>
test   %rax,%rax
je     8e0 <ossl_provider_add_parameter+0xd0>
cmpq   $0x0,0x30(%rbp)
mov    %rax,%rbx
je     920 <ossl_provider_add_parameter+0x110>
lea    0x0(%rip),%rsi        # 857 <ossl_provider_add_parameter+0x47>
mov    $0x187,%edx
mov    %r12,%rdi
callq  864 <ossl_provider_add_parameter+0x54>
test   %rax,%rax
mov    %rax,(%rbx)
je     8a3 <ossl_provider_add_parameter+0x93>
lea    0x0(%rip),%rsi        # 873 <ossl_provider_add_parameter+0x63>
mov    $0x188,%edx
mov    %r13,%rdi
callq  880 <ossl_provider_add_parameter+0x70>
test   %rax,%rax
mov    %rax,0x8(%rbx)
je     8a0 <ossl_provider_add_parameter+0x90>
mov    0x30(%rbp),%rdi
mov    %rbx,%rsi
callq  895 <ossl_provider_add_parameter+0x85>
mov    %eax,%edx
mov    $0x1,%eax
test   %edx,%edx
jg     912 <ossl_provider_add_parameter+0x102>
mov    (%rbx),%rax
lea    0x0(%rip),%rsi        # 8aa <ossl_provider_add_parameter+0x9a>
mov    %rax,%rdi
mov    $0x18d,%edx
callq  8b7 <ossl_provider_add_parameter+0xa7>
mov    0x8(%rbx),%rdi
lea    0x0(%rip),%rsi        # 8c2 <ossl_provider_add_parameter+0xb2>
mov    $0x18e,%edx
callq  8cc <ossl_provider_add_parameter+0xbc>
lea    0x0(%rip),%rsi        # 8d3 <ossl_provider_add_parameter+0xc3>
mov    $0x18f,%edx
mov    %rbx,%rdi
callq  8e0 <ossl_provider_add_parameter+0xd0>
callq  8e5 <ossl_provider_add_parameter+0xd5>
lea    0x0(%rip),%rdx        # 8ec <ossl_provider_add_parameter+0xdc>
lea    0x0(%rip),%rdi        # 8f3 <ossl_provider_add_parameter+0xe3>
mov    $0x191,%esi
callq  8fd <ossl_provider_add_parameter+0xed>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  910 <ossl_provider_add_parameter+0x100>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
callq  925 <ossl_provider_add_parameter+0x115>
test   %rax,%rax
mov    %rax,0x30(%rbp)
jne    850 <ossl_provider_add_parameter+0x40>
jmpq   8a0 <ossl_provider_add_parameter+0x90>
nopw   0x0(%rax,%rax,1)

0000000000000940 <OSSL_PROVIDER_set_default_search_path>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x8,%rsp
test   %rsi,%rsi
je     9f0 <OSSL_PROVIDER_set_default_search_path+0xb0>
mov    %rsi,%rdi
lea    0x0(%rip),%rsi        # 95c <OSSL_PROVIDER_set_default_search_path+0x1c>
mov    $0x1a9,%edx
callq  966 <OSSL_PROVIDER_set_default_search_path+0x26>
test   %rax,%rax
mov    %rax,%rbp
je     a38 <OSSL_PROVIDER_set_default_search_path+0xf8>
lea    0x0(%rip),%rdx        # 979 <OSSL_PROVIDER_set_default_search_path+0x39>
mov    %rbx,%rdi
mov    $0x1,%esi
callq  986 <OSSL_PROVIDER_set_default_search_path+0x46>
test   %rax,%rax
mov    %rax,%rbx
je     a00 <OSSL_PROVIDER_set_default_search_path+0xc0>
mov    0x8(%rax),%rdi
callq  997 <OSSL_PROVIDER_set_default_search_path+0x57>
test   %eax,%eax
jne    9c0 <OSSL_PROVIDER_set_default_search_path+0x80>
lea    0x0(%rip),%rsi        # 9a2 <OSSL_PROVIDER_set_default_search_path+0x62>
mov    $0x1b6,%edx
mov    %rbp,%rdi
callq  9af <OSSL_PROVIDER_set_default_search_path+0x6f>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
mov    0x10(%rbx),%rdi
lea    0x0(%rip),%rsi        # 9cb <OSSL_PROVIDER_set_default_search_path+0x8b>
mov    $0x1b1,%edx
callq  9d5 <OSSL_PROVIDER_set_default_search_path+0x95>
mov    0x8(%rbx),%rdi
mov    %rbp,0x10(%rbx)
callq  9e2 <OSSL_PROVIDER_set_default_search_path+0xa2>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
xor    %ebp,%ebp
jmpq   972 <OSSL_PROVIDER_set_default_search_path+0x32>
nopw   0x0(%rax,%rax,1)
callq  a05 <OSSL_PROVIDER_set_default_search_path+0xc5>
lea    0x0(%rip),%rdx        # a0c <OSSL_PROVIDER_set_default_search_path+0xcc>
lea    0x0(%rip),%rdi        # a13 <OSSL_PROVIDER_set_default_search_path+0xd3>
mov    $0xbf,%esi
callq  a1d <OSSL_PROVIDER_set_default_search_path+0xdd>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  a30 <OSSL_PROVIDER_set_default_search_path+0xf0>
jmpq   99b <OSSL_PROVIDER_set_default_search_path+0x5b>
nopl   (%rax)
callq  a3d <OSSL_PROVIDER_set_default_search_path+0xfd>
lea    0x0(%rip),%rdx        # a44 <OSSL_PROVIDER_set_default_search_path+0x104>
lea    0x0(%rip),%rdi        # a4b <OSSL_PROVIDER_set_default_search_path+0x10b>
mov    $0x1ab,%esi
callq  a55 <OSSL_PROVIDER_set_default_search_path+0x115>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  a68 <OSSL_PROVIDER_set_default_search_path+0x128>
xor    %eax,%eax
jmpq   9b1 <OSSL_PROVIDER_set_default_search_path+0x71>
nop

0000000000000a70 <ossl_provider_activate>:
push   %rbx
mov    %rdi,%rbx
sub    $0x20,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
testb  $0x1,(%rdi)
movq   $0x0,0x8(%rsp)
movq   $0x0,0x10(%rsp)
jne    b3b <ossl_provider_activate+0xcb>
mov    0x28(%rdi),%rax
test   %rax,%rax
je     bb3 <ossl_provider_activate+0x143>
lea    0x10(%rsp),%rcx
lea    0x8(%rsp),%rdx
lea    0x0(%rip),%rsi        # ac1 <ossl_provider_activate+0x51>
callq  *%rax
test   %eax,%eax
je     b78 <ossl_provider_activate+0x108>
mov    0x10(%rsp),%rax
mov    0x8(%rsp),%rdx
mov    %rax,0x78(%rbx)
mov    (%rdx),%eax
add    $0x10,%rdx
test   %eax,%eax
jne    b0d <ossl_provider_activate+0x9d>
jmp    b38 <ossl_provider_activate+0xc8>
nopl   (%rax)
cmp    $0x402,%eax
je     bc0 <ossl_provider_activate+0x150>
cmp    $0x403,%eax
jne    b02 <ossl_provider_activate+0x92>
mov    -0x8(%rdx),%rax
mov    %rax,0x60(%rbx)
add    $0x10,%rdx
mov    -0x10(%rdx),%eax
test   %eax,%eax
je     b38 <ossl_provider_activate+0xc8>
cmp    $0x401,%eax
je     bd0 <ossl_provider_activate+0x160>
jg     ae8 <ossl_provider_activate+0x78>
cmp    $0x400,%eax
jne    b02 <ossl_provider_activate+0x92>
mov    -0x8(%rdx),%rax
add    $0x10,%rdx
mov    %rax,0x48(%rbx)
mov    -0x10(%rdx),%eax
test   %eax,%eax
jne    b0d <ossl_provider_activate+0x9d>
nopl   0x0(%rax)
orb    $0x1,(%rbx)
mov    0x40(%rbx),%rax
mov    0x8(%rax),%rdi
callq  b48 <ossl_provider_activate+0xd8>
mov    0x40(%rbx),%rax
andb   $0xfe,0x18(%rax)
mov    0x8(%rax),%rdi
callq  b59 <ossl_provider_activate+0xe9>
mov    $0x1,%eax
mov    0x18(%rsp),%rsi
xor    %fs:0x28,%rsi
jne    bdd <ossl_provider_activate+0x16d>
add    $0x20,%rsp
pop    %rbx
retq   
nopl   0x0(%rax)
callq  b7d <ossl_provider_activate+0x10d>
lea    0x0(%rip),%rdx        # b84 <ossl_provider_activate+0x114>
lea    0x0(%rip),%rdi        # b8b <ossl_provider_activate+0x11b>
mov    $0x20a,%esi
callq  b95 <ossl_provider_activate+0x125>
mov    0x10(%rbx),%r8
lea    0x0(%rip),%rcx        # ba0 <ossl_provider_activate+0x130>
xor    %edx,%edx
mov    $0x46,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  bb3 <ossl_provider_activate+0x143>
xor    %eax,%eax
jmp    b5e <ossl_provider_activate+0xee>
nopw   0x0(%rax,%rax,1)
mov    -0x8(%rdx),%rax
mov    %rax,0x58(%rbx)
jmpq   b02 <ossl_provider_activate+0x92>
nopl   (%rax)
mov    -0x8(%rdx),%rax
mov    %rax,0x50(%rbx)
jmpq   b02 <ossl_provider_activate+0x92>
callq  be2 <ossl_provider_activate+0x172>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000bf0 <ossl_provider_ctx>:
mov    0x78(%rdi),%rax
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000c00 <ossl_provider_forall_loaded>:
push   %r15
push   %r14
mov    %rdx,%r15
push   %r13
push   %r12
lea    0x0(%rip),%rdx        # c12 <ossl_provider_forall_loaded+0x12>
push   %rbp
push   %rbx
mov    %rsi,%r14
mov    $0x1,%esi
sub    $0x18,%rsp
callq  c25 <ossl_provider_forall_loaded+0x25>
test   %rax,%rax
je     d2d <ossl_provider_forall_loaded+0x12d>
mov    0x8(%rax),%rdi
mov    %rax,%rbp
callq  c3a <ossl_provider_forall_loaded+0x3a>
testb  $0x1,0x18(%rbp)
jne    ca8 <ossl_provider_forall_loaded+0xa8>
mov    0x0(%rbp),%rdi
mov    $0x1,%r12d
callq  c4f <ossl_provider_forall_loaded+0x4f>
test   %eax,%eax
mov    %eax,%r13d
jle    c88 <ossl_provider_forall_loaded+0x88>
xor    %ebx,%ebx
nopl   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rdi
mov    %ebx,%esi
callq  c6b <ossl_provider_forall_loaded+0x6b>
testb  $0x1,(%rax)
je     c80 <ossl_provider_forall_loaded+0x80>
mov    %r15,%rsi
mov    %rax,%rdi
callq  *%r14
test   %eax,%eax
mov    %eax,%r12d
je     c88 <ossl_provider_forall_loaded+0x88>
add    $0x1,%ebx
cmp    %ebx,%r13d
jne    c60 <ossl_provider_forall_loaded+0x60>
mov    0x8(%rbp),%rdi
callq  c91 <ossl_provider_forall_loaded+0x91>
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
callq  cb3 <ossl_provider_forall_loaded+0xb3>
test   %eax,%eax
mov    %eax,%r12d
movl   $0x0,0xc(%rsp)
jg     cd8 <ossl_provider_forall_loaded+0xd8>
jmpq   c40 <ossl_provider_forall_loaded+0x40>
nopw   0x0(%rax,%rax,1)
add    $0x1,%ebx
cmp    %ebx,%r12d
je     d18 <ossl_provider_forall_loaded+0x118>
mov    0x0(%rbp),%rdi
mov    %ebx,%esi
callq  ce3 <ossl_provider_forall_loaded+0xe3>
testb  $0x2,(%rax)
mov    %rax,%r13
je     cd0 <ossl_provider_forall_loaded+0xd0>
mov    %rax,%rdi
callq  cf3 <ossl_provider_forall_loaded+0xf3>
test   %eax,%eax
je     cd0 <ossl_provider_forall_loaded+0xd0>
mov    %r13,%rdi
callq  10 <provider_activate>
test   %eax,%eax
je     d68 <ossl_provider_forall_loaded+0x168>
add    $0x1,%ebx
orb    $0x4,0x0(%r13)
addl   $0x1,0xc(%rsp)
cmp    %ebx,%r12d
jne    cd8 <ossl_provider_forall_loaded+0xd8>
nopl   (%rax)
mov    0xc(%rsp),%eax
test   %eax,%eax
je     c40 <ossl_provider_forall_loaded+0x40>
andb   $0xfe,0x18(%rbp)
jmpq   c40 <ossl_provider_forall_loaded+0x40>
callq  d32 <ossl_provider_forall_loaded+0x132>
lea    0x0(%rip),%rdx        # d39 <ossl_provider_forall_loaded+0x139>
lea    0x0(%rip),%rdi        # d40 <ossl_provider_forall_loaded+0x140>
mov    $0xbf,%esi
mov    $0x1,%r12d
callq  d50 <ossl_provider_forall_loaded+0x150>
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  d63 <ossl_provider_forall_loaded+0x163>
jmpq   c91 <ossl_provider_forall_loaded+0x91>
mov    %r13,%rdi
callq  d70 <ossl_provider_forall_loaded+0x170>
jmpq   cd0 <ossl_provider_forall_loaded+0xd0>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000d80 <ossl_provider_available>:
test   %rdi,%rdi
je     e50 <ossl_provider_available+0xd0>
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
callq  da7 <ossl_provider_available+0x27>
mov    0x40(%rbp),%r13
testb  $0x1,0x18(%r13)
jne    dd8 <ossl_provider_available+0x58>
mov    0x8(%r13),%rdi
callq  dbb <ossl_provider_available+0x3b>
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
callq  de6 <ossl_provider_available+0x66>
test   %eax,%eax
mov    %eax,%r14d
jg     df8 <ossl_provider_available+0x78>
jmp    e42 <ossl_provider_available+0xc2>
nop
add    $0x1,%ebx
cmp    %ebx,%r14d
je     e38 <ossl_provider_available+0xb8>
mov    0x0(%r13),%rdi
mov    %ebx,%esi
callq  e03 <ossl_provider_available+0x83>
testb  $0x2,(%rax)
mov    %rax,%r12
je     df0 <ossl_provider_available+0x70>
mov    %rax,%rdi
callq  e13 <ossl_provider_available+0x93>
test   %eax,%eax
je     df0 <ossl_provider_available+0x70>
mov    %r12,%rdi
callq  10 <provider_activate>
test   %eax,%eax
je     e58 <ossl_provider_available+0xd8>
add    $0x1,%ebx
orb    $0x4,(%r12)
add    $0x1,%r15d
cmp    %ebx,%r14d
jne    df8 <ossl_provider_available+0x78>
nopl   0x0(%rax)
test   %r15d,%r15d
je     e42 <ossl_provider_available+0xc2>
andb   $0xfe,0x18(%r13)
mov    0x40(%rbp),%r13
jmpq   db2 <ossl_provider_available+0x32>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdi
callq  e60 <ossl_provider_available+0xe0>
jmp    df0 <ossl_provider_available+0x70>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000e70 <ossl_provider_set_fallback>:
test   %rdi,%rdi
je     e80 <ossl_provider_set_fallback+0x10>
orb    $0x2,(%rdi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000e90 <provider_store_new>:
push   %r15
push   %r14
lea    0x0(%rip),%rsi        # e9b <provider_store_new+0xb>
push   %r13
push   %r12
mov    %rdi,%r15
push   %rbp
push   %rbx
mov    $0x8c,%edx
mov    $0x20,%edi
sub    $0x8,%rsp
callq  eb7 <provider_store_new+0x27>
test   %rax,%rax
je     10dc <provider_store_new+0x24c>
lea    -0xc97(%rip),%rdi        # 230 <ossl_provider_cmp>
mov    %rax,%r12
callq  ecf <provider_store_new+0x3f>
test   %rax,%rax
mov    %rax,(%r12)
je     1098 <provider_store_new+0x208>
callq  ee1 <provider_store_new+0x51>
test   %rax,%rax
mov    %rax,0x8(%r12)
je     1098 <provider_store_new+0x208>
mov    0x0(%rip),%rbp        # ef6 <provider_store_new+0x66>
orb    $0x1,0x18(%r12)
mov    0x0(%rbp),%r13
test   %r13,%r13
jne    f21 <provider_store_new+0x91>
jmpq   fb3 <provider_store_new+0x123>
nopw   0x0(%rax,%rax,1)
add    $0x18,%rbp
mov    0x0(%rbp),%r13
test   %r13,%r13
je     fb3 <provider_store_new+0x123>
lea    0x0(%rip),%rsi        # f28 <provider_store_new+0x98>
mov    $0xec,%edx
mov    $0x80,%edi
mov    0x8(%rbp),%r14
callq  f3b <provider_store_new+0xab>
test   %rax,%rax
mov    %rax,%rbx
je     fc8 <provider_store_new+0x138>
mov    %rax,%rdi
callq  f4f <provider_store_new+0xbf>
test   %eax,%eax
je     fc8 <provider_store_new+0x138>
lea    0x0(%rip),%rsi        # f5a <provider_store_new+0xca>
mov    $0xf1,%edx
mov    %r13,%rdi
callq  f67 <provider_store_new+0xd7>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     fc8 <provider_store_new+0x138>
mov    (%r12),%rdi
mov    %r14,0x28(%rbx)
mov    %rbx,%rsi
callq  f80 <provider_store_new+0xf0>
test   %eax,%eax
je     1090 <provider_store_new+0x200>
testb  $0x1,0x10(%rbp)
mov    %r15,0x38(%rbx)
mov    %r12,0x40(%rbx)
je     f10 <provider_store_new+0x80>
add    $0x18,%rbp
mov    %rbx,%rdi
callq  fa6 <provider_store_new+0x116>
mov    0x0(%rbp),%r13
test   %r13,%r13
jne    f21 <provider_store_new+0x91>
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
callq  fd0 <provider_store_new+0x140>
callq  fd5 <provider_store_new+0x145>
lea    0x0(%rip),%rdx        # fdc <provider_store_new+0x14c>
lea    0x0(%rip),%rdi        # fe3 <provider_store_new+0x153>
mov    $0xf3,%esi
callq  fed <provider_store_new+0x15d>
mov    $0xf,%edi
xor    %edx,%edx
mov    $0x41,%esi
xor    %eax,%eax
callq  1000 <provider_store_new+0x170>
xor    %edi,%edi
callq  1007 <provider_store_new+0x177>
mov    0x10(%r12),%rdi
lea    0x0(%rip),%rsi        # 1013 <provider_store_new+0x183>
mov    $0x84,%edx
callq  101d <provider_store_new+0x18d>
mov    (%r12),%rdi
lea    -0xac8(%rip),%rsi        # 560 <provider_deactivate_free>
callq  102d <provider_store_new+0x19d>
mov    0x8(%r12),%rdi
callq  1037 <provider_store_new+0x1a7>
lea    0x0(%rip),%rsi        # 103e <provider_store_new+0x1ae>
mov    $0x87,%edx
mov    %r12,%rdi
callq  104b <provider_store_new+0x1bb>
callq  1050 <provider_store_new+0x1c0>
lea    0x0(%rip),%rdx        # 1057 <provider_store_new+0x1c7>
lea    0x0(%rip),%rdi        # 105e <provider_store_new+0x1ce>
mov    $0xa4,%esi
callq  1068 <provider_store_new+0x1d8>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x44,%esi
mov    $0xf,%edi
callq  107b <provider_store_new+0x1eb>
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
jmpq   1002 <provider_store_new+0x172>
mov    0x10(%r12),%rdi
lea    0x0(%rip),%rsi        # 10a4 <provider_store_new+0x214>
mov    $0x84,%edx
callq  10ae <provider_store_new+0x21e>
mov    (%r12),%rdi
lea    -0xb59(%rip),%rsi        # 560 <provider_deactivate_free>
callq  10be <provider_store_new+0x22e>
mov    0x8(%r12),%rdi
callq  10c8 <provider_store_new+0x238>
lea    0x0(%rip),%rsi        # 10cf <provider_store_new+0x23f>
mov    $0x87,%edx
mov    %r12,%rdi
callq  10dc <provider_store_new+0x24c>
xor    %eax,%eax
jmp    107d <provider_store_new+0x1ed>

00000000000010e0 <ossl_provider_name>:
mov    0x10(%rdi),%rax
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000010f0 <ossl_provider_dso>:
mov    0x20(%rdi),%rax
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001100 <ossl_provider_module_name>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001110 <ossl_provider_module_path>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001120 <ossl_provider_prov_ctx>:
test   %rdi,%rdi
je     1130 <ossl_provider_prov_ctx+0x10>
mov    0x78(%rdi),%rax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001140 <ossl_provider_library_context>:
test   %rdi,%rdi
je     1150 <ossl_provider_library_context+0x10>
mov    0x38(%rdi),%rax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001160 <core_get_libctx>:
jmpq   1165 <core_get_libctx+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001170 <ossl_provider_teardown>:
mov    0x48(%rdi),%rax
test   %rax,%rax
je     1180 <ossl_provider_teardown+0x10>
mov    0x78(%rdi),%rdi
jmpq   *%rax
nop
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001190 <ossl_provider_gettable_params>:
mov    0x50(%rdi),%rax
test   %rax,%rax
je     11a0 <ossl_provider_gettable_params+0x10>
mov    0x78(%rdi),%rdi
jmpq   *%rax
nop
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000011b0 <ossl_provider_get_params>:
mov    0x58(%rdi),%rax
test   %rax,%rax
je     11c0 <ossl_provider_get_params+0x10>
mov    0x78(%rdi),%rdi
jmpq   *%rax
nop
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000011d0 <ossl_provider_query_operation>:
mov    %rdi,%rax
mov    0x78(%rdi),%rdi
mov    0x60(%rax),%rax
jmpq   *%rax
nopl   (%rax)

00000000000011e0 <ossl_provider_set_operation_bit>:
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
cmp    0x70(%rdi),%rbx
mov    %eax,%ebp
jae    1218 <ossl_provider_set_operation_bit+0x38>
add    0x68(%r12),%rbx
mov    $0x1,%eax
or     %bpl,(%rbx)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
mov    0x68(%rdi),%rdi
lea    0x1(%rbx),%rsi
lea    0x0(%rip),%rdx        # 1227 <ossl_provider_set_operation_bit+0x47>
mov    $0x346,%ecx
callq  1231 <ossl_provider_set_operation_bit+0x51>
test   %rax,%rax
mov    %rax,0x68(%r12)
je     1260 <ossl_provider_set_operation_bit+0x80>
mov    0x70(%r12),%rcx
mov    %rbx,%rdx
xor    %esi,%esi
sub    %rcx,%rdx
lea    (%rax,%rcx,1),%rdi
add    $0x1,%rdx
callq  1255 <ossl_provider_set_operation_bit+0x75>
jmp    1202 <ossl_provider_set_operation_bit+0x22>
nopw   0x0(%rax,%rax,1)
callq  1265 <ossl_provider_set_operation_bit+0x85>
lea    0x0(%rip),%rdx        # 126c <ossl_provider_set_operation_bit+0x8c>
lea    0x0(%rip),%rdi        # 1273 <ossl_provider_set_operation_bit+0x93>
mov    $0x348,%esi
callq  127d <ossl_provider_set_operation_bit+0x9d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  1290 <ossl_provider_set_operation_bit+0xb0>
xor    %eax,%eax
jmpq   120f <ossl_provider_set_operation_bit+0x2f>
nopw   0x0(%rax,%rax,1)

00000000000012a0 <ossl_provider_test_operation_bit>:
mov    %rsi,%r8
shr    $0x3,%r8
test   %rdx,%rdx
je     12e0 <ossl_provider_test_operation_bit+0x40>
cmp    0x70(%rdi),%r8
movl   $0x0,(%rdx)
mov    $0x1,%eax
jae    131a <ossl_provider_test_operation_bit+0x7a>
mov    0x68(%rdi),%rdi
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
callq  12e9 <ossl_provider_test_operation_bit+0x49>
lea    0x0(%rip),%rdx        # 12f0 <ossl_provider_test_operation_bit+0x50>
lea    0x0(%rip),%rdi        # 12f7 <ossl_provider_test_operation_bit+0x57>
mov    $0x359,%esi
callq  1301 <ossl_provider_test_operation_bit+0x61>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  1314 <ossl_provider_test_operation_bit+0x74>
add    $0x8,%rsp
xor    %eax,%eax
repz retq 
