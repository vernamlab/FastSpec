
openssl_crypto_dump/libcrypto-lib-sparse_array.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <trampoline>:
jmpq   *(%rdx)
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000010 <sa_free_node>:
lea    0x0(%rip),%rsi        # 17 <sa_free_node+0x7>
mov    $0x6b,%edx
jmpq   21 <sa_free_node+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000030 <sa_free_leaf>:
mov    %rsi,%rdi
lea    0x0(%rip),%rsi        # 3a <sa_free_leaf+0xa>
mov    $0x70,%edx
jmpq   44 <sa_free_leaf+0x14>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000050 <OPENSSL_SA_new>:
lea    0x0(%rip),%rsi        # 57 <OPENSSL_SA_new+0x7>
mov    $0x41,%edx
mov    $0x20,%edi
jmpq   66 <OPENSSL_SA_new+0x16>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000070 <OPENSSL_SA_free>:
push   %rbp
push   %rbx
mov    %rdi,%rbp
xor    %edx,%edx
xor    %ebx,%ebx
sub    $0x68,%rsp
mov    0x18(%rdi),%rdi
mov    %fs:0x28,%rax
mov    %rax,0x58(%rsp)
xor    %eax,%eax
movl   $0x0,(%rsp)
mov    %rdi,0x20(%rsp)
jmp    bc <OPENSSL_SA_free+0x4c>
nop
test   %rdi,%rdi
jne    128 <OPENSSL_SA_free+0xb8>
sub    $0x1,%ebx
test   %ebx,%ebx
js     fb <OPENSSL_SA_free+0x8b>
movslq %ebx,%rax
movslq (%rsp,%rax,4),%rdx
mov    0x20(%rsp,%rax,8),%rdi
cmp    $0xfff,%edx
jg     a0 <OPENSSL_SA_free+0x30>
lea    0x1(%rdx),%ecx
movslq %ebx,%rax
test   %rdi,%rdi
mov    %ecx,(%rsp,%rax,4)
je     b3 <OPENSSL_SA_free+0x43>
mov    (%rdi,%rdx,8),%rcx
test   %rcx,%rcx
je     b3 <OPENSSL_SA_free+0x43>
mov    0x0(%rbp),%esi
lea    -0x1(%rsi),%edx
cmp    %ebx,%edx
jle    b3 <OPENSSL_SA_free+0x43>
add    $0x1,%ebx
movslq %ebx,%rax
test   %ebx,%ebx
movl   $0x0,(%rsp,%rax,4)
mov    %rcx,0x20(%rsp,%rax,8)
jns    b0 <OPENSSL_SA_free+0x40>
mov    0x58(%rsp),%rax
xor    %fs:0x28,%rax
jne    13e <OPENSSL_SA_free+0xce>
add    $0x68,%rsp
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # 119 <OPENSSL_SA_free+0xa9>
pop    %rbx
pop    %rbp
mov    $0x76,%edx
jmpq   125 <OPENSSL_SA_free+0xb5>
nopl   (%rax)
lea    0x0(%rip),%rsi        # 12f <OPENSSL_SA_free+0xbf>
mov    $0x6b,%edx
callq  139 <OPENSSL_SA_free+0xc9>
jmpq   a9 <OPENSSL_SA_free+0x39>
callq  143 <OPENSSL_SA_free+0xd3>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000150 <OPENSSL_SA_free_leaves>:
push   %r12
push   %rbp
mov    %rdi,%r12
push   %rbx
xor    %ebp,%ebp
sub    $0x60,%rsp
mov    0x18(%rdi),%rdi
mov    %fs:0x28,%rax
mov    %rax,0x58(%rsp)
xor    %eax,%eax
movl   $0x0,(%rsp)
mov    %rdi,0x20(%rsp)
jmp    19b <OPENSSL_SA_free_leaves+0x4b>
nop
test   %rdi,%rdi
jne    230 <OPENSSL_SA_free_leaves+0xe0>
sub    $0x1,%ebp
test   %ebp,%ebp
js     1dc <OPENSSL_SA_free_leaves+0x8c>
movslq %ebp,%rbx
mov    (%rsp,%rbx,4),%eax
mov    0x20(%rsp,%rbx,8),%rdi
cmp    $0xfff,%eax
jg     180 <OPENSSL_SA_free_leaves+0x30>
lea    0x1(%rax),%edx
movslq %ebp,%rbx
test   %rdi,%rdi
mov    %edx,(%rsp,%rbx,4)
je     193 <OPENSSL_SA_free_leaves+0x43>
cltq   
mov    (%rdi,%rax,8),%rdi
test   %rdi,%rdi
je     193 <OPENSSL_SA_free_leaves+0x43>
mov    (%r12),%eax
sub    $0x1,%eax
cmp    %ebp,%eax
jle    210 <OPENSSL_SA_free_leaves+0xc0>
add    $0x1,%ebp
movslq %ebp,%rbx
test   %ebp,%ebp
movl   $0x0,(%rsp,%rbx,4)
mov    %rdi,0x20(%rsp,%rbx,8)
jns    190 <OPENSSL_SA_free_leaves+0x40>
mov    0x58(%rsp),%rax
xor    %fs:0x28,%rax
jne    246 <OPENSSL_SA_free_leaves+0xf6>
add    $0x60,%rsp
mov    %r12,%rdi
lea    0x0(%rip),%rsi        # 1fa <OPENSSL_SA_free_leaves+0xaa>
pop    %rbx
pop    %rbp
pop    %r12
mov    $0x7c,%edx
jmpq   208 <OPENSSL_SA_free_leaves+0xb8>
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 217 <OPENSSL_SA_free_leaves+0xc7>
mov    $0x70,%edx
callq  221 <OPENSSL_SA_free_leaves+0xd1>
jmpq   193 <OPENSSL_SA_free_leaves+0x43>
nopw   %cs:0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 237 <OPENSSL_SA_free_leaves+0xe7>
mov    $0x6b,%edx
callq  241 <OPENSSL_SA_free_leaves+0xf1>
jmpq   189 <OPENSSL_SA_free_leaves+0x39>
callq  24b <OPENSSL_SA_free_leaves+0xfb>
nopl   0x0(%rax,%rax,1)

