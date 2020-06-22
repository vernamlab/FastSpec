
openssl_crypto_dump/libcrypto-shlib-core_namemap.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <do_num2name>:
mov    (%rsi),%rax
test   %rax,%rax
jne    18 <do_num2name+0x18>
cmpq   $0x0,0x8(%rsi)
je     20 <do_num2name+0x20>
repz retq 
nopl   0x0(%rax)
sub    $0x1,%rax
mov    %rax,(%rsi)
retq   
mov    %rdi,0x8(%rsi)
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000030 <namenum_free>:
test   %rdi,%rdi
push   %rbx
mov    %rdi,%rbx
je     4d <namenum_free+0x1d>
mov    (%rdi),%rdi
lea    0x0(%rip),%rsi        # 43 <namenum_free+0x13>
mov    $0x37,%edx
callq  4d <namenum_free+0x1d>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 57 <namenum_free+0x27>
mov    $0x38,%edx
pop    %rbx
jmpq   62 <namenum_free+0x32>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000070 <namenum_cmp>:
mov    (%rsi),%rsi
mov    (%rdi),%rdi
jmpq   7b <namenum_cmp+0xb>
nopl   0x0(%rax,%rax,1)

0000000000000080 <namenum_hash>:
mov    (%rdi),%rdi
jmpq   88 <namenum_hash+0x8>
nopl   0x0(%rax,%rax,1)

0000000000000090 <do_name>:
mov    (%rsi),%eax
cmp    %eax,0x8(%rdi)
je     a0 <do_name+0x10>
repz retq 
nopl   0x0(%rax)
mov    0x10(%rsi),%rdx
mov    0x8(%rsi),%rax
mov    (%rdi),%rdi
mov    %rdx,%rsi
jmpq   *%rax

00000000000000b0 <ossl_namemap_empty>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
xor    %ebp,%ebp
sub    $0x8,%rsp
mov    0x8(%rdi),%rdi
callq  c4 <ossl_namemap_empty+0x14>
mov    0x18(%rbx),%eax
mov    0x8(%rbx),%rdi
test   %eax,%eax
sete   %bpl
callq  d6 <ossl_namemap_empty+0x26>
add    $0x8,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
retq   
nop

00000000000000e0 <ossl_namemap_doall_names>:
push   %rbx
mov    %rdi,%rbx
sub    $0x20,%rsp
mov    0x8(%rdi),%rdi
mov    %rcx,0x10(%rsp)
mov    %esi,(%rsp)
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
mov    %rdx,0x8(%rsp)
callq  10e <ossl_namemap_doall_names+0x2e>
mov    0x10(%rbx),%rdi
lea    -0x89(%rip),%rsi        # 90 <do_name>
mov    %rsp,%rdx
callq  121 <ossl_namemap_doall_names+0x41>
mov    0x8(%rbx),%rdi
callq  12a <ossl_namemap_doall_names+0x4a>
mov    0x18(%rsp),%rax
xor    %fs:0x28,%rax
jne    140 <ossl_namemap_doall_names+0x60>
add    $0x20,%rsp
pop    %rbx
retq   
callq  145 <ossl_namemap_doall_names+0x65>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000150 <ossl_namemap_num2name>:
sub    $0x28,%rsp
mov    %rdx,(%rsp)
lea    -0x15f(%rip),%rdx        # 0 <do_num2name>
mov    %rsp,%rcx
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
movq   $0x0,0x8(%rsp)
callq  180 <ossl_namemap_num2name+0x30>
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    0x8(%rsp),%rax
jne    19a <ossl_namemap_num2name+0x4a>
add    $0x28,%rsp
retq   
callq  19f <ossl_namemap_num2name+0x4f>
nop

