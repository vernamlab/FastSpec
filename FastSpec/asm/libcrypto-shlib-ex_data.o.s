
openssl_crypto_dump/libcrypto-shlib-ex_data.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <dummy_free>:
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000010 <dummy_dup>:
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <cleanup_cb>:
lea    0x0(%rip),%rsi        # 27 <cleanup_cb+0x7>
mov    $0x37,%edx
jmpq   31 <cleanup_cb+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000040 <dummy_new>:
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000050 <do_ex_data_init>:
push   %rbx
callq  56 <do_ex_data_init+0x6>
mov    %rax,%rbx
xor    %eax,%eax
test   %rbx,%rbx
je     71 <do_ex_data_init+0x21>
callq  65 <do_ex_data_init+0x15>
test   %rax,%rax
mov    %rax,(%rbx)
setne  %al
movzbl %al,%eax
pop    %rbx
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000080 <crypto_cleanup_all_ex_data_int>:
push   %r12
push   %rbp
push   %rbx
callq  89 <crypto_cleanup_all_ex_data_int+0x9>
test   %rax,%rax
je     d1 <crypto_cleanup_all_ex_data_int+0x51>
lea    0x8(%rax),%rbx
lea    0x98(%rax),%rbp
mov    %rax,%r12
nopl   0x0(%rax)
mov    (%rbx),%rdi
lea    -0x8a(%rip),%rsi        # 20 <cleanup_cb>
add    $0x8,%rbx
callq  b3 <crypto_cleanup_all_ex_data_int+0x33>
movq   $0x0,-0x8(%rbx)
cmp    %rbp,%rbx
jne    a0 <crypto_cleanup_all_ex_data_int+0x20>
mov    (%r12),%rdi
callq  c9 <crypto_cleanup_all_ex_data_int+0x49>
movq   $0x0,(%r12)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopw   %cs:0x0(%rax,%rax,1)

00000000000000e0 <crypto_free_ex_index_ex>:
push   %r12
push   %rbp
mov    %edx,%r12d
push   %rbx
movslq %esi,%rbp
callq  ef <crypto_free_ex_index_ex+0xf>
test   %rax,%rax
je     168 <crypto_free_ex_index_ex+0x88>
cmp    $0x11,%ebp
ja     138 <crypto_free_ex_index_ex+0x58>
mov    (%rax),%rdi
mov    %rax,%rbx
test   %rdi,%rdi
je     168 <crypto_free_ex_index_ex+0x88>
callq  109 <crypto_free_ex_index_ex+0x29>
test   %r12d,%r12d
js     120 <crypto_free_ex_index_ex+0x40>
lea    (%rbx,%rbp,8),%rbp
mov    0x8(%rbp),%rdi
callq  11b <crypto_free_ex_index_ex+0x3b>
cmp    %eax,%r12d
jl     170 <crypto_free_ex_index_ex+0x90>
xor    %ebp,%ebp
mov    (%rbx),%rdi
callq  12a <crypto_free_ex_index_ex+0x4a>
mov    %ebp,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
callq  13d <crypto_free_ex_index_ex+0x5d>
lea    0x0(%rip),%rdx        # 144 <crypto_free_ex_index_ex+0x64>
lea    0x0(%rip),%rdi        # 14b <crypto_free_ex_index_ex+0x6b>
mov    $0x24,%esi
callq  155 <crypto_free_ex_index_ex+0x75>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  168 <crypto_free_ex_index_ex+0x88>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
retq   
nop
mov    0x8(%rbp),%rdi
mov    %r12d,%esi
callq  17c <crypto_free_ex_index_ex+0x9c>
test   %rax,%rax
je     120 <crypto_free_ex_index_ex+0x40>
lea    -0x148(%rip),%rcx        # 40 <dummy_new>
mov    $0x1,%ebp
mov    %rcx,0x10(%rax)
lea    -0x188(%rip),%rcx        # 10 <dummy_dup>
mov    %rcx,0x20(%rax)
lea    -0x1a3(%rip),%rcx        # 0 <dummy_free>
mov    %rcx,0x18(%rax)
jmpq   122 <crypto_free_ex_index_ex+0x42>
nopl   0x0(%rax)