0000000000000250 <OPENSSL_SA_doall>:
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x60,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x58(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     300 <OPENSSL_SA_doall+0xb0>
mov    0x18(%rdi),%rdx
mov    %rdi,%r13
mov    %rsi,%r14
movl   $0x0,(%rsp)
xor    %r12d,%r12d
xor    %ebx,%ebx
mov    %rdx,0x20(%rsp)
jmp    2ae <OPENSSL_SA_doall+0x5e>
nopw   0x0(%rax,%rax,1)
sub    $0x1,%ebx
shr    $0xc,%r12
test   %ebx,%ebx
js     300 <OPENSSL_SA_doall+0xb0>
movslq %ebx,%rbp
mov    (%rsp,%rbp,4),%eax
mov    0x20(%rsp,%rbp,8),%rdx
cmp    $0xfff,%eax
jg     298 <OPENSSL_SA_doall+0x48>
lea    0x1(%rax),%ecx
movslq %ebx,%rbp
test   %rdx,%rdx
mov    %ecx,(%rsp,%rbp,4)
je     2a6 <OPENSSL_SA_doall+0x56>
cltq   
mov    (%rdx,%rax,8),%rsi
test   %rsi,%rsi
je     2a6 <OPENSSL_SA_doall+0x56>
and    $0xfffffffffffff000,%r12
or     %rax,%r12
mov    0x0(%r13),%eax
sub    $0x1,%eax
cmp    %ebx,%eax
jle    320 <OPENSSL_SA_doall+0xd0>
add    $0x1,%ebx
shl    $0xc,%r12
movslq %ebx,%rbp
test   %ebx,%ebx
movl   $0x0,(%rsp,%rbp,4)
mov    %rsi,0x20(%rsp,%rbp,8)
jns    2a3 <OPENSSL_SA_doall+0x53>
nopl   (%rax)
mov    0x58(%rsp),%rax
xor    %fs:0x28,%rax
jne    32b <OPENSSL_SA_doall+0xdb>
add    $0x60,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
mov    %r12,%rdi
callq  *%r14
jmpq   2a6 <OPENSSL_SA_doall+0x56>
callq  330 <OPENSSL_SA_doall_arg>

0000000000000330 <OPENSSL_SA_doall_arg>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x68,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x58(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     3e8 <OPENSSL_SA_doall_arg+0xb8>
mov    %rdx,%r15
mov    0x18(%rdi),%rdx
test   %rsi,%rsi
mov    %rdi,%r13
mov    %rsi,%r14
movl   $0x0,(%rsp)
mov    %rdx,0x20(%rsp)
je     420 <OPENSSL_SA_doall_arg+0xf0>
xor    %r12d,%r12d
xor    %ebx,%ebx
jmp    396 <OPENSSL_SA_doall_arg+0x66>
sub    $0x1,%ebx
shr    $0xc,%r12
test   %ebx,%ebx
js     3e8 <OPENSSL_SA_doall_arg+0xb8>
movslq %ebx,%rbp
mov    (%rsp,%rbp,4),%eax
mov    0x20(%rsp,%rbp,8),%rdx
cmp    $0xfff,%eax
jg     380 <OPENSSL_SA_doall_arg+0x50>
lea    0x1(%rax),%ecx
movslq %ebx,%rbp
test   %rdx,%rdx
mov    %ecx,(%rsp,%rbp,4)
je     38e <OPENSSL_SA_doall_arg+0x5e>
cltq   
mov    (%rdx,%rax,8),%rsi
test   %rsi,%rsi
je     38e <OPENSSL_SA_doall_arg+0x5e>
and    $0xfffffffffffff000,%r12
or     %rax,%r12
mov    0x0(%r13),%eax
sub    $0x1,%eax
cmp    %ebx,%eax
jle    410 <OPENSSL_SA_doall_arg+0xe0>
add    $0x1,%ebx
shl    $0xc,%r12
movslq %ebx,%rbp
test   %ebx,%ebx
movl   $0x0,(%rsp,%rbp,4)
mov    %rsi,0x20(%rsp,%rbp,8)
jns    38b <OPENSSL_SA_doall_arg+0x5b>
nopl   (%rax)
mov    0x58(%rsp),%rax
xor    %fs:0x28,%rax
jne    481 <OPENSSL_SA_doall_arg+0x151>
add    $0x68,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
mov    %r15,%rdx
mov    %r12,%rdi
callq  *%r14
jmpq   38e <OPENSSL_SA_doall_arg+0x5e>
xchg   %ax,%ax
xor    %eax,%eax
xor    %ecx,%ecx
cmp    $0xfff,%eax
jg     468 <OPENSSL_SA_doall_arg+0x138>
lea    0x1(%rax),%edi
movslq %ecx,%rsi
test   %rdx,%rdx
mov    %edi,(%rsp,%rsi,4)
je     476 <OPENSSL_SA_doall_arg+0x146>
mov    (%rdx,%rax,8),%rdx
test   %rdx,%rdx
je     476 <OPENSSL_SA_doall_arg+0x146>
mov    0x0(%r13),%eax
sub    $0x1,%eax
cmp    %eax,%ecx
jge    476 <OPENSSL_SA_doall_arg+0x146>
add    $0x1,%ecx
movslq %ecx,%rsi
movl   $0x0,(%rsp,%rsi,4)
mov    %rdx,0x20(%rsp,%rsi,8)
jmp    46b <OPENSSL_SA_doall_arg+0x13b>
nopl   0x0(%rax)
sub    $0x1,%ecx
test   %ecx,%ecx
js     3e8 <OPENSSL_SA_doall_arg+0xb8>
movslq %ecx,%rsi
movslq (%rsp,%rsi,4),%rax
mov    0x20(%rsp,%rsi,8),%rdx
jmp    424 <OPENSSL_SA_doall_arg+0xf4>
callq  486 <OPENSSL_SA_doall_arg+0x156>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000490 <OPENSSL_SA_num>:
test   %rdi,%rdi
je     4a0 <OPENSSL_SA_num+0x10>
mov    0x10(%rdi),%rax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000004b0 <OPENSSL_SA_get>:
test   %rdi,%rdi
je     510 <OPENSSL_SA_get+0x60>
cmp    %rsi,0x8(%rdi)
jb     510 <OPENSSL_SA_get+0x60>
mov    (%rdi),%edx
mov    0x18(%rdi),%r8
sub    $0x1,%edx
test   %edx,%edx
jle    4f6 <OPENSSL_SA_get+0x46>
test   %r8,%r8
je     4f6 <OPENSSL_SA_get+0x46>
lea    (%rdx,%rdx,2),%ecx
shl    $0x2,%ecx
jmp    4dc <OPENSSL_SA_get+0x2c>
nopl   (%rax)
test   %edx,%edx
jle    4f6 <OPENSSL_SA_get+0x46>
mov    %rsi,%rax
sub    $0x1,%edx
shr    %cl,%rax
sub    $0xc,%ecx
and    $0xfff,%eax
mov    (%r8,%rax,8),%r8
test   %r8,%r8
jne    4d8 <OPENSSL_SA_get+0x28>
test   %r8,%r8
je     510 <OPENSSL_SA_get+0x60>
and    $0xfff,%esi
mov    (%r8,%rsi,8),%rax
retq   
nopw   %cs:0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000520 <OPENSSL_SA_set>:
test   %rdi,%rdi
je     690 <OPENSSL_SA_set+0x170>
push   %r14
mov    %rsi,%rax
push   %r13
push   %r12
push   %rbp
shr    $0xc,%rax
push   %rbx
sub    $0x10,%rsp
test   %rax,%rax
je     6a7 <OPENSSL_SA_set+0x187>
mov    %rsi,%rax
shr    $0x18,%rax
test   %rax,%rax
je     6b2 <OPENSSL_SA_set+0x192>
mov    %rsi,%rax
shr    $0x24,%rax
test   %rax,%rax
je     6bd <OPENSSL_SA_set+0x19d>
mov    %rsi,%rax
shr    $0x30,%rax
test   %rax,%rax
je     6c8 <OPENSSL_SA_set+0x1a8>
mov    %rsi,%rax
shr    $0x3c,%rax
cmp    $0x1,%rax
sbb    %r12d,%r12d
add    $0x6,%r12d
mov    (%rdi),%ecx
mov    %rdx,%rbp
mov    %rsi,%rbx
mov    %rdi,%r13
cmp    %ecx,%r12d
jg     5bb <OPENSSL_SA_set+0x9b>
jmp    5e5 <OPENSSL_SA_set+0xc5>
nopl   0x0(%rax)
mov    0x0(%r13),%edi
mov    0x18(%r13),%rdx
lea    0x1(%rdi),%ecx
mov    %rdx,(%rax)
mov    %rax,0x18(%r13)
cmp    %r12d,%ecx
mov    %ecx,0x0(%r13)
jge    5f0 <OPENSSL_SA_set+0xd0>
lea    0x0(%rip),%rsi        # 5c2 <OPENSSL_SA_set+0xa2>
mov    $0xb4,%edx
mov    $0x8000,%edi
callq  5d1 <OPENSSL_SA_set+0xb1>
test   %rax,%rax
jne    5a0 <OPENSSL_SA_set+0x80>
add    $0x10,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
mov    0x18(%rdi),%rax
nopl   0x0(%rax)
cmp    0x8(%r13),%rbx
jbe    5fa <OPENSSL_SA_set+0xda>
mov    %rbx,0x8(%r13)
sub    $0x1,%ecx
mov    %ecx,%r12d
je     660 <OPENSSL_SA_set+0x140>
lea    (%rcx,%rcx,2),%ecx
shl    $0x2,%ecx
jmp    619 <OPENSSL_SA_set+0xf9>
nopw   0x0(%rax,%rax,1)
sub    $0xc,%ecx
sub    $0x1,%r12d
je     660 <OPENSSL_SA_set+0x140>
mov    %rbx,%rdx
shr    %cl,%rdx
and    $0xfff,%edx
lea    (%rax,%rdx,8),%r14
mov    (%r14),%rax
test   %rax,%rax
jne    610 <OPENSSL_SA_set+0xf0>
lea    0x0(%rip),%rsi        # 638 <OPENSSL_SA_set+0x118>
mov    $0xb4,%edx
mov    $0x8000,%edi
mov    %ecx,0xc(%rsp)
callq  64b <OPENSSL_SA_set+0x12b>
test   %rax,%rax
mov    %rax,(%r14)
je     5d6 <OPENSSL_SA_set+0xb6>
mov    0xc(%rsp),%ecx
sub    $0xc,%ecx
sub    $0x1,%r12d
jne    619 <OPENSSL_SA_set+0xf9>
and    $0xfff,%ebx
test   %rbp,%rbp
lea    (%rax,%rbx,8),%rax
je     693 <OPENSSL_SA_set+0x173>
cmpq   $0x0,(%rax)
je     6a0 <OPENSSL_SA_set+0x180>
mov    %rbp,(%rax)
add    $0x10,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
cmpq   $0x0,(%rax)
je     675 <OPENSSL_SA_set+0x155>
subq   $0x1,0x10(%r13)
jmp    675 <OPENSSL_SA_set+0x155>
addq   $0x1,0x10(%r13)
jmp    675 <OPENSSL_SA_set+0x155>
mov    $0x1,%r12d
jmpq   587 <OPENSSL_SA_set+0x67>
mov    $0x2,%r12d
jmpq   587 <OPENSSL_SA_set+0x67>
mov    $0x3,%r12d
jmpq   587 <OPENSSL_SA_set+0x67>
mov    $0x4,%r12d
jmpq   587 <OPENSSL_SA_set+0x67>