00000000000001a0 <ossl_namemap_stored>:
push   %rbx
lea    0x0(%rip),%rdx        # 1a8 <ossl_namemap_stored+0x8>
mov    $0x4,%esi
callq  1b2 <ossl_namemap_stored+0x12>
test   %rax,%rax
mov    %rax,%rbx
je     1c6 <ossl_namemap_stored+0x26>
mov    %rax,%rdi
callq  1c2 <ossl_namemap_stored+0x22>
test   %eax,%eax
jne    1d0 <ossl_namemap_stored+0x30>
mov    %rbx,%rax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
xor    %esi,%esi
mov    $0xc,%edi
callq  1dc <ossl_namemap_stored+0x3c>
lea    0x38d(%rip),%rsi        # 570 <get_legacy_cipher_names>
mov    %rbx,%rdx
mov    $0x2,%edi
callq  1f0 <ossl_namemap_stored+0x50>
lea    0x2b9(%rip),%rsi        # 4b0 <get_legacy_md_names>
mov    %rbx,%rdx
mov    $0x1,%edi
callq  204 <ossl_namemap_stored+0x64>
mov    %rbx,%rax
pop    %rbx
retq   
nopl   0x0(%rax)

0000000000000210 <ossl_namemap_name2num_n>:
push   %rbp
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
mov    %rdx,%rsi
sub    $0x38,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     2b8 <ossl_namemap_name2num_n+0xa8>
lea    0x0(%rip),%rdx        # 23f <ossl_namemap_name2num_n+0x2f>
mov    $0x93,%ecx
mov    %rbp,%rdi
callq  24c <ossl_namemap_name2num_n+0x3c>
test   %rax,%rax
mov    %rax,0x10(%rsp)
je     2d5 <ossl_namemap_name2num_n+0xc5>
mov    0x8(%rbx),%rdi
movl   $0x0,0x18(%rsp)
callq  267 <ossl_namemap_name2num_n+0x57>
mov    0x10(%rbx),%rdi
lea    0x10(%rsp),%rsi
callq  275 <ossl_namemap_name2num_n+0x65>
test   %rax,%rax
je     2e0 <ossl_namemap_name2num_n+0xd0>
mov    0x8(%rax),%ebp
mov    0x8(%rbx),%rdi
callq  286 <ossl_namemap_name2num_n+0x76>
mov    0x10(%rsp),%rdi
lea    0x0(%rip),%rsi        # 292 <ossl_namemap_name2num_n+0x82>
mov    $0x9c,%edx
callq  29c <ossl_namemap_name2num_n+0x8c>
mov    %ebp,%eax
mov    0x28(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    2e4 <ossl_namemap_name2num_n+0xd4>
add    $0x38,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)
xor    %edi,%edi
mov    %rdx,0x8(%rsp)
callq  2c4 <ossl_namemap_name2num_n+0xb4>
test   %rax,%rax
mov    %rax,%rbx
mov    0x8(%rsp),%rsi
jne    238 <ossl_namemap_name2num_n+0x28>
xor    %eax,%eax
jmp    29e <ossl_namemap_name2num_n+0x8e>
nopl   0x0(%rax)
xor    %ebp,%ebp
jmp    27d <ossl_namemap_name2num_n+0x6d>
callq  2e9 <ossl_namemap_name2num_n+0xd9>
nopl   0x0(%rax)