00000000000001b0 <CRYPTO_free_ex_index>:
mov    %esi,%edx
mov    %edi,%esi
xor    %edi,%edi
jmpq   1bb <CRYPTO_free_ex_index+0xb>
nopl   0x0(%rax,%rax,1)

00000000000001c0 <crypto_get_ex_new_index_ex>:
push   %r15
push   %r14
mov    %rdx,%r15
push   %r13
push   %r12
mov    %rcx,%r14
push   %rbp
push   %rbx
mov    %r9,%rbp
movslq %esi,%rbx
sub    $0x18,%rsp
mov    %r8,0x8(%rsp)
callq  1e4 <crypto_get_ex_new_index_ex+0x24>
test   %rax,%rax
je     398 <crypto_get_ex_new_index_ex+0x1d8>
cmp    $0x11,%ebx
ja     368 <crypto_get_ex_new_index_ex+0x1a8>
mov    (%rax),%rdi
mov    %rax,%r12
test   %rdi,%rdi
je     398 <crypto_get_ex_new_index_ex+0x1d8>
lea    (%r12,%rbx,8),%r13
callq  20e <crypto_get_ex_new_index_ex+0x4e>
cmpq   $0x0,0x8(%r13)
je     2f0 <crypto_get_ex_new_index_ex+0x130>
lea    0x0(%rip),%rsi        # 220 <crypto_get_ex_new_index_ex+0x60>
mov    $0xa9,%edx
mov    $0x28,%edi
callq  22f <crypto_get_ex_new_index_ex+0x6f>
test   %rax,%rax
mov    %rax,%rbx
je     350 <crypto_get_ex_new_index_ex+0x190>
mov    %r15,(%rax)
mov    %r14,0x8(%rax)
xor    %esi,%esi
mov    0x8(%rsp),%rax
mov    0x8(%r13),%rdi
mov    %rbp,0x20(%rbx)
mov    %rax,0x10(%rbx)
mov    0x50(%rsp),%rax
mov    %rax,0x18(%rbx)
callq  263 <crypto_get_ex_new_index_ex+0xa3>
test   %eax,%eax
je     2a0 <crypto_get_ex_new_index_ex+0xe0>
mov    0x8(%r13),%rdi
callq  270 <crypto_get_ex_new_index_ex+0xb0>
mov    0x8(%r13),%rdi
lea    -0x1(%rax),%ebp
mov    %rbx,%rdx
mov    %ebp,%esi
callq  281 <crypto_get_ex_new_index_ex+0xc1>
mov    (%r12),%rdi
callq  28a <crypto_get_ex_new_index_ex+0xca>
add    $0x18,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
callq  2a5 <crypto_get_ex_new_index_ex+0xe5>
lea    0x0(%rip),%rdx        # 2ac <crypto_get_ex_new_index_ex+0xec>
lea    0x0(%rip),%rdi        # 2b3 <crypto_get_ex_new_index_ex+0xf3>
mov    $0xb5,%esi
mov    $0xffffffff,%ebp
callq  2c2 <crypto_get_ex_new_index_ex+0x102>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  2d5 <crypto_get_ex_new_index_ex+0x115>
lea    0x0(%rip),%rsi        # 2dc <crypto_get_ex_new_index_ex+0x11c>
mov    $0xb6,%edx
mov    %rbx,%rdi
callq  2e9 <crypto_get_ex_new_index_ex+0x129>
jmp    281 <crypto_get_ex_new_index_ex+0xc1>
nopl   0x0(%rax,%rax,1)
callq  2f5 <crypto_get_ex_new_index_ex+0x135>
test   %rax,%rax
mov    %rax,0x8(%r13)
je     310 <crypto_get_ex_new_index_ex+0x150>
xor    %esi,%esi
mov    %rax,%rdi
callq  308 <crypto_get_ex_new_index_ex+0x148>
test   %eax,%eax
jne    219 <crypto_get_ex_new_index_ex+0x59>
callq  315 <crypto_get_ex_new_index_ex+0x155>
lea    0x0(%rip),%rdx        # 31c <crypto_get_ex_new_index_ex+0x15c>
mov    $0xa4,%esi
lea    0x0(%rip),%rdi        # 328 <crypto_get_ex_new_index_ex+0x168>
mov    $0xffffffff,%ebp
callq  332 <crypto_get_ex_new_index_ex+0x172>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  345 <crypto_get_ex_new_index_ex+0x185>
jmpq   281 <crypto_get_ex_new_index_ex+0xc1>
nopw   0x0(%rax,%rax,1)
callq  355 <crypto_get_ex_new_index_ex+0x195>
lea    0x0(%rip),%rdx        # 35c <crypto_get_ex_new_index_ex+0x19c>
mov    $0xab,%esi
jmp    321 <crypto_get_ex_new_index_ex+0x161>
nopl   0x0(%rax,%rax,1)
callq  36d <crypto_get_ex_new_index_ex+0x1ad>
lea    0x0(%rip),%rdx        # 374 <crypto_get_ex_new_index_ex+0x1b4>
lea    0x0(%rip),%rdi        # 37b <crypto_get_ex_new_index_ex+0x1bb>
mov    $0x24,%esi
callq  385 <crypto_get_ex_new_index_ex+0x1c5>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  398 <crypto_get_ex_new_index_ex+0x1d8>
add    $0x18,%rsp
mov    $0xffffffff,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)

