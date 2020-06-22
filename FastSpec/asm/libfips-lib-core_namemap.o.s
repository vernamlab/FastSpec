
openssl_crypto_dump/libfips-lib-core_namemap.o:     file format elf64-x86-64


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

0000000000000150 <ossl_namemap_name2num_n>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     1f0 <ossl_namemap_name2num_n+0xa0>
mov    %rsi,%rdi
mov    %rdx,%rsi
lea    0x0(%rip),%rdx        # 17f <ossl_namemap_name2num_n+0x2f>
mov    $0x93,%ecx
callq  189 <ossl_namemap_name2num_n+0x39>
test   %rax,%rax
mov    %rax,(%rsp)
je     1f0 <ossl_namemap_name2num_n+0xa0>
mov    0x8(%rbx),%rdi
movl   $0x0,0x8(%rsp)
callq  1a3 <ossl_namemap_name2num_n+0x53>
mov    0x10(%rbx),%rdi
mov    %rsp,%rsi
callq  1af <ossl_namemap_name2num_n+0x5f>
test   %rax,%rax
je     1f8 <ossl_namemap_name2num_n+0xa8>
mov    0x8(%rax),%ebp
mov    0x8(%rbx),%rdi
callq  1c0 <ossl_namemap_name2num_n+0x70>
mov    (%rsp),%rdi
lea    0x0(%rip),%rsi        # 1cb <ossl_namemap_name2num_n+0x7b>
mov    $0x9c,%edx
callq  1d5 <ossl_namemap_name2num_n+0x85>
mov    %ebp,%eax
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    1fc <ossl_namemap_name2num_n+0xac>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
xor    %eax,%eax
jmp    1d7 <ossl_namemap_name2num_n+0x87>
nopl   0x0(%rax)
xor    %ebp,%ebp
jmp    1b7 <ossl_namemap_name2num_n+0x67>
callq  201 <ossl_namemap_name2num_n+0xb1>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000210 <ossl_namemap_name2num>:
test   %rsi,%rsi
je     240 <ossl_namemap_name2num+0x30>
push   %rbp
push   %rbx
mov    %rdi,%rbp
mov    %rsi,%rdi
mov    %rsi,%rbx
sub    $0x8,%rsp
callq  229 <ossl_namemap_name2num+0x19>
add    $0x8,%rsp
mov    %rbx,%rsi
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
mov    %rax,%rdx
jmpq   23d <ossl_namemap_name2num+0x2d>
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000250 <ossl_namemap_num2name>:
sub    $0x28,%rsp
mov    %rdx,(%rsp)
lea    -0x25f(%rip),%rdx        # 0 <do_num2name>
mov    %rsp,%rcx
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
movq   $0x0,0x8(%rsp)
callq  280 <ossl_namemap_num2name+0x30>
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    0x8(%rsp),%rax
jne    29a <ossl_namemap_num2name+0x4a>
add    $0x28,%rsp
retq   
callq  29f <ossl_namemap_num2name+0x4f>
nop