00000000000002f0 <ossl_namemap_name2num>:
test   %rsi,%rsi
je     320 <ossl_namemap_name2num+0x30>
push   %rbp
push   %rbx
mov    %rdi,%rbp
mov    %rsi,%rdi
mov    %rsi,%rbx
sub    $0x8,%rsp
callq  309 <ossl_namemap_name2num+0x19>
add    $0x8,%rsp
mov    %rbx,%rsi
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
mov    %rax,%rdx
jmpq   31d <ossl_namemap_name2num+0x2d>
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000330 <ossl_namemap_add_name_n>:
test   %rdi,%rdi
push   %r14
push   %r13
mov    %esi,%r13d
push   %r12
mov    %rdx,%r12
push   %rbp
mov    %rcx,%rbp
push   %rbx
je     430 <ossl_namemap_add_name_n+0x100>
test   %rcx,%rcx
je     41c <ossl_namemap_add_name_n+0xec>
test   %rdx,%rdx
mov    %rdi,%rbx
je     41c <ossl_namemap_add_name_n+0xec>
mov    %rbp,%rdx
mov    %r12,%rsi
mov    %rbx,%rdi
callq  36d <ossl_namemap_add_name_n+0x3d>
test   %eax,%eax
jne    41e <ossl_namemap_add_name_n+0xee>
mov    0x8(%rbx),%rdi
callq  37e <ossl_namemap_add_name_n+0x4e>
lea    0x0(%rip),%rsi        # 385 <ossl_namemap_add_name_n+0x55>
mov    $0xd6,%edx
mov    $0x10,%edi
callq  394 <ossl_namemap_add_name_n+0x64>
test   %rax,%rax
mov    %rax,%r14
je     3ff <ossl_namemap_add_name_n+0xcf>
lea    0x0(%rip),%rdx        # 3a3 <ossl_namemap_add_name_n+0x73>
mov    $0xd7,%ecx
mov    %rbp,%rsi
mov    %r12,%rdi
callq  3b3 <ossl_namemap_add_name_n+0x83>
test   %rax,%rax
mov    %rax,(%r14)
je     3eb <ossl_namemap_add_name_n+0xbb>
test   %r13d,%r13d
jne    3cb <ossl_namemap_add_name_n+0x9b>
mov    0x18(%rbx),%eax
lea    0x1(%rax),%r13d
mov    %r13d,0x18(%rbx)
mov    0x10(%rbx),%rdi
mov    %r14,%rsi
mov    %r13d,0x8(%r14)
callq  3db <ossl_namemap_add_name_n+0xab>
mov    0x10(%rbx),%rdi
callq  3e4 <ossl_namemap_add_name_n+0xb4>
test   %eax,%eax
je     458 <ossl_namemap_add_name_n+0x128>
mov    (%r14),%rax
lea    0x0(%rip),%rsi        # 3f2 <ossl_namemap_add_name_n+0xc2>
mov    $0x37,%edx
mov    %rax,%rdi
callq  3ff <ossl_namemap_add_name_n+0xcf>
lea    0x0(%rip),%rsi        # 406 <ossl_namemap_add_name_n+0xd6>
mov    %r14,%rdi
mov    $0x38,%edx
callq  413 <ossl_namemap_add_name_n+0xe3>
mov    0x8(%rbx),%rdi
callq  41c <ossl_namemap_add_name_n+0xec>
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
xor    %edi,%edi
callq  437 <ossl_namemap_add_name_n+0x107>
test   %r12,%r12
mov    %rax,%rbx
sete   %dl
test   %rbp,%rbp
sete   %al
or     %al,%dl
jne    41c <ossl_namemap_add_name_n+0xec>
test   %rbx,%rbx
je     41c <ossl_namemap_add_name_n+0xec>
jmpq   35f <ossl_namemap_add_name_n+0x2f>
nopl   0x0(%rax)
mov    0x8(%rbx),%rdi
callq  461 <ossl_namemap_add_name_n+0x131>
mov    %r13d,%eax
jmp    41e <ossl_namemap_add_name_n+0xee>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000470 <ossl_namemap_add_name>:
test   %rdx,%rdx
je     4a0 <ossl_namemap_add_name+0x30>
push   %r12
push   %rbp
mov    %esi,%r12d
push   %rbx
mov    %rdi,%rbp
mov    %rdx,%rbx
mov    %rdx,%rdi
callq  48a <ossl_namemap_add_name+0x1a>
mov    %rbx,%rdx
mov    %r12d,%esi
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
pop    %r12
mov    %rax,%rcx
jmpq   49f <ossl_namemap_add_name+0x2f>
nop
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000004b0 <get_legacy_md_names>:
push   %r14
push   %r13
push   %r12
push   %rbp
mov    %rsi,%r12
push   %rbx
mov    %rdi,%rbx
mov    0x8(%rdi),%rdi
mov    (%rbx),%esi
callq  4c9 <get_legacy_md_names+0x19>
mov    0x8(%rbx),%rdi
mov    %rax,%rbp
callq  4d5 <get_legacy_md_names+0x25>
mov    0x8(%rbx),%rdi
mov    %eax,%r13d
callq  4e1 <get_legacy_md_names+0x31>
mov    %rbp,%rdi
mov    %eax,%r14d
callq  4ec <get_legacy_md_names+0x3c>
cmp    %eax,%r13d
je     4fe <get_legacy_md_names+0x4e>
mov    %rbp,%rdi
callq  4f9 <get_legacy_md_names+0x49>
cmp    %eax,%r14d
jne    520 <get_legacy_md_names+0x70>
mov    %rbp,%rdi
callq  506 <get_legacy_md_names+0x56>
pop    %rbx
mov    %r12,%rdi
mov    %rax,%rdx
xor    %esi,%esi
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
jmpq   51b <get_legacy_md_names+0x6b>
nopl   0x0(%rax,%rax,1)
mov    0x8(%rbx),%rbx
mov    %rbp,%rdi
callq  52c <get_legacy_md_names+0x7c>
xor    %esi,%esi
mov    %rax,%rdx
mov    %r12,%rdi
callq  539 <get_legacy_md_names+0x89>
test   %rbx,%rbx
je     558 <get_legacy_md_names+0xa8>
mov    %rbx,%rdx
mov    %r12,%rdi
mov    %eax,%esi
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
jmpq   553 <get_legacy_md_names+0xa3>
nopl   0x0(%rax,%rax,1)
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000570 <get_legacy_cipher_names>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rbp
sub    $0x8,%rsp
mov    (%rbx),%esi
mov    0x8(%rdi),%rdi
callq  587 <get_legacy_cipher_names+0x17>
mov    0x8(%rbx),%rbx
mov    %rax,%rdi
callq  593 <get_legacy_cipher_names+0x23>
xor    %esi,%esi
mov    %rax,%rdx
mov    %rbp,%rdi
callq  5a0 <get_legacy_cipher_names+0x30>
test   %rbx,%rbx
je     5c0 <get_legacy_cipher_names+0x50>
add    $0x8,%rsp
mov    %rbx,%rdx
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
mov    %eax,%esi
jmpq   5b8 <get_legacy_cipher_names+0x48>
nopl   0x0(%rax,%rax,1)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)