00000000000003b0 <CRYPTO_get_ex_new_index>:
sub    $0x10,%rsp
push   %r9
mov    %r8,%r9
mov    %rcx,%r8
mov    %rdx,%rcx
mov    %rsi,%rdx
mov    %edi,%esi
xor    %edi,%edi
callq  3cb <CRYPTO_get_ex_new_index+0x1b>
add    $0x18,%rsp
retq   

00000000000003d0 <CRYPTO_set_ex_data>:
push   %r14
push   %r13
mov    %rdx,%r14
push   %r12
mov    %rdi,%r12
push   %rbp
push   %rbx
mov    0x8(%rdi),%rdi
mov    %esi,%r13d
test   %rdi,%rdi
je     480 <CRYPTO_set_ex_data+0xb0>
callq  3f3 <CRYPTO_set_ex_data+0x23>
cmp    %r13d,%eax
mov    %eax,%ebx
jle    408 <CRYPTO_set_ex_data+0x38>
jmp    458 <CRYPTO_set_ex_data+0x88>
nopl   0x0(%rax)
add    $0x1,%ebx
cmp    %ebx,%r13d
jl     458 <CRYPTO_set_ex_data+0x88>
mov    0x8(%r12),%rdi
xor    %esi,%esi
callq  414 <CRYPTO_set_ex_data+0x44>
test   %eax,%eax
mov    %eax,%ebp
jne    400 <CRYPTO_set_ex_data+0x30>
callq  41f <CRYPTO_set_ex_data+0x4f>
lea    0x0(%rip),%rdx        # 426 <CRYPTO_set_ex_data+0x56>
lea    0x0(%rip),%rdi        # 42d <CRYPTO_set_ex_data+0x5d>
mov    $0x1be,%esi
callq  437 <CRYPTO_set_ex_data+0x67>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  44a <CRYPTO_set_ex_data+0x7a>
pop    %rbx
mov    %ebp,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
mov    0x8(%r12),%rdi
mov    %r14,%rdx
mov    %r13d,%esi
mov    $0x1,%ebp
callq  46d <CRYPTO_set_ex_data+0x9d>
pop    %rbx
mov    %ebp,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
callq  485 <CRYPTO_set_ex_data+0xb5>
test   %rax,%rax
mov    %rax,%rdi
mov    %rax,0x8(%r12)
jne    3ee <CRYPTO_set_ex_data+0x1e>
callq  49b <CRYPTO_set_ex_data+0xcb>
lea    0x0(%rip),%rdx        # 4a2 <CRYPTO_set_ex_data+0xd2>
lea    0x0(%rip),%rdi        # 4a9 <CRYPTO_set_ex_data+0xd9>
mov    $0x1b7,%esi
xor    %ebp,%ebp
callq  4b5 <CRYPTO_set_ex_data+0xe5>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  4c8 <CRYPTO_set_ex_data+0xf8>
jmp    46d <CRYPTO_set_ex_data+0x9d>
nopw   0x0(%rax,%rax,1)