00000000000002a0 <ossl_namemap_add_name_n>:
test   %rcx,%rcx
push   %r14
push   %r13
push   %r12
mov    %rdx,%r12
sete   %dl
test   %rdi,%rdi
push   %rbp
push   %rbx
sete   %al
or     %al,%dl
jne    2e8 <ossl_namemap_add_name_n+0x48>
test   %r12,%r12
je     2e8 <ossl_namemap_add_name_n+0x48>
mov    %esi,%r13d
mov    %rcx,%rdx
mov    %r12,%rsi
mov    %rdi,%rbx
mov    %rcx,%rbp
callq  2d4 <ossl_namemap_add_name_n+0x34>
test   %eax,%eax
je     2f8 <ossl_namemap_add_name_n+0x58>
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax)
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    0x8(%rbx),%rdi
callq  301 <ossl_namemap_add_name_n+0x61>
lea    0x0(%rip),%rsi        # 308 <ossl_namemap_add_name_n+0x68>
mov    $0xd6,%edx
mov    $0x10,%edi
callq  317 <ossl_namemap_add_name_n+0x77>
test   %rax,%rax
mov    %rax,%r14
je     382 <ossl_namemap_add_name_n+0xe2>
lea    0x0(%rip),%rdx        # 326 <ossl_namemap_add_name_n+0x86>
mov    $0xd7,%ecx
mov    %rbp,%rsi
mov    %r12,%rdi
callq  336 <ossl_namemap_add_name_n+0x96>
test   %rax,%rax
mov    %rax,(%r14)
je     36e <ossl_namemap_add_name_n+0xce>
test   %r13d,%r13d
jne    34e <ossl_namemap_add_name_n+0xae>
mov    0x18(%rbx),%eax
lea    0x1(%rax),%r13d
mov    %r13d,0x18(%rbx)
mov    0x10(%rbx),%rdi
mov    %r14,%rsi
mov    %r13d,0x8(%r14)
callq  35e <ossl_namemap_add_name_n+0xbe>
mov    0x10(%rbx),%rdi
callq  367 <ossl_namemap_add_name_n+0xc7>
test   %eax,%eax
je     3b0 <ossl_namemap_add_name_n+0x110>
mov    (%r14),%rax
lea    0x0(%rip),%rsi        # 375 <ossl_namemap_add_name_n+0xd5>
mov    $0x37,%edx
mov    %rax,%rdi
callq  382 <ossl_namemap_add_name_n+0xe2>
lea    0x0(%rip),%rsi        # 389 <ossl_namemap_add_name_n+0xe9>
mov    %r14,%rdi
mov    $0x38,%edx
callq  396 <ossl_namemap_add_name_n+0xf6>
mov    0x8(%rbx),%rdi
callq  39f <ossl_namemap_add_name_n+0xff>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
mov    0x8(%rbx),%rdi
callq  3b9 <ossl_namemap_add_name_n+0x119>
mov    %r13d,%eax
jmpq   2d8 <ossl_namemap_add_name_n+0x38>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003d0 <ossl_namemap_add_name>:
test   %rdx,%rdx
je     400 <ossl_namemap_add_name+0x30>
push   %r12
push   %rbp
mov    %esi,%r12d
push   %rbx
mov    %rdi,%rbp
mov    %rdx,%rbx
mov    %rdx,%rdi
callq  3ea <ossl_namemap_add_name+0x1a>
mov    %rbx,%rdx
mov    %r12d,%esi
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
pop    %r12
mov    %rax,%rcx
jmpq   3ff <ossl_namemap_add_name+0x2f>
nop
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000410 <ossl_namemap_add_names>:
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
je     63f <ossl_namemap_add_names+0x22f>
mov    %rdi,%r14
mov    %esi,%ebp
mov    %rdx,%r12
mov    %rdx,%rbx
mov    %eax,0xc(%rsp)
jmp    45a <ossl_namemap_add_names+0x4a>
nop
test   %eax,%eax
je     44c <ossl_namemap_add_names+0x3c>
cmp    %eax,%ebp
jne    5e0 <ossl_namemap_add_names+0x1d0>
lea    0x1(%r13),%r8
add    %r15,%rbx
test   %r13,%r13
cmovne %r8,%rbx
cmpb   $0x0,(%rbx)
je     4f8 <ossl_namemap_add_names+0xe8>
mov    0xc(%rsp),%esi
mov    %rbx,%rdi
callq  46f <ossl_namemap_add_names+0x5f>
mov    %rax,%r15
mov    %rax,%r13
sub    %rbx,%r15
test   %rax,%rax
je     4a0 <ossl_namemap_add_names+0x90>
mov    %r15,%rdx
mov    %rbx,%rsi
mov    %r14,%rdi
callq  48b <ossl_namemap_add_names+0x7b>
movzbl (%rbx),%edx
cmp    %dl,0x8(%rsp)
je     4b0 <ossl_namemap_add_names+0xa0>
test   %dl,%dl
je     4b0 <ossl_namemap_add_names+0xa0>
test   %ebp,%ebp
jne    440 <ossl_namemap_add_names+0x30>
mov    %eax,%ebp
jmp    44c <ossl_namemap_add_names+0x3c>
mov    %rbx,%rdi
callq  4a8 <ossl_namemap_add_names+0x98>
mov    %rax,%r15
jmp    47d <ossl_namemap_add_names+0x6d>
nopl   (%rax)
callq  4b5 <ossl_namemap_add_names+0xa5>
lea    0x0(%rip),%rdx        # 4bc <ossl_namemap_add_names+0xac>
lea    0x0(%rip),%rdi        # 4c3 <ossl_namemap_add_names+0xb3>
mov    $0x10f,%esi
callq  4cd <ossl_namemap_add_names+0xbd>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x75,%esi
mov    $0xf,%edi
callq  4e0 <ossl_namemap_add_names+0xd0>
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
je     540 <ossl_namemap_add_names+0x130>
mov    %r13d,%esi
mov    %r12,%rdi
callq  510 <ossl_namemap_add_names+0x100>
test   %rax,%rax
mov    %rax,%rbx
je     5a8 <ossl_namemap_add_names+0x198>
mov    %rax,%rcx
mov    %r12,%rdx
mov    %ebp,%esi
sub    %r12,%rcx
mov    %r14,%rdi
callq  52f <ossl_namemap_add_names+0x11f>
test   %ebp,%ebp
jne    558 <ossl_namemap_add_names+0x148>
lea    0x1(%rbx),%r12
cmpb   $0x0,(%r12)
mov    %eax,%ebp
jne    505 <ossl_namemap_add_names+0xf5>
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
je     533 <ossl_namemap_add_names+0x123>
mov    %eax,0x8(%rsp)
callq  565 <ossl_namemap_add_names+0x155>
lea    0x0(%rip),%rdx        # 56c <ossl_namemap_add_names+0x15c>
lea    0x0(%rip),%rdi        # 573 <ossl_namemap_add_names+0x163>
mov    $0x129,%esi
callq  57d <ossl_namemap_add_names+0x16d>
mov    0x8(%rsp),%eax
lea    0x0(%rip),%rdx        # 588 <ossl_namemap_add_names+0x178>
mov    %ebp,%r8d
mov    $0x44,%esi
mov    $0xf,%edi
mov    %eax,%ecx
xor    %eax,%eax
callq  59e <ossl_namemap_add_names+0x18e>
xor    %eax,%eax
jmpq   4e2 <ossl_namemap_add_names+0xd2>
nopl   (%rax)
mov    %r12,%rdi
callq  5b0 <ossl_namemap_add_names+0x1a0>
mov    %r12,%rdx
mov    %rax,%rcx
mov    %ebp,%esi
mov    %r14,%rdi
mov    %rax,%rbx
callq  5c3 <ossl_namemap_add_names+0x1b3>
test   %ebp,%ebp
je     676 <ossl_namemap_add_names+0x266>
cmp    %eax,%ebp
jne    55c <ossl_namemap_add_names+0x14c>
add    %rbx,%r12
jmpq   4fe <ossl_namemap_add_names+0xee>
nopw   0x0(%rax,%rax,1)
mov    %eax,0x8(%rsp)
callq  5e9 <ossl_namemap_add_names+0x1d9>
lea    0x0(%rip),%rdx        # 5f0 <ossl_namemap_add_names+0x1e0>
lea    0x0(%rip),%rdi        # 5f7 <ossl_namemap_add_names+0x1e7>
mov    $0x115,%esi
callq  601 <ossl_namemap_add_names+0x1f1>
sub    $0x8,%rsp
lea    0x0(%rip),%rdx        # 60c <ossl_namemap_add_names+0x1fc>
mov    %rbx,%r8
push   %r12
mov    0x18(%rsp),%eax
mov    %r15,%rcx
mov    $0x76,%esi
mov    $0xf,%edi
mov    %eax,%r9d
xor    %eax,%eax
callq  62c <ossl_namemap_add_names+0x21c>
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
callq  644 <ossl_namemap_add_names+0x234>
lea    0x0(%rip),%rdx        # 64b <ossl_namemap_add_names+0x23b>
lea    0x0(%rip),%rdi        # 652 <ossl_namemap_add_names+0x242>
mov    $0xfc,%esi
callq  65c <ossl_namemap_add_names+0x24c>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  66f <ossl_namemap_add_names+0x25f>
xor    %eax,%eax
jmpq   4e2 <ossl_namemap_add_names+0xd2>
mov    %eax,%ebp
jmpq   5cf <ossl_namemap_add_names+0x1bf>
nopl   (%rax)