00000000000005d0 <ossl_namemap_add_names>:
push   %r15
push   %r14
movsbl %cl,%eax
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x18,%rsp
test   %rdi,%rdi
mov    %al,0x8(%rsp)
je     7ff <ossl_namemap_add_names+0x22f>
mov    %rdi,%r14
mov    %esi,%ebp
mov    %rdx,%r12
mov    %rdx,%rbx
mov    %eax,0xc(%rsp)
jmp    61a <ossl_namemap_add_names+0x4a>
nop
test   %eax,%eax
je     60c <ossl_namemap_add_names+0x3c>
cmp    %eax,%ebp
jne    7a0 <ossl_namemap_add_names+0x1d0>
lea    0x1(%r13),%r8
add    %r15,%rbx
test   %r13,%r13
cmovne %r8,%rbx
cmpb   $0x0,(%rbx)
je     6b8 <ossl_namemap_add_names+0xe8>
mov    0xc(%rsp),%esi
mov    %rbx,%rdi
callq  62f <ossl_namemap_add_names+0x5f>
mov    %rax,%r15
mov    %rax,%r13
sub    %rbx,%r15
test   %rax,%rax
je     660 <ossl_namemap_add_names+0x90>
mov    %r15,%rdx
mov    %rbx,%rsi
mov    %r14,%rdi
callq  64b <ossl_namemap_add_names+0x7b>
movzbl (%rbx),%edx
cmp    %dl,0x8(%rsp)
je     670 <ossl_namemap_add_names+0xa0>
test   %dl,%dl
je     670 <ossl_namemap_add_names+0xa0>
test   %ebp,%ebp
jne    600 <ossl_namemap_add_names+0x30>
mov    %eax,%ebp
jmp    60c <ossl_namemap_add_names+0x3c>
mov    %rbx,%rdi
callq  668 <ossl_namemap_add_names+0x98>
mov    %rax,%r15
jmp    63d <ossl_namemap_add_names+0x6d>
nopl   (%rax)
callq  675 <ossl_namemap_add_names+0xa5>
lea    0x0(%rip),%rdx        # 67c <ossl_namemap_add_names+0xac>
lea    0x0(%rip),%rdi        # 683 <ossl_namemap_add_names+0xb3>
mov    $0x10f,%esi
callq  68d <ossl_namemap_add_names+0xbd>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x75,%esi
mov    $0xf,%edi
callq  6a0 <ossl_namemap_add_names+0xd0>
xor    %eax,%eax
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
movsbl 0x8(%rsp),%r13d
cmpb   $0x0,(%r12)
je     700 <ossl_namemap_add_names+0x130>
mov    %r13d,%esi
mov    %r12,%rdi
callq  6d0 <ossl_namemap_add_names+0x100>
test   %rax,%rax
mov    %rax,%rbx
je     768 <ossl_namemap_add_names+0x198>
mov    %rax,%rcx
mov    %r12,%rdx
mov    %ebp,%esi
sub    %r12,%rcx
mov    %r14,%rdi
callq  6ef <ossl_namemap_add_names+0x11f>
test   %ebp,%ebp
jne    718 <ossl_namemap_add_names+0x148>
lea    0x1(%rbx),%r12
cmpb   $0x0,(%r12)
mov    %eax,%ebp
jne    6c5 <ossl_namemap_add_names+0xf5>
add    $0x18,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
cmp    %eax,%ebp
je     6f3 <ossl_namemap_add_names+0x123>
mov    %eax,0x8(%rsp)
callq  725 <ossl_namemap_add_names+0x155>
lea    0x0(%rip),%rdx        # 72c <ossl_namemap_add_names+0x15c>
lea    0x0(%rip),%rdi        # 733 <ossl_namemap_add_names+0x163>
mov    $0x129,%esi
callq  73d <ossl_namemap_add_names+0x16d>
mov    0x8(%rsp),%eax
lea    0x0(%rip),%rdx        # 748 <ossl_namemap_add_names+0x178>
mov    %ebp,%r8d
mov    $0x44,%esi
mov    $0xf,%edi
mov    %eax,%ecx
xor    %eax,%eax
callq  75e <ossl_namemap_add_names+0x18e>
xor    %eax,%eax
jmpq   6a2 <ossl_namemap_add_names+0xd2>
nopl   (%rax)
mov    %r12,%rdi
callq  770 <ossl_namemap_add_names+0x1a0>
mov    %r12,%rdx
mov    %rax,%rcx
mov    %ebp,%esi
mov    %r14,%rdi
mov    %rax,%rbx
callq  783 <ossl_namemap_add_names+0x1b3>
test   %ebp,%ebp
je     836 <ossl_namemap_add_names+0x266>
cmp    %eax,%ebp
jne    71c <ossl_namemap_add_names+0x14c>
add    %rbx,%r12
jmpq   6be <ossl_namemap_add_names+0xee>
nopw   0x0(%rax,%rax,1)
mov    %eax,0x8(%rsp)
callq  7a9 <ossl_namemap_add_names+0x1d9>
lea    0x0(%rip),%rdx        # 7b0 <ossl_namemap_add_names+0x1e0>
lea    0x0(%rip),%rdi        # 7b7 <ossl_namemap_add_names+0x1e7>
mov    $0x115,%esi
callq  7c1 <ossl_namemap_add_names+0x1f1>
sub    $0x8,%rsp
lea    0x0(%rip),%rdx        # 7cc <ossl_namemap_add_names+0x1fc>
mov    %rbx,%r8
push   %r12
mov    0x18(%rsp),%eax
mov    %r15,%rcx
mov    $0x76,%esi
mov    $0xf,%edi
mov    %eax,%r9d
xor    %eax,%eax
callq  7ec <ossl_namemap_add_names+0x21c>
pop    %rax
pop    %rdx
xor    %eax,%eax
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
callq  804 <ossl_namemap_add_names+0x234>
lea    0x0(%rip),%rdx        # 80b <ossl_namemap_add_names+0x23b>
lea    0x0(%rip),%rdi        # 812 <ossl_namemap_add_names+0x242>
mov    $0xfc,%esi
callq  81c <ossl_namemap_add_names+0x24c>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  82f <ossl_namemap_add_names+0x25f>
xor    %eax,%eax
jmpq   6a2 <ossl_namemap_add_names+0xd2>
mov    %eax,%ebp
jmpq   78f <ossl_namemap_add_names+0x1bf>
nopl   (%rax)