00000000000004d0 <CRYPTO_get_ex_data>:
mov    %rdi,%rax
mov    0x8(%rdi),%rdi
test   %rdi,%rdi
je     518 <CRYPTO_get_ex_data+0x48>
push   %rbp
push   %rbx
mov    %esi,%ebp
mov    %rax,%rbx
sub    $0x8,%rsp
callq  4ec <CRYPTO_get_ex_data+0x1c>
cmp    %eax,%ebp
jge    508 <CRYPTO_get_ex_data+0x38>
mov    0x8(%rbx),%rdi
add    $0x8,%rsp
mov    %ebp,%esi
pop    %rbx
pop    %rbp
jmpq   501 <CRYPTO_get_ex_data+0x31>
nopl   0x0(%rax)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000000520 <crypto_new_ex_data_ex>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rcx,%r13
push   %rbp
push   %rbx
mov    %rdi,%r12
movslq %esi,%rbp
sub    $0x78,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x68(%rsp)
xor    %eax,%eax
mov    %rdx,(%rsp)
callq  550 <crypto_new_ex_data_ex+0x30>
test   %rax,%rax
je     6bc <crypto_new_ex_data_ex+0x19c>
cmp    $0x11,%ebp
ja     6d7 <crypto_new_ex_data_ex+0x1b7>
mov    (%rax),%rdi
mov    %rax,%rbx
test   %rdi,%rdi
je     6bc <crypto_new_ex_data_ex+0x19c>
lea    (%rbx,%rbp,8),%r14
callq  57a <crypto_new_ex_data_ex+0x5a>
mov    0x8(%r14),%rdi
mov    %r12,0x0(%r13)
movq   $0x0,0x8(%r13)
callq  58f <crypto_new_ex_data_ex+0x6f>
test   %eax,%eax
mov    %eax,%r12d
jle    6c8 <crypto_new_ex_data_ex+0x1a8>
lea    0x10(%rsp),%rbp
cmp    $0x9,%eax
mov    %rbp,0x8(%rsp)
jg     660 <crypto_new_ex_data_ex+0x140>
xor    %r15d,%r15d
mov    0x8(%r14),%rdi
mov    %r15d,%esi
callq  5bc <crypto_new_ex_data_ex+0x9c>
mov    %rax,0x0(%rbp,%r15,8)
add    $0x1,%r15
cmp    %r15d,%r12d
jg     5b0 <crypto_new_ex_data_ex+0x90>
mov    (%rbx),%rdi
xor    %ebx,%ebx
callq  5d4 <crypto_new_ex_data_ex+0xb4>
nopl   0x0(%rax)
mov    0x0(%rbp,%rbx,8),%rax
test   %rax,%rax
je     60f <crypto_new_ex_data_ex+0xef>
cmpq   $0x0,0x10(%rax)
je     60f <crypto_new_ex_data_ex+0xef>
mov    %ebx,%esi
mov    %r13,%rdi
callq  5f3 <crypto_new_ex_data_ex+0xd3>
mov    0x0(%rbp,%rbx,8),%r10
mov    %ebx,%ecx
mov    %r13,%rdx
mov    %rax,%rsi
mov    (%rsp),%rdi
mov    0x8(%r10),%r9
mov    (%r10),%r8
callq  *0x10(%r10)
add    $0x1,%rbx
cmp    %ebx,%r12d
jg     5d8 <crypto_new_ex_data_ex+0xb8>
cmp    0x8(%rsp),%rbp
mov    $0x1,%eax
je     63d <crypto_new_ex_data_ex+0x11d>
lea    0x0(%rip),%rsi        # 62b <crypto_new_ex_data_ex+0x10b>
mov    $0xfb,%edx
mov    %rbp,%rdi
callq  638 <crypto_new_ex_data_ex+0x118>
mov    $0x1,%eax
mov    0x68(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    70e <crypto_new_ex_data_ex+0x1ee>
add    $0x78,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
movslq %eax,%rdi
lea    0x0(%rip),%rsi        # 66a <crypto_new_ex_data_ex+0x14a>
mov    $0xe8,%edx
shl    $0x3,%rdi
callq  678 <crypto_new_ex_data_ex+0x158>
test   %rax,%rax
mov    %rax,%rbp
jne    5ad <crypto_new_ex_data_ex+0x8d>
mov    (%rbx),%rdi
callq  68c <crypto_new_ex_data_ex+0x16c>
callq  691 <crypto_new_ex_data_ex+0x171>
lea    0x0(%rip),%rdx        # 698 <crypto_new_ex_data_ex+0x178>
lea    0x0(%rip),%rdi        # 69f <crypto_new_ex_data_ex+0x17f>
mov    $0xf0,%esi
callq  6a9 <crypto_new_ex_data_ex+0x189>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  6bc <crypto_new_ex_data_ex+0x19c>
xor    %eax,%eax
jmpq   63d <crypto_new_ex_data_ex+0x11d>
nopl   0x0(%rax,%rax,1)
mov    (%rbx),%rdi
xor    %ebp,%ebp
callq  6d2 <crypto_new_ex_data_ex+0x1b2>
jmpq   624 <crypto_new_ex_data_ex+0x104>
callq  6dc <crypto_new_ex_data_ex+0x1bc>
lea    0x0(%rip),%rdx        # 6e3 <crypto_new_ex_data_ex+0x1c3>
lea    0x0(%rip),%rdi        # 6ea <crypto_new_ex_data_ex+0x1ca>
mov    $0x24,%esi
callq  6f4 <crypto_new_ex_data_ex+0x1d4>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
callq  707 <crypto_new_ex_data_ex+0x1e7>
xor    %eax,%eax
jmpq   63d <crypto_new_ex_data_ex+0x11d>
callq  713 <crypto_new_ex_data_ex+0x1f3>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000720 <CRYPTO_new_ex_data>:
mov    %rdx,%rcx
mov    %rsi,%rdx
mov    %edi,%esi
xor    %edi,%edi
jmpq   72f <CRYPTO_new_ex_data+0xf>
nop

0000000000000730 <CRYPTO_dup_ex_data>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x88,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x78(%rsp)
xor    %eax,%eax
cmpq   $0x0,0x8(%rdx)
mov    (%rdx),%rax
mov    %rax,(%rsi)
je     8c4 <CRYPTO_dup_ex_data+0x194>
movslq %edi,%rbx
mov    (%rdx),%rdi
mov    %rsi,%r13
mov    %rdx,%rbp
callq  773 <CRYPTO_dup_ex_data+0x43>
test   %rax,%rax
mov    %rax,(%rsp)
je     920 <CRYPTO_dup_ex_data+0x1f0>
cmp    $0x11,%ebx
ja     8ef <CRYPTO_dup_ex_data+0x1bf>
mov    (%rax),%rdi
mov    %rax,%r14
test   %rdi,%rdi
je     920 <CRYPTO_dup_ex_data+0x1f0>
lea    (%r14,%rbx,8),%r14
callq  7a1 <CRYPTO_dup_ex_data+0x71>
mov    0x8(%r14),%rdi
callq  7aa <CRYPTO_dup_ex_data+0x7a>
mov    0x8(%rbp),%rdi
mov    %eax,%ebx
callq  7b5 <CRYPTO_dup_ex_data+0x85>
cmp    %eax,%ebx
cmovg  %eax,%ebx
test   %ebx,%ebx
jle    8b0 <CRYPTO_dup_ex_data+0x180>
lea    0x20(%rsp),%rax
cmp    $0x9,%ebx
mov    %rax,0x8(%rsp)
mov    %rax,%r12
jg     950 <CRYPTO_dup_ex_data+0x220>
xor    %r15d,%r15d
nopl   0x0(%rax,%rax,1)
mov    0x8(%r14),%rdi
mov    %r15d,%esi
callq  7ec <CRYPTO_dup_ex_data+0xbc>
mov    %rax,(%r12,%r15,8)
add    $0x1,%r15
cmp    %r15d,%ebx
jg     7e0 <CRYPTO_dup_ex_data+0xb0>
mov    (%rsp),%rax
lea    -0x1(%rbx),%r14d
mov    (%rax),%rdi
callq  809 <CRYPTO_dup_ex_data+0xd9>
mov    %r14d,%esi
mov    %r13,%rdi
callq  814 <CRYPTO_dup_ex_data+0xe4>
mov    %r14d,%esi
mov    %rax,%rdx
mov    %r13,%rdi
callq  822 <CRYPTO_dup_ex_data+0xf2>
test   %eax,%eax
je     928 <CRYPTO_dup_ex_data+0x1f8>
lea    0x18(%rsp),%rax
xor    %r15d,%r15d
mov    %rax,(%rsp)
nopw   %cs:0x0(%rax,%rax,1)
mov    %r15d,%esi
mov    %rbp,%rdi
mov    %r15d,%r14d
callq  84e <CRYPTO_dup_ex_data+0x11e>
mov    %rax,0x18(%rsp)
mov    (%r12,%r15,8),%rcx
test   %rcx,%rcx
je     889 <CRYPTO_dup_ex_data+0x159>
mov    0x20(%rcx),%r11
test   %r11,%r11
je     889 <CRYPTO_dup_ex_data+0x159>
mov    0x8(%rcx),%r9
mov    (%rcx),%r8
mov    %rbp,%rsi
mov    %r15d,%ecx
mov    (%rsp),%rdx
mov    %r13,%rdi
callq  *%r11
test   %eax,%eax
je     928 <CRYPTO_dup_ex_data+0x1f8>
mov    0x18(%rsp),%rax
mov    %rax,%rdx
mov    %r14d,%esi
mov    %r13,%rdi
add    $0x1,%r15
callq  89b <CRYPTO_dup_ex_data+0x16b>
cmp    %r15d,%ebx
jg     840 <CRYPTO_dup_ex_data+0x110>
mov    $0x1,%eax
jmpq   92a <CRYPTO_dup_ex_data+0x1fa>
nopw   0x0(%rax,%rax,1)
mov    (%rsp),%rax
mov    (%rax),%rdi
callq  8bc <CRYPTO_dup_ex_data+0x18c>
test   %ebx,%ebx
jne    980 <CRYPTO_dup_ex_data+0x250>
mov    $0x1,%eax
mov    0x78(%rsp),%rdx
xor    %fs:0x28,%rdx
jne    9b7 <CRYPTO_dup_ex_data+0x287>
add    $0x88,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
callq  8f4 <CRYPTO_dup_ex_data+0x1c4>
lea    0x0(%rip),%rdx        # 8fb <CRYPTO_dup_ex_data+0x1cb>
lea    0x0(%rip),%rdi        # 902 <CRYPTO_dup_ex_data+0x1d2>
mov    $0x24,%esi
callq  90c <CRYPTO_dup_ex_data+0x1dc>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  91f <CRYPTO_dup_ex_data+0x1ef>
nop
xor    %eax,%eax
jmp    8c9 <CRYPTO_dup_ex_data+0x199>
nopl   0x0(%rax)
xor    %eax,%eax
cmp    0x8(%rsp),%r12
je     8c9 <CRYPTO_dup_ex_data+0x199>
lea    0x0(%rip),%rsi        # 938 <CRYPTO_dup_ex_data+0x208>
mov    $0x14a,%edx
mov    %r12,%rdi
mov    %eax,(%rsp)
callq  948 <CRYPTO_dup_ex_data+0x218>
mov    (%rsp),%eax
jmpq   8c9 <CRYPTO_dup_ex_data+0x199>
movslq %ebx,%rdi
lea    0x0(%rip),%rsi        # 95a <CRYPTO_dup_ex_data+0x22a>
mov    $0x128,%edx
shl    $0x3,%rdi
callq  968 <CRYPTO_dup_ex_data+0x238>
test   %rax,%rax
mov    %rax,%r12
jne    7d8 <CRYPTO_dup_ex_data+0xa8>
mov    (%rsp),%rax
mov    (%rax),%rdi
callq  980 <CRYPTO_dup_ex_data+0x250>
callq  985 <CRYPTO_dup_ex_data+0x255>
lea    0x0(%rip),%rdx        # 98c <CRYPTO_dup_ex_data+0x25c>
lea    0x0(%rip),%rdi        # 993 <CRYPTO_dup_ex_data+0x263>
mov    $0x132,%esi
callq  99d <CRYPTO_dup_ex_data+0x26d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  9b0 <CRYPTO_dup_ex_data+0x280>
xor    %eax,%eax
jmpq   8c9 <CRYPTO_dup_ex_data+0x199>
callq  9bc <CRYPTO_dup_ex_data+0x28c>
nopl   0x0(%rax)

00000000000009c0 <CRYPTO_free_ex_data>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
movslq %edi,%rbp
mov    %rdx,%rbx
sub    $0x78,%rsp
mov    (%rdx),%rdi
mov    %fs:0x28,%rax
mov    %rax,0x68(%rsp)
xor    %eax,%eax
mov    %rsi,(%rsp)
callq  9f0 <CRYPTO_free_ex_data+0x30>
test   %rax,%rax
je     ac7 <CRYPTO_free_ex_data+0x107>
cmp    $0x11,%ebp
ja     bb8 <CRYPTO_free_ex_data+0x1f8>
mov    (%rax),%rdi
mov    %rax,%r14
test   %rdi,%rdi
je     ac7 <CRYPTO_free_ex_data+0x107>
lea    (%r14,%rbp,8),%r13
callq  a1a <CRYPTO_free_ex_data+0x5a>
mov    0x8(%r13),%rdi
callq  a23 <CRYPTO_free_ex_data+0x63>
test   %eax,%eax
mov    %eax,%ebp
jle    ba8 <CRYPTO_free_ex_data+0x1e8>
lea    0x10(%rsp),%r12
cmp    $0x9,%eax
mov    %r12,0x8(%rsp)
jg     b08 <CRYPTO_free_ex_data+0x148>
xor    %r15d,%r15d
nopl   0x0(%rax,%rax,1)
mov    0x8(%r13),%rdi
mov    %r15d,%esi
callq  a54 <CRYPTO_free_ex_data+0x94>
mov    %rax,(%r12,%r15,8)
add    $0x1,%r15
cmp    %r15d,%ebp
jg     a48 <CRYPTO_free_ex_data+0x88>
mov    (%r14),%rdi
xor    %r13d,%r13d
callq  a6c <CRYPTO_free_ex_data+0xac>
nopl   0x0(%rax)
mov    (%r12,%r13,8),%r14
test   %r14,%r14
je     aa3 <CRYPTO_free_ex_data+0xe3>
cmpq   $0x0,0x18(%r14)
je     aa3 <CRYPTO_free_ex_data+0xe3>
mov    %r13d,%esi
mov    %rbx,%rdi
callq  a8b <CRYPTO_free_ex_data+0xcb>
mov    0x8(%r14),%r9
mov    (%r14),%r8
mov    %r13d,%ecx
mov    %rbx,%rdx
mov    %rax,%rsi
mov    (%rsp),%rdi
callq  *0x18(%r14)
add    $0x1,%r13
cmp    %r13d,%ebp
jg     a70 <CRYPTO_free_ex_data+0xb0>
cmp    0x8(%rsp),%r12
je     ac7 <CRYPTO_free_ex_data+0x107>
lea    0x0(%rip),%rsi        # aba <CRYPTO_free_ex_data+0xfa>
mov    $0x17f,%edx
mov    %r12,%rdi
callq  ac7 <CRYPTO_free_ex_data+0x107>
mov    0x8(%rbx),%rdi
callq  ad0 <CRYPTO_free_ex_data+0x110>
mov    0x68(%rsp),%rax
xor    %fs:0x28,%rax
movq   $0x0,0x8(%rbx)
movq   $0x0,(%rbx)
jne    bed <CRYPTO_free_ex_data+0x22d>
add    $0x78,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopw   0x0(%rax,%rax,1)
movslq %eax,%rdi
lea    0x0(%rip),%rsi        # b12 <CRYPTO_free_ex_data+0x152>
mov    $0x169,%edx
shl    $0x3,%rdi
callq  b20 <CRYPTO_free_ex_data+0x160>
test   %rax,%rax
mov    %rax,%r12
jne    a40 <CRYPTO_free_ex_data+0x80>
mov    (%r14),%rdi
callq  b34 <CRYPTO_free_ex_data+0x174>
movl   $0x0,0x8(%rsp)
nopl   0x0(%rax)
mov    (%r14),%rdi
callq  b48 <CRYPTO_free_ex_data+0x188>
mov    0x8(%r13),%rdi
mov    0x8(%rsp),%esi
callq  b55 <CRYPTO_free_ex_data+0x195>
mov    (%r14),%rdi
mov    %rax,%r15
callq  b60 <CRYPTO_free_ex_data+0x1a0>
test   %r15,%r15
je     b91 <CRYPTO_free_ex_data+0x1d1>
cmpq   $0x0,0x18(%r15)
je     b91 <CRYPTO_free_ex_data+0x1d1>
mov    0x8(%rsp),%esi
mov    %rbx,%rdi
callq  b78 <CRYPTO_free_ex_data+0x1b8>
mov    0x8(%r15),%r9
mov    (%r15),%r8
mov    %rbx,%rdx
mov    0x8(%rsp),%ecx
mov    %rax,%rsi
mov    (%rsp),%rdi
callq  *0x18(%r15)
addl   $0x1,0x8(%rsp)
mov    0x8(%rsp),%eax
cmp    %eax,%ebp
jne    b40 <CRYPTO_free_ex_data+0x180>
jmpq   ab3 <CRYPTO_free_ex_data+0xf3>
nopl   0x0(%rax,%rax,1)
mov    (%r14),%rdi
xor    %r12d,%r12d
callq  bb3 <CRYPTO_free_ex_data+0x1f3>
jmpq   ab3 <CRYPTO_free_ex_data+0xf3>
callq  bbd <CRYPTO_free_ex_data+0x1fd>
lea    0x0(%rip),%rdx        # bc4 <CRYPTO_free_ex_data+0x204>
lea    0x0(%rip),%rdi        # bcb <CRYPTO_free_ex_data+0x20b>
mov    $0x24,%esi
callq  bd5 <CRYPTO_free_ex_data+0x215>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  be8 <CRYPTO_free_ex_data+0x228>
jmpq   ac7 <CRYPTO_free_ex_data+0x107>
callq  bf2 <CRYPTO_free_ex_data+0x232>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000c00 <CRYPTO_alloc_ex_data>:
push   %r15
push   %r14
mov    %rsi,%r14
push   %r13
push   %r12
movslq %edi,%r13
push   %rbp
push   %rbx
mov    %ecx,%esi
mov    %rdx,%rdi
mov    %rdx,%rbx
mov    %ecx,%ebp
sub    $0x8,%rsp
mov    $0x1,%r12d
callq  c29 <CRYPTO_alloc_ex_data+0x29>
test   %rax,%rax
je     c40 <CRYPTO_alloc_ex_data+0x40>
add    $0x8,%rsp
mov    %r12d,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
mov    (%rbx),%rdi
callq  c48 <CRYPTO_alloc_ex_data+0x48>
test   %rax,%rax
mov    %rax,%r15
je     cd0 <CRYPTO_alloc_ex_data+0xd0>
cmp    $0x11,%r13d
ja     c9d <CRYPTO_alloc_ex_data+0x9d>
mov    (%rax),%rdi
test   %rdi,%rdi
je     cd0 <CRYPTO_alloc_ex_data+0xd0>
callq  c67 <CRYPTO_alloc_ex_data+0x67>
mov    0x8(%r15,%r13,8),%rdi
mov    %ebp,%esi
callq  c73 <CRYPTO_alloc_ex_data+0x73>
mov    (%r15),%rdi
mov    %rax,%r13
callq  c7e <CRYPTO_alloc_ex_data+0x7e>
mov    0x10(%r13),%rax
test   %rax,%rax
je     cd0 <CRYPTO_alloc_ex_data+0xd0>
mov    0x8(%r13),%r9
mov    0x0(%r13),%r8
mov    %ebp,%ecx
mov    %rbx,%rdx
xor    %esi,%esi
mov    %r14,%rdi
callq  *%rax
jmp    c2e <CRYPTO_alloc_ex_data+0x2e>
callq  ca2 <CRYPTO_alloc_ex_data+0xa2>
lea    0x0(%rip),%rdx        # ca9 <CRYPTO_alloc_ex_data+0xa9>
lea    0x0(%rip),%rdi        # cb0 <CRYPTO_alloc_ex_data+0xb0>
mov    $0x24,%esi
callq  cba <CRYPTO_alloc_ex_data+0xba>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  ccd <CRYPTO_alloc_ex_data+0xcd>
nopl   (%rax)
xor    %r12d,%r12d
jmpq   c2e <CRYPTO_alloc_ex_data+0x2e>
nopl   0x0(%rax,%rax,1)

0000000000000ce0 <crypto_ex_data_get_openssl_ctx>:
mov    (%rdi),%rax
retq   