0000000000000680 <ossl_namemap_stored>:
lea    0x0(%rip),%rdx        # 687 <ossl_namemap_stored+0x7>
mov    $0x4,%esi
jmpq   691 <ossl_namemap_stored+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

00000000000006a0 <ossl_namemap_free>:
test   %rdi,%rdi
je     6aa <ossl_namemap_free+0xa>
testb  $0x1,(%rdi)
je     6b0 <ossl_namemap_free+0x10>
repz retq 
nopl   0x0(%rax)
push   %rbx
mov    %rdi,%rbx
mov    0x10(%rdi),%rdi
lea    -0x68f(%rip),%rsi        # 30 <namenum_free>
callq  6c4 <ossl_namemap_free+0x24>
mov    0x10(%rbx),%rdi
callq  6cd <ossl_namemap_free+0x2d>
mov    0x8(%rbx),%rdi
callq  6d6 <ossl_namemap_free+0x36>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 6e0 <ossl_namemap_free+0x40>
mov    $0x198,%edx
pop    %rbx
jmpq   6eb <ossl_namemap_free+0x4b>
nopl   0x0(%rax,%rax,1)

00000000000006f0 <stored_namemap_free>:
test   %rdi,%rdi
je     700 <stored_namemap_free+0x10>
andb   $0xfe,(%rdi)
jmpq   6fd <stored_namemap_free+0xd>
nopl   (%rax)
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000710 <ossl_namemap_new>:
push   %rbx
lea    0x0(%rip),%rsi        # 718 <ossl_namemap_new+0x8>
mov    $0x185,%edx
mov    $0x20,%edi
callq  727 <ossl_namemap_new+0x17>
test   %rax,%rax
mov    %rax,%rbx
je     760 <ossl_namemap_new+0x50>
callq  734 <ossl_namemap_new+0x24>
test   %rax,%rax
mov    %rax,0x8(%rbx)
je     760 <ossl_namemap_new+0x50>
lea    -0x6d4(%rip),%rsi        # 70 <namenum_cmp>
lea    -0x6cb(%rip),%rdi        # 80 <namenum_hash>
callq  750 <ossl_namemap_new+0x40>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     760 <ossl_namemap_new+0x50>
mov    %rbx,%rax
pop    %rbx
retq   
xchg   %ax,%ax
mov    %rbx,%rdi
callq  768 <ossl_namemap_new+0x58>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax)

0000000000000770 <stored_namemap_new>:
sub    $0x8,%rsp
callq  779 <stored_namemap_new+0x9>
test   %rax,%rax
je     781 <stored_namemap_new+0x11>
orb    $0x1,(%rax)
add    $0x8,%rsp
retq   