0000000000000840 <ossl_namemap_free>:
test   %rdi,%rdi
je     84a <ossl_namemap_free+0xa>
testb  $0x1,(%rdi)
je     850 <ossl_namemap_free+0x10>
repz retq 
nopl   0x0(%rax)
push   %rbx
mov    %rdi,%rbx
mov    0x10(%rdi),%rdi
lea    -0x82f(%rip),%rsi        # 30 <namenum_free>
callq  864 <ossl_namemap_free+0x24>
mov    0x10(%rbx),%rdi
callq  86d <ossl_namemap_free+0x2d>
mov    0x8(%rbx),%rdi
callq  876 <ossl_namemap_free+0x36>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 880 <ossl_namemap_free+0x40>
mov    $0x198,%edx
pop    %rbx
jmpq   88b <ossl_namemap_free+0x4b>
nopl   0x0(%rax,%rax,1)

0000000000000890 <stored_namemap_free>:
test   %rdi,%rdi
je     8a0 <stored_namemap_free+0x10>
andb   $0xfe,(%rdi)
jmpq   89d <stored_namemap_free+0xd>
nopl   (%rax)
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000008b0 <ossl_namemap_new>:
push   %rbx
lea    0x0(%rip),%rsi        # 8b8 <ossl_namemap_new+0x8>
mov    $0x185,%edx
mov    $0x20,%edi
callq  8c7 <ossl_namemap_new+0x17>
test   %rax,%rax
mov    %rax,%rbx
je     900 <ossl_namemap_new+0x50>
callq  8d4 <ossl_namemap_new+0x24>
test   %rax,%rax
mov    %rax,0x8(%rbx)
je     900 <ossl_namemap_new+0x50>
lea    -0x874(%rip),%rsi        # 70 <namenum_cmp>
lea    -0x86b(%rip),%rdi        # 80 <namenum_hash>
callq  8f0 <ossl_namemap_new+0x40>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     900 <ossl_namemap_new+0x50>
mov    %rbx,%rax
pop    %rbx
retq   
xchg   %ax,%ax
mov    %rbx,%rdi
callq  908 <ossl_namemap_new+0x58>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax)

0000000000000910 <stored_namemap_new>:
sub    $0x8,%rsp
callq  919 <stored_namemap_new+0x9>
test   %rax,%rax
je     921 <stored_namemap_new+0x11>
orb    $0x1,(%rax)
add    $0x8,%rsp
retq   
