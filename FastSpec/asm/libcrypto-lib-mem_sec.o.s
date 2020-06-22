
openssl_crypto_dump/libcrypto-lib-mem_sec.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <sh_setbit>:
sub    $0x8,%rsp
test   %esi,%esi
mov    %esi,%ecx
js     80 <sh_setbit+0x80>
movslq %esi,%rax
cmp    0x0(%rip),%rax        # 14 <sh_setbit+0x14>
jge    80 <sh_setbit+0x80>
mov    0x0(%rip),%r9        # 1d <sh_setbit+0x1d>
mov    %rdi,%rax
sub    0x0(%rip),%rax        # 27 <sh_setbit+0x27>
mov    %rdx,%rsi
shr    %cl,%r9
lea    -0x1(%r9),%rdx
test   %rax,%rdx
jne    c8 <sh_setbit+0xc8>
xor    %edx,%edx
mov    $0x1,%r8d
div    %r9
mov    %r8,%rdi
shl    %cl,%rdi
mov    %rdi,%rcx
add    %rax,%rcx
je     98 <sh_setbit+0x98>
cmp    0x0(%rip),%rcx        # 5a <sh_setbit+0x5a>
jae    98 <sh_setbit+0x98>
mov    %rcx,%rdx
and    $0x7,%ecx
shr    $0x3,%rdx
add    %rsi,%rdx
movzbl (%rdx),%esi
bt     %rcx,%rsi
jb     b0 <sh_setbit+0xb0>
shl    %cl,%r8
or     %esi,%r8d
mov    %r8b,(%rdx)
add    $0x8,%rsp
retq   
lea    0x0(%rip),%rsi        # 87 <sh_setbit+0x87>
lea    0x0(%rip),%rdi        # 8e <sh_setbit+0x8e>
mov    $0x148,%edx
callq  98 <sh_setbit+0x98>
lea    0x0(%rip),%rsi        # 9f <sh_setbit+0x9f>
lea    0x0(%rip),%rdi        # a6 <sh_setbit+0xa6>
mov    $0x14b,%edx
callq  b0 <sh_setbit+0xb0>
lea    0x0(%rip),%rsi        # b7 <sh_setbit+0xb7>
lea    0x0(%rip),%rdi        # be <sh_setbit+0xbe>
mov    $0x14c,%edx
callq  c8 <sh_setbit+0xc8>
lea    0x0(%rip),%rsi        # cf <sh_setbit+0xcf>
lea    0x0(%rip),%rdi        # d6 <sh_setbit+0xd6>
mov    $0x149,%edx
callq  e0 <sh_add_to_list>

00000000000000e0 <sh_add_to_list>:
sub    $0x8,%rsp
mov    0x0(%rip),%rax        # eb <sh_add_to_list+0xb>
cmp    %rdi,%rax
ja     15c <sh_add_to_list+0x7c>
mov    0x0(%rip),%rdx        # f7 <sh_add_to_list+0x17>
lea    (%rax,%rdx,8),%rax
cmp    %rax,%rdi
jae    15c <sh_add_to_list+0x7c>
mov    0x0(%rip),%rdx        # 107 <sh_add_to_list+0x27>
cmp    %rsi,%rdx
ja     174 <sh_add_to_list+0x94>
mov    %rdx,%rcx
add    0x0(%rip),%rcx        # 116 <sh_add_to_list+0x36>
cmp    %rcx,%rsi
jae    174 <sh_add_to_list+0x94>
mov    (%rdi),%rax
test   %rax,%rax
mov    %rax,(%rsi)
je     150 <sh_add_to_list+0x70>
cmp    %rax,%rcx
jbe    18c <sh_add_to_list+0xac>
cmp    %rax,%rdx
ja     18c <sh_add_to_list+0xac>
mov    %rdi,0x8(%rsi)
cmp    0x8(%rax),%rdi
jne    1a4 <sh_add_to_list+0xc4>
mov    %rsi,0x8(%rax)
mov    %rsi,(%rdi)
add    $0x8,%rsp
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    %rdi,0x8(%rsi)
mov    %rsi,(%rdi)
add    $0x8,%rsp
retq   
lea    0x0(%rip),%rsi        # 163 <sh_add_to_list+0x83>
lea    0x0(%rip),%rdi        # 16a <sh_add_to_list+0x8a>
mov    $0x154,%edx
callq  174 <sh_add_to_list+0x94>
lea    0x0(%rip),%rsi        # 17b <sh_add_to_list+0x9b>
lea    0x0(%rip),%rdi        # 182 <sh_add_to_list+0xa2>
mov    $0x155,%edx
callq  18c <sh_add_to_list+0xac>
lea    0x0(%rip),%rsi        # 193 <sh_add_to_list+0xb3>
lea    0x0(%rip),%rdi        # 19a <sh_add_to_list+0xba>
mov    $0x159,%edx
callq  1a4 <sh_add_to_list+0xc4>
lea    0x0(%rip),%rsi        # 1ab <sh_add_to_list+0xcb>
lea    0x0(%rip),%rdi        # 1b2 <sh_add_to_list+0xd2>
mov    $0x15d,%edx
callq  1bc <sh_add_to_list+0xdc>
nopl   0x0(%rax)

00000000000001c0 <sh_clearbit>:
sub    $0x8,%rsp
test   %esi,%esi
mov    %esi,%ecx
js     243 <sh_clearbit+0x83>
movslq %esi,%rax
cmp    0x0(%rip),%rax        # 1d4 <sh_clearbit+0x14>
jge    243 <sh_clearbit+0x83>
mov    0x0(%rip),%r9        # 1dd <sh_clearbit+0x1d>
mov    %rdi,%rax
sub    0x0(%rip),%rax        # 1e7 <sh_clearbit+0x27>
mov    %rdx,%rsi
shr    %cl,%r9
lea    -0x1(%r9),%rdx
test   %rax,%rdx
jne    28b <sh_clearbit+0xcb>
xor    %edx,%edx
mov    $0x1,%r8d
div    %r9
mov    %r8,%rdi
shl    %cl,%rdi
mov    %rdi,%rcx
add    %rax,%rcx
je     25b <sh_clearbit+0x9b>
cmp    0x0(%rip),%rcx        # 21a <sh_clearbit+0x5a>
jae    25b <sh_clearbit+0x9b>
mov    %rcx,%rdx
and    $0x7,%ecx
shr    $0x3,%rdx
add    %rsi,%rdx
movzbl (%rdx),%esi
bt     %rcx,%rsi
jae    273 <sh_clearbit+0xb3>
shl    %cl,%r8
not    %r8d
and    %esi,%r8d
mov    %r8b,(%rdx)
add    $0x8,%rsp
retq   
lea    0x0(%rip),%rsi        # 24a <sh_clearbit+0x8a>
lea    0x0(%rip),%rdi        # 251 <sh_clearbit+0x91>
mov    $0x13c,%edx
callq  25b <sh_clearbit+0x9b>
lea    0x0(%rip),%rsi        # 262 <sh_clearbit+0xa2>
lea    0x0(%rip),%rdi        # 269 <sh_clearbit+0xa9>
mov    $0x13f,%edx
callq  273 <sh_clearbit+0xb3>
lea    0x0(%rip),%rsi        # 27a <sh_clearbit+0xba>
lea    0x0(%rip),%rdi        # 281 <sh_clearbit+0xc1>
mov    $0x140,%edx
callq  28b <sh_clearbit+0xcb>
lea    0x0(%rip),%rsi        # 292 <sh_clearbit+0xd2>
lea    0x0(%rip),%rdi        # 299 <sh_clearbit+0xd9>
mov    $0x13d,%edx
callq  2a3 <sh_clearbit+0xe3>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000002b0 <sh_actual_size>:
mov    0x0(%rip),%r10        # 2b7 <sh_actual_size+0x7>
push   %rbx
cmp    %rdi,%r10
ja     3d5 <sh_actual_size+0x125>
mov    0x0(%rip),%r9        # 2c8 <sh_actual_size+0x18>
lea    (%r10,%r9,1),%rax
cmp    %rax,%rdi
jae    3d5 <sh_actual_size+0x125>
lea    (%rdi,%r9,1),%rax
xor    %edx,%edx
mov    0x0(%rip),%r11        # 2e2 <sh_actual_size+0x32>
mov    0x0(%rip),%rbx        # 2e9 <sh_actual_size+0x39>
sub    %r10,%rax
divq   0x0(%rip)        # 2f3 <sh_actual_size+0x43>
lea    -0x1(%r11),%rsi
test   %rax,%rax
je     320 <sh_actual_size+0x70>
mov    %rax,%rdx
shr    $0x3,%rdx
movzbl (%rbx,%rdx,1),%ecx
mov    %eax,%edx
and    $0x7,%edx
bt     %rdx,%rcx
jae    3ab <sh_actual_size+0xfb>
nopw   %cs:0x0(%rax,%rax,1)
test   %esi,%esi
mov    %esi,%ecx
js     435 <sh_actual_size+0x185>
movslq %esi,%rsi
cmp    %r11,%rsi
jge    435 <sh_actual_size+0x185>
shr    %cl,%r9
mov    %rdi,%rax
lea    -0x1(%r9),%rdx
sub    %r10,%rax
test   %rax,%rdx
jne    3ed <sh_actual_size+0x13d>
mov    $0x1,%esi
mov    %rsi,%rdx
shl    %cl,%rdx
mov    %rdx,%rcx
xor    %edx,%edx
div    %r9
add    %rax,%rcx
je     41d <sh_actual_size+0x16d>
cmp    0x0(%rip),%rcx        # 36f <sh_actual_size+0xbf>
jae    41d <sh_actual_size+0x16d>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
shl    %cl,%rsi
movzbl (%rbx,%rax,1),%eax
test   %esi,%eax
je     405 <sh_actual_size+0x155>
mov    %r9,%rax
pop    %rbx
retq   
nop
mov    %rax,%rcx
shr    $0x3,%rcx
movzbl (%rbx,%rcx,1),%r8d
mov    %eax,%ecx
and    $0x7,%ecx
bt     %rcx,%r8
jb     320 <sh_actual_size+0x70>
test   $0x1,%al
jne    3bd <sh_actual_size+0x10d>
sub    $0x1,%rsi
shr    %rax
jne    390 <sh_actual_size+0xe0>
jmpq   320 <sh_actual_size+0x70>
lea    0x0(%rip),%rsi        # 3c4 <sh_actual_size+0x114>
lea    0x0(%rip),%rdi        # 3cb <sh_actual_size+0x11b>
mov    $0x126,%edx
callq  3d5 <sh_actual_size+0x125>
lea    0x0(%rip),%rsi        # 3dc <sh_actual_size+0x12c>
lea    0x0(%rip),%rdi        # 3e3 <sh_actual_size+0x133>
mov    $0x28b,%edx
callq  3ed <sh_actual_size+0x13d>
lea    0x0(%rip),%rsi        # 3f4 <sh_actual_size+0x144>
lea    0x0(%rip),%rdi        # 3fb <sh_actual_size+0x14b>
mov    $0x132,%edx
callq  405 <sh_actual_size+0x155>
lea    0x0(%rip),%rsi        # 40c <sh_actual_size+0x15c>
lea    0x0(%rip),%rdi        # 413 <sh_actual_size+0x163>
mov    $0x28f,%edx
callq  41d <sh_actual_size+0x16d>
lea    0x0(%rip),%rsi        # 424 <sh_actual_size+0x174>
lea    0x0(%rip),%rdi        # 42b <sh_actual_size+0x17b>
mov    $0x134,%edx
callq  435 <sh_actual_size+0x185>
lea    0x0(%rip),%rsi        # 43c <sh_actual_size+0x18c>
lea    0x0(%rip),%rdi        # 443 <sh_actual_size+0x193>
mov    $0x131,%edx
callq  44d <sh_actual_size+0x19d>
nopl   (%rax)

0000000000000450 <sh_free.part.4>:
push   %r15
push   %r14
xor    %edx,%edx
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x18,%rsp
mov    0x0(%rip),%rdi        # 46a <sh_free.part.4+0x1a>
mov    0x0(%rip),%r8        # 471 <sh_free.part.4+0x21>
mov    0x0(%rip),%r9        # 478 <sh_free.part.4+0x28>
mov    0x0(%rip),%r10        # 47f <sh_free.part.4+0x2f>
lea    0x0(%rbp,%rdi,1),%rax
lea    -0x1(%r9),%rsi
sub    %r8,%rax
divq   0x0(%rip)        # 492 <sh_free.part.4+0x42>
test   %rax,%rax
jne    4b1 <sh_free.part.4+0x61>
jmp    4c8 <sh_free.part.4+0x78>
nopl   0x0(%rax)
test   $0x1,%al
jne    a10 <sh_free.part.4+0x5c0>
sub    $0x1,%rsi
shr    %rax
je     4c8 <sh_free.part.4+0x78>
mov    %rax,%rdx
shr    $0x3,%rdx
movzbl (%r10,%rdx,1),%ecx
mov    %eax,%edx
and    $0x7,%edx
bt     %rdx,%rcx
jae    4a0 <sh_free.part.4+0x50>
test   %esi,%esi
mov    %rsi,%r14
mov    %esi,%ecx
js     933 <sh_free.part.4+0x4e3>
movslq %esi,%rsi
cmp    %r9,%rsi
jge    933 <sh_free.part.4+0x4e3>
shr    %cl,%rdi
mov    %rbp,%rax
lea    -0x1(%rdi),%rdx
sub    %r8,%rax
test   %rax,%rdx
jne    963 <sh_free.part.4+0x513>
xor    %edx,%edx
mov    $0x1,%esi
div    %rdi
mov    %rsi,%rbx
shl    %cl,%rbx
mov    %rbx,%rcx
add    %rax,%rcx
je     94b <sh_free.part.4+0x4fb>
cmp    0x0(%rip),%rcx        # 51a <sh_free.part.4+0xca>
jae    94b <sh_free.part.4+0x4fb>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
shl    %cl,%rsi
movzbl (%r10,%rax,1),%eax
test   %esi,%eax
je     a28 <sh_free.part.4+0x5d8>
mov    0x0(%rip),%rdx        # 541 <sh_free.part.4+0xf1>
lea    0x0(,%r14,8),%rbx
mov    %r14d,%esi
mov    %rbp,%rdi
callq  1c0 <sh_clearbit>
mov    %rbx,%rdi
add    0x0(%rip),%rdi        # 55e <sh_free.part.4+0x10e>
mov    %rbp,%rsi
callq  e0 <sh_add_to_list>
lea    -0x8(%rbx),%rax
mov    %rax,%r12
jmpq   89f <sh_free.part.4+0x44f>
nopw   0x0(%rax,%rax,1)
mov    0x0(%rip),%r9        # 57f <sh_free.part.4+0x12f>
movzbl (%r9,%r10,1),%r10d
bt     %rdx,%r10
jb     8fb <sh_free.part.4+0x4ab>
lea    -0x1(%r15),%rbx
and    %rbx,%rax
mov    %rbx,0x8(%rsp)
mov    %rdi,%rbx
imul   %rsi,%rax
add    %rax,%rbx
je     8fb <sh_free.part.4+0x4ab>
xor    %edx,%edx
div    %rsi
add    %r15,%rax
xor    $0x1,%rax
mov    %rax,%r10
mov    %eax,%edx
shr    $0x3,%r10
and    $0x7,%edx
movzbl (%r8,%r10,1),%r11d
bt     %rdx,%r11
jae    910 <sh_free.part.4+0x4c0>
movzbl (%r9,%r10,1),%r10d
bt     %rdx,%r10
jb     910 <sh_free.part.4+0x4c0>
and    0x8(%rsp),%rax
imul   %rsi,%rax
add    %rax,%rdi
cmp    %rdi,%rbp
jne    9b0 <sh_free.part.4+0x560>
test   %rbp,%rbp
je     9e0 <sh_free.part.4+0x590>
test   %r13d,%r13d
js     933 <sh_free.part.4+0x4e3>
movslq %r13d,%r10
cmp    0x0(%rip),%r10        # 611 <sh_free.part.4+0x1c1>
jge    933 <sh_free.part.4+0x4e3>
sub    $0x1,%rsi
test   %rsi,(%rsp)
jne    963 <sh_free.part.4+0x513>
test   %rcx,%rcx
je     94b <sh_free.part.4+0x4fb>
cmp    %rcx,0x0(%rip)        # 635 <sh_free.part.4+0x1e5>
jbe    94b <sh_free.part.4+0x4fb>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
movzbl (%r9,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    9c8 <sh_free.part.4+0x578>
mov    %r8,%rdx
mov    %r13d,%esi
mov    %rbp,%rdi
mov    %r10,(%rsp)
callq  1c0 <sh_clearbit>
mov    0x0(%rbp),%rax
mov    (%rsp),%r10
test   %rax,%rax
je     681 <sh_free.part.4+0x231>
mov    0x8(%rbp),%rdx
mov    %rdx,0x8(%rax)
mov    0x8(%rbp),%rdx
mov    %rax,(%rdx)
mov    0x0(%rbp),%rax
test   %rax,%rax
je     920 <sh_free.part.4+0x4d0>
mov    0x8(%rax),%rax
mov    0x0(%rip),%rcx        # 6a0 <sh_free.part.4+0x250>
cmp    %rcx,%rax
jb     6b5 <sh_free.part.4+0x265>
mov    0x0(%rip),%rdx        # 6ac <sh_free.part.4+0x25c>
lea    (%rcx,%rdx,8),%rcx
cmp    %rcx,%rax
jb     6dc <sh_free.part.4+0x28c>
mov    0x0(%rip),%rdx        # 6bc <sh_free.part.4+0x26c>
cmp    %rdx,%rax
jb     97b <sh_free.part.4+0x52b>
add    0x0(%rip),%rdx        # 6cc <sh_free.part.4+0x27c>
cmp    %rdx,%rax
jae    97b <sh_free.part.4+0x52b>
mov    0x0(%rip),%rdx        # 6dc <sh_free.part.4+0x28c>
mov    0x0(%rip),%rdi        # 6e3 <sh_free.part.4+0x293>
cmp    %rdx,%r10
jge    933 <sh_free.part.4+0x4e3>
mov    0x0(%rip),%rsi        # 6f3 <sh_free.part.4+0x2a3>
mov    %rbp,%rax
mov    %r13d,%ecx
sub    0x0(%rip),%rax        # 700 <sh_free.part.4+0x2b0>
shr    %cl,%rsi
lea    -0x1(%rsi),%rdx
test   %rax,%rdx
jne    963 <sh_free.part.4+0x513>
xor    %edx,%edx
div    %rsi
add    %r15,%rax
mov    %rax,%rcx
je     94b <sh_free.part.4+0x4fb>
cmp    0x0(%rip),%rax        # 728 <sh_free.part.4+0x2d8>
jae    94b <sh_free.part.4+0x4fb>
shr    $0x3,%rax
and    $0x7,%ecx
movzbl (%rdi,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    980 <sh_free.part.4+0x530>
mov    0x0(%rip),%rdx        # 750 <sh_free.part.4+0x300>
mov    %r13d,%esi
mov    %rbx,%rdi
callq  1c0 <sh_clearbit>
mov    (%rbx),%rax
test   %rax,%rax
je     76b <sh_free.part.4+0x31b>
mov    0x8(%rbx),%rdx
mov    %rdx,0x8(%rax)
mov    0x8(%rbx),%rdx
mov    %rax,(%rdx)
mov    (%rbx),%rax
test   %rax,%rax
je     7ba <sh_free.part.4+0x36a>
mov    0x8(%rax),%rax
mov    0x0(%rip),%rdx        # 785 <sh_free.part.4+0x335>
cmp    %rdx,%rax
jb     79a <sh_free.part.4+0x34a>
mov    0x0(%rip),%rcx        # 791 <sh_free.part.4+0x341>
lea    (%rdx,%rcx,8),%rdx
cmp    %rdx,%rax
jb     7ba <sh_free.part.4+0x36a>
mov    0x0(%rip),%rdx        # 7a1 <sh_free.part.4+0x351>
cmp    %rdx,%rax
jb     97b <sh_free.part.4+0x52b>
add    0x0(%rip),%rdx        # 7b1 <sh_free.part.4+0x361>
cmp    %rdx,%rax
jae    97b <sh_free.part.4+0x52b>
sub    $0x1,%r14
mov    %rbx,%rax
cmp    %rbx,%rbp
cmovae %rbp,%rax
cmovbe %rbp,%rbx
test   %r14d,%r14d
movq   $0x0,(%rax)
movq   $0x0,0x8(%rax)
mov    %r14d,%ecx
mov    0x0(%rip),%rdi        # 7e8 <sh_free.part.4+0x398>
js     933 <sh_free.part.4+0x4e3>
movslq %r14d,%rax
cmp    0x0(%rip),%rax        # 7f8 <sh_free.part.4+0x3a8>
jge    933 <sh_free.part.4+0x4e3>
mov    0x0(%rip),%rsi        # 805 <sh_free.part.4+0x3b5>
mov    %rbx,%rax
sub    0x0(%rip),%rax        # 80f <sh_free.part.4+0x3bf>
shr    %cl,%rsi
lea    -0x1(%rsi),%rdx
test   %rax,%rdx
jne    963 <sh_free.part.4+0x513>
mov    $0x1,%edx
shl    %cl,%rdx
mov    %rdx,%rcx
xor    %edx,%edx
div    %rsi
add    %rax,%rcx
je     94b <sh_free.part.4+0x4fb>
cmp    0x0(%rip),%rcx        # 83f <sh_free.part.4+0x3ef>
jae    94b <sh_free.part.4+0x4fb>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
movzbl (%rdi,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    998 <sh_free.part.4+0x548>
mov    0x0(%rip),%rdx        # 86a <sh_free.part.4+0x41a>
mov    %r14d,%esi
mov    %rbx,%rdi
callq  0 <sh_setbit>
mov    %r12,%rdi
add    0x0(%rip),%rdi        # 87f <sh_free.part.4+0x42f>
mov    %rbx,%rsi
callq  e0 <sh_add_to_list>
mov    0x0(%rip),%rax        # 88e <sh_free.part.4+0x43e>
mov    (%rax,%r12,1),%rbp
sub    $0x8,%r12
cmp    %rbx,%rbp
jne    9f8 <sh_free.part.4+0x5a8>
mov    0x0(%rip),%rdi        # 8a6 <sh_free.part.4+0x456>
mov    0x0(%rip),%rsi        # 8ad <sh_free.part.4+0x45d>
mov    %r14d,%ecx
mov    %rbp,%rax
xor    %edx,%edx
mov    $0x1,%r15d
shl    %cl,%r15
mov    0x0(%rip),%r8        # 8c5 <sh_free.part.4+0x475>
mov    %r14d,%r13d
sub    %rdi,%rax
shr    %cl,%rsi
mov    %rax,(%rsp)
div    %rsi
lea    (%rax,%r15,1),%rcx
mov    %rcx,%rax
xor    $0x1,%rax
mov    %rax,%r10
mov    %eax,%edx
shr    $0x3,%r10
and    $0x7,%edx
movzbl (%r8,%r10,1),%r9d
bt     %rdx,%r9
jb     578 <sh_free.part.4+0x128>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopw   0x0(%rax,%rax,1)
xor    %edi,%edi
jmpq   5ec <sh_free.part.4+0x19c>
nopw   0x0(%rax,%rax,1)
mov    0x0(%rip),%rdi        # 927 <sh_free.part.4+0x4d7>
mov    0x0(%rip),%rdx        # 92e <sh_free.part.4+0x4de>
jmpq   6e3 <sh_free.part.4+0x293>
lea    0x0(%rip),%rsi        # 93a <sh_free.part.4+0x4ea>
lea    0x0(%rip),%rdi        # 941 <sh_free.part.4+0x4f1>
mov    $0x131,%edx
callq  94b <sh_free.part.4+0x4fb>
lea    0x0(%rip),%rsi        # 952 <sh_free.part.4+0x502>
lea    0x0(%rip),%rdi        # 959 <sh_free.part.4+0x509>
mov    $0x134,%edx
callq  963 <sh_free.part.4+0x513>
lea    0x0(%rip),%rsi        # 96a <sh_free.part.4+0x51a>
lea    0x0(%rip),%rdi        # 971 <sh_free.part.4+0x521>
mov    $0x132,%edx
callq  97b <sh_free.part.4+0x52b>
callq  980 <sh_free.part.4+0x530>
lea    0x0(%rip),%rsi        # 987 <sh_free.part.4+0x537>
lea    0x0(%rip),%rdi        # 98e <sh_free.part.4+0x53e>
mov    $0x275,%edx
callq  998 <sh_free.part.4+0x548>
lea    0x0(%rip),%rsi        # 99f <sh_free.part.4+0x54f>
lea    0x0(%rip),%rdi        # 9a6 <sh_free.part.4+0x556>
mov    $0x280,%edx
callq  9b0 <sh_free.part.4+0x560>
lea    0x0(%rip),%rsi        # 9b7 <sh_free.part.4+0x567>
lea    0x0(%rip),%rdi        # 9be <sh_free.part.4+0x56e>
mov    $0x270,%edx
callq  9c8 <sh_free.part.4+0x578>
lea    0x0(%rip),%rsi        # 9cf <sh_free.part.4+0x57f>
lea    0x0(%rip),%rdi        # 9d6 <sh_free.part.4+0x586>
mov    $0x272,%edx
callq  9e0 <sh_free.part.4+0x590>
lea    0x0(%rip),%rsi        # 9e7 <sh_free.part.4+0x597>
lea    0x0(%rip),%rdi        # 9ee <sh_free.part.4+0x59e>
mov    $0x271,%edx
callq  9f8 <sh_free.part.4+0x5a8>
lea    0x0(%rip),%rsi        # 9ff <sh_free.part.4+0x5af>
lea    0x0(%rip),%rdi        # a06 <sh_free.part.4+0x5b6>
mov    $0x283,%edx
callq  a10 <sh_free.part.4+0x5c0>
lea    0x0(%rip),%rsi        # a17 <sh_free.part.4+0x5c7>
lea    0x0(%rip),%rdi        # a1e <sh_free.part.4+0x5ce>
mov    $0x126,%edx
callq  a28 <sh_free.part.4+0x5d8>
lea    0x0(%rip),%rsi        # a2f <sh_free.part.4+0x5df>
lea    0x0(%rip),%rdi        # a36 <sh_free.part.4+0x5e6>
mov    $0x26a,%edx
callq  a40 <CRYPTO_secure_malloc_init>

0000000000000a40 <CRYPTO_secure_malloc_init>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
mov    0x0(%rip),%ebx        # a50 <CRYPTO_secure_malloc_init+0x10>
test   %ebx,%ebx
je     a68 <CRYPTO_secure_malloc_init+0x28>
xor    %ebx,%ebx
add    $0x8,%rsp
mov    %ebx,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
mov    %rdi,%rbp
mov    %rsi,%r12
callq  a73 <CRYPTO_secure_malloc_init+0x33>
test   %rax,%rax
mov    %rax,0x0(%rip)        # a7d <CRYPTO_secure_malloc_init+0x3d>
je     a54 <CRYPTO_secure_malloc_init+0x14>
lea    0x0(%rip),%r13        # a86 <CRYPTO_secure_malloc_init+0x46>
xor    %eax,%eax
mov    $0xa,%ecx
test   %rbp,%rbp
mov    %r13,%rdi
rep stos %rax,%es:(%rdi)
je     d84 <CRYPTO_secure_malloc_init+0x344>
lea    -0x1(%rbp),%rax
test   %rbp,%rax
jne    d9c <CRYPTO_secure_malloc_init+0x35c>
cmp    $0x10,%r12
jbe    d40 <CRYPTO_secure_malloc_init+0x300>
lea    -0x1(%r12),%rax
test   %r12,%rax
jne    dfc <CRYPTO_secure_malloc_init+0x3bc>
xor    %edx,%edx
mov    %rbp,%rax
xor    %edi,%edi
div    %r12
mov    %rbp,0x0(%rip)        # ad2 <CRYPTO_secure_malloc_init+0x92>
mov    %r12,0x0(%rip)        # ad9 <CRYPTO_secure_malloc_init+0x99>
add    %rax,%rax
mov    %rax,%rdx
mov    %rax,0x0(%rip)        # ae6 <CRYPTO_secure_malloc_init+0xa6>
shr    $0x3,%rdx
test   %rdx,%rdx
jne    b8b <CRYPTO_secure_malloc_init+0x14b>
lea    0x0(%rip),%rsi        # afa <CRYPTO_secure_malloc_init+0xba>
mov    $0x202,%edx
callq  b04 <CRYPTO_secure_malloc_init+0xc4>
mov    0x0(%rip),%rdi        # b0b <CRYPTO_secure_malloc_init+0xcb>
lea    0x0(%rip),%rsi        # b12 <CRYPTO_secure_malloc_init+0xd2>
mov    $0x203,%edx
callq  b1c <CRYPTO_secure_malloc_init+0xdc>
mov    0x0(%rip),%rdi        # b23 <CRYPTO_secure_malloc_init+0xe3>
lea    0x0(%rip),%rsi        # b2a <CRYPTO_secure_malloc_init+0xea>
mov    $0x204,%edx
callq  b34 <CRYPTO_secure_malloc_init+0xf4>
mov    0x0(%rip),%rdi        # b3b <CRYPTO_secure_malloc_init+0xfb>
test   %rdi,%rdi
je     b51 <CRYPTO_secure_malloc_init+0x111>
mov    0x0(%rip),%rsi        # b47 <CRYPTO_secure_malloc_init+0x107>
test   %rsi,%rsi
je     b51 <CRYPTO_secure_malloc_init+0x111>
callq  b51 <CRYPTO_secure_malloc_init+0x111>
xor    %eax,%eax
mov    %r13,%rdi
mov    $0xa,%ecx
rep stos %rax,%es:(%rdi)
mov    0x0(%rip),%rdi        # b65 <CRYPTO_secure_malloc_init+0x125>
callq  b6a <CRYPTO_secure_malloc_init+0x12a>
movq   $0x0,0x0(%rip)        # b75 <CRYPTO_secure_malloc_init+0x135>
add    $0x8,%rsp
mov    %ebx,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopw   0x0(%rax,%rax,1)
mov    %rdx,%rdi
shr    %rax
lea    0x1(%rdi),%rdx
jne    b88 <CRYPTO_secure_malloc_init+0x148>
lea    0x0(%rip),%rsi        # b9b <CRYPTO_secure_malloc_init+0x15b>
mov    %rdi,0x0(%rip)        # ba2 <CRYPTO_secure_malloc_init+0x162>
mov    $0x1a5,%edx
shl    $0x3,%rdi
callq  bb0 <CRYPTO_secure_malloc_init+0x170>
test   %rax,%rax
mov    %rax,0x0(%rip)        # bba <CRYPTO_secure_malloc_init+0x17a>
je     dcc <CRYPTO_secure_malloc_init+0x38c>
mov    0x0(%rip),%rdi        # bc7 <CRYPTO_secure_malloc_init+0x187>
lea    0x0(%rip),%rsi        # bce <CRYPTO_secure_malloc_init+0x18e>
mov    $0x1aa,%edx
shr    $0x3,%rdi
callq  bdc <CRYPTO_secure_malloc_init+0x19c>
test   %rax,%rax
mov    %rax,0x0(%rip)        # be6 <CRYPTO_secure_malloc_init+0x1a6>
je     db4 <CRYPTO_secure_malloc_init+0x374>
mov    0x0(%rip),%rdi        # bf3 <CRYPTO_secure_malloc_init+0x1b3>
lea    0x0(%rip),%rsi        # bfa <CRYPTO_secure_malloc_init+0x1ba>
mov    $0x1af,%edx
shr    $0x3,%rdi
callq  c08 <CRYPTO_secure_malloc_init+0x1c8>
test   %rax,%rax
mov    %rax,0x0(%rip)        # c12 <CRYPTO_secure_malloc_init+0x1d2>
je     de4 <CRYPTO_secure_malloc_init+0x3a4>
mov    $0x1e,%edi
callq  c22 <CRYPTO_secure_malloc_init+0x1e2>
test   %rax,%rax
jle    d4b <CRYPTO_secure_malloc_init+0x30b>
lea    (%rax,%rax,1),%rsi
mov    %rax,%rbp
add    0x0(%rip),%rsi        # c39 <CRYPTO_secure_malloc_init+0x1f9>
xor    %edi,%edi
xor    %r9d,%r9d
mov    $0xffffffff,%r8d
mov    $0x22,%ecx
mov    $0x3,%edx
mov    %rsi,0x0(%rip)        # c55 <CRYPTO_secure_malloc_init+0x215>
callq  c5a <CRYPTO_secure_malloc_init+0x21a>
cmp    $0xffffffffffffffff,%rax
mov    %rax,0x0(%rip)        # c65 <CRYPTO_secure_malloc_init+0x225>
mov    0x0(%rip),%rdi        # c6c <CRYPTO_secure_malloc_init+0x22c>
je     af3 <CRYPTO_secure_malloc_init+0xb3>
mov    0x0(%rip),%rdx        # c79 <CRYPTO_secure_malloc_init+0x239>
lea    (%rax,%rbp,1),%rdi
xor    %esi,%esi
mov    %rdi,0x0(%rip)        # c86 <CRYPTO_secure_malloc_init+0x246>
callq  0 <sh_setbit>
mov    0x0(%rip),%rsi        # c92 <CRYPTO_secure_malloc_init+0x252>
mov    0x0(%rip),%rdi        # c99 <CRYPTO_secure_malloc_init+0x259>
callq  e0 <sh_add_to_list>
mov    0x0(%rip),%rdi        # ca5 <CRYPTO_secure_malloc_init+0x265>
xor    %edx,%edx
mov    %rbp,%rsi
callq  caf <CRYPTO_secure_malloc_init+0x26f>
sar    $0x1f,%eax
xor    %edx,%edx
mov    %rbp,%rsi
mov    %eax,%ebx
mov    0x0(%rip),%rax        # cc0 <CRYPTO_secure_malloc_init+0x280>
not    %ebx
add    $0x2,%ebx
lea    -0x1(%rax,%rbp,2),%rdi
mov    %rbp,%rax
neg    %rax
and    %rax,%rdi
add    0x0(%rip),%rdi        # cda <CRYPTO_secure_malloc_init+0x29a>
callq  cdf <CRYPTO_secure_malloc_init+0x29f>
mov    0x0(%rip),%rdx        # ce6 <CRYPTO_secure_malloc_init+0x2a6>
mov    0x0(%rip),%rsi        # ced <CRYPTO_secure_malloc_init+0x2ad>
test   %eax,%eax
mov    $0x2,%eax
mov    $0x1,%ecx
mov    $0x145,%edi
cmovs  %eax,%ebx
xor    %eax,%eax
callq  d08 <CRYPTO_secure_malloc_init+0x2c8>
test   %rax,%rax
js     d5a <CRYPTO_secure_malloc_init+0x31a>
mov    0x0(%rip),%rsi        # d14 <CRYPTO_secure_malloc_init+0x2d4>
mov    0x0(%rip),%rdi        # d1b <CRYPTO_secure_malloc_init+0x2db>
mov    $0x10,%edx
callq  d25 <CRYPTO_secure_malloc_init+0x2e5>
test   %eax,%eax
mov    $0x2,%eax
movl   $0x1,0x0(%rip)        # d36 <CRYPTO_secure_malloc_init+0x2f6>
cmovs  %eax,%ebx
jmpq   a56 <CRYPTO_secure_malloc_init+0x16>
xchg   %ax,%ax
mov    $0x10,%r12d
jmpq   ac1 <CRYPTO_secure_malloc_init+0x81>
mov    $0x2000,%esi
mov    $0x1000,%ebp
jmpq   c32 <CRYPTO_secure_malloc_init+0x1f2>
callq  d5f <CRYPTO_secure_malloc_init+0x31f>
cmpl   $0x26,(%rax)
je     d6b <CRYPTO_secure_malloc_init+0x32b>
mov    $0x2,%ebx
jmp    d0d <CRYPTO_secure_malloc_init+0x2cd>
mov    0x0(%rip),%rsi        # d72 <CRYPTO_secure_malloc_init+0x332>
mov    0x0(%rip),%rdi        # d79 <CRYPTO_secure_malloc_init+0x339>
callq  d7e <CRYPTO_secure_malloc_init+0x33e>
test   %eax,%eax
jns    d0d <CRYPTO_secure_malloc_init+0x2cd>
jmp    d64 <CRYPTO_secure_malloc_init+0x324>
lea    0x0(%rip),%rsi        # d8b <CRYPTO_secure_malloc_init+0x34b>
lea    0x0(%rip),%rdi        # d92 <CRYPTO_secure_malloc_init+0x352>
mov    $0x17e,%edx
callq  d9c <CRYPTO_secure_malloc_init+0x35c>
lea    0x0(%rip),%rsi        # da3 <CRYPTO_secure_malloc_init+0x363>
lea    0x0(%rip),%rdi        # daa <CRYPTO_secure_malloc_init+0x36a>
mov    $0x17f,%edx
callq  db4 <CRYPTO_secure_malloc_init+0x374>
lea    0x0(%rip),%rsi        # dbb <CRYPTO_secure_malloc_init+0x37b>
lea    0x0(%rip),%rdi        # dc2 <CRYPTO_secure_malloc_init+0x382>
mov    $0x1ab,%edx
callq  dcc <CRYPTO_secure_malloc_init+0x38c>
lea    0x0(%rip),%rsi        # dd3 <CRYPTO_secure_malloc_init+0x393>
lea    0x0(%rip),%rdi        # dda <CRYPTO_secure_malloc_init+0x39a>
mov    $0x1a6,%edx
callq  de4 <CRYPTO_secure_malloc_init+0x3a4>
lea    0x0(%rip),%rsi        # deb <CRYPTO_secure_malloc_init+0x3ab>
lea    0x0(%rip),%rdi        # df2 <CRYPTO_secure_malloc_init+0x3b2>
mov    $0x1b0,%edx
callq  dfc <CRYPTO_secure_malloc_init+0x3bc>
lea    0x0(%rip),%rsi        # e03 <CRYPTO_secure_malloc_init+0x3c3>
lea    0x0(%rip),%rdi        # e0a <CRYPTO_secure_malloc_init+0x3ca>
mov    $0x194,%edx
callq  e14 <CRYPTO_secure_malloc_init+0x3d4>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000e20 <CRYPTO_secure_malloc_done>:
cmpq   $0x0,0x0(%rip)        # e28 <CRYPTO_secure_malloc_done+0x8>
je     e30 <CRYPTO_secure_malloc_done+0x10>
xor    %eax,%eax
retq   
nopl   (%rax)
sub    $0x8,%rsp
mov    0x0(%rip),%rdi        # e3b <CRYPTO_secure_malloc_done+0x1b>
lea    0x0(%rip),%rsi        # e42 <CRYPTO_secure_malloc_done+0x22>
mov    $0x202,%edx
callq  e4c <CRYPTO_secure_malloc_done+0x2c>
mov    0x0(%rip),%rdi        # e53 <CRYPTO_secure_malloc_done+0x33>
lea    0x0(%rip),%rsi        # e5a <CRYPTO_secure_malloc_done+0x3a>
mov    $0x203,%edx
callq  e64 <CRYPTO_secure_malloc_done+0x44>
mov    0x0(%rip),%rdi        # e6b <CRYPTO_secure_malloc_done+0x4b>
lea    0x0(%rip),%rsi        # e72 <CRYPTO_secure_malloc_done+0x52>
mov    $0x204,%edx
callq  e7c <CRYPTO_secure_malloc_done+0x5c>
mov    0x0(%rip),%rdi        # e83 <CRYPTO_secure_malloc_done+0x63>
test   %rdi,%rdi
je     e99 <CRYPTO_secure_malloc_done+0x79>
mov    0x0(%rip),%rsi        # e8f <CRYPTO_secure_malloc_done+0x6f>
test   %rsi,%rsi
je     e99 <CRYPTO_secure_malloc_done+0x79>
callq  e99 <CRYPTO_secure_malloc_done+0x79>
lea    0x0(%rip),%rdx        # ea0 <CRYPTO_secure_malloc_done+0x80>
xor    %eax,%eax
mov    $0xa,%ecx
movl   $0x0,0x0(%rip)        # eb1 <CRYPTO_secure_malloc_done+0x91>
mov    %rdx,%rdi
rep stos %rax,%es:(%rdi)
mov    0x0(%rip),%rdi        # ebe <CRYPTO_secure_malloc_done+0x9e>
callq  ec3 <CRYPTO_secure_malloc_done+0xa3>
movq   $0x0,0x0(%rip)        # ece <CRYPTO_secure_malloc_done+0xae>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000ee0 <CRYPTO_secure_malloc_initialized>:
mov    0x0(%rip),%eax        # ee6 <CRYPTO_secure_malloc_initialized+0x6>
retq   
nopw   0x0(%rax,%rax,1)

0000000000000ef0 <CRYPTO_secure_malloc>:
mov    0x0(%rip),%eax        # ef6 <CRYPTO_secure_malloc+0x6>
test   %eax,%eax
je     fd0 <CRYPTO_secure_malloc+0xe0>
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x28,%rsp
mov    0x0(%rip),%rdi        # f16 <CRYPTO_secure_malloc+0x26>
callq  f1b <CRYPTO_secure_malloc+0x2b>
mov    0x0(%rip),%r8        # f22 <CRYPTO_secure_malloc+0x32>
cmp    %r8,%rbx
ja     f9f <CRYPTO_secure_malloc+0xaf>
mov    0x0(%rip),%rdx        # f2e <CRYPTO_secure_malloc+0x3e>
lea    -0x1(%rdx),%rax
mov    %rax,%rcx
mov    %rax,0x8(%rsp)
mov    0x0(%rip),%rax        # f41 <CRYPTO_secure_malloc+0x51>
cmp    %rax,%rbx
jbe    f61 <CRYPTO_secure_malloc+0x71>
nopw   %cs:0x0(%rax,%rax,1)
add    %rax,%rax
sub    $0x1,%rcx
cmp    %rax,%rbx
ja     f50 <CRYPTO_secure_malloc+0x60>
mov    %rcx,0x8(%rsp)
mov    0x8(%rsp),%rax
test   %rax,%rax
js     f9f <CRYPTO_secure_malloc+0xaf>
lea    0x0(,%rax,8),%rbx
mov    0x0(%rip),%r9        # f7a <CRYPTO_secure_malloc+0x8a>
mov    %rax,%r14
mov    %rbx,0x18(%rsp)
nopw   0x0(%rax,%rax,1)
mov    (%r9,%rbx,1),%rbp
test   %rbp,%rbp
jne    fd8 <CRYPTO_secure_malloc+0xe8>
sub    $0x1,%r14
sub    $0x8,%rbx
cmp    $0xffffffffffffffff,%r14
jne    f88 <CRYPTO_secure_malloc+0x98>
xor    %ebx,%ebx
xor    %eax,%eax
mov    0x0(%rip),%rdi        # faa <CRYPTO_secure_malloc+0xba>
add    %rax,0x0(%rip)        # fb1 <CRYPTO_secure_malloc+0xc1>
callq  fb6 <CRYPTO_secure_malloc+0xc6>
add    $0x28,%rsp
mov    %rbx,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
jmpq   fd5 <CRYPTO_secure_malloc+0xe5>
nopl   (%rax)
cmp    0x8(%rsp),%r14
je     1347 <CRYPTO_secure_malloc+0x457>
test   %r14d,%r14d
mov    0x0(%rip),%rsi        # fed <CRYPTO_secure_malloc+0xfd>
mov    %r14d,%r15d
js     14bb <CRYPTO_secure_malloc+0x5cb>
movslq %r14d,%rax
cmp    %rax,%rdx
jle    14bb <CRYPTO_secure_malloc+0x5cb>
mov    %rbp,%r10
mov    %r14d,%ecx
sub    0x0(%rip),%r10        # 100f <CRYPTO_secure_malloc+0x11f>
shr    %cl,%r8
lea    -0x1(%r8),%rax
mov    %r8,%r11
test   %r10,%rax
jne    14d3 <CRYPTO_secure_malloc+0x5e3>
lea    0x8(,%r14,8),%r12
jmpq   12b2 <CRYPTO_secure_malloc+0x3c2>
nop
mov    0x8(%rax),%rax
mov    0x0(%rip),%rcx        # 103b <CRYPTO_secure_malloc+0x14b>
cmp    %rcx,%rax
jb     1050 <CRYPTO_secure_malloc+0x160>
mov    0x0(%rip),%rdx        # 1047 <CRYPTO_secure_malloc+0x157>
lea    (%rcx,%rdx,8),%rdx
cmp    %rdx,%rax
jb     1070 <CRYPTO_secure_malloc+0x180>
mov    0x0(%rip),%rdx        # 1057 <CRYPTO_secure_malloc+0x167>
cmp    %rdx,%rax
jb     14eb <CRYPTO_secure_malloc+0x5fb>
add    0x0(%rip),%rdx        # 1067 <CRYPTO_secure_malloc+0x177>
cmp    %rdx,%rax
jae    14eb <CRYPTO_secure_malloc+0x5fb>
cmp    %rbp,(%rcx,%rbx,1)
je     154b <CRYPTO_secure_malloc+0x65b>
add    $0x1,%r14
mov    0x0(%rip),%rdi        # 1085 <CRYPTO_secure_malloc+0x195>
test   %r14d,%r14d
mov    %r14d,%r15d
js     14bb <CRYPTO_secure_malloc+0x5cb>
movslq %r14d,%r13
cmp    0x0(%rip),%r13        # 109b <CRYPTO_secure_malloc+0x1ab>
jge    14bb <CRYPTO_secure_malloc+0x5cb>
mov    0x0(%rip),%rsi        # 10a8 <CRYPTO_secure_malloc+0x1b8>
mov    %rbp,%rax
mov    %r14d,%ecx
sub    0x0(%rip),%rax        # 10b5 <CRYPTO_secure_malloc+0x1c5>
shr    %cl,%rsi
lea    -0x1(%rsi),%rdx
test   %rax,%rdx
jne    14d3 <CRYPTO_secure_malloc+0x5e3>
xor    %edx,%edx
mov    $0x1,%ebx
div    %rsi
shl    %cl,%rbx
add    %rbx,%rax
mov    %rax,%rcx
je     14a3 <CRYPTO_secure_malloc+0x5b3>
cmp    0x0(%rip),%rax        # 10e5 <CRYPTO_secure_malloc+0x1f5>
jae    14a3 <CRYPTO_secure_malloc+0x5b3>
shr    $0x3,%rax
and    $0x7,%ecx
movzbl (%rdi,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    1563 <CRYPTO_secure_malloc+0x673>
mov    0x0(%rip),%rdx        # 110d <CRYPTO_secure_malloc+0x21d>
mov    %r14d,%esi
mov    %rbp,%rdi
callq  0 <sh_setbit>
mov    %r12,%rdi
add    0x0(%rip),%rdi        # 1122 <CRYPTO_secure_malloc+0x232>
mov    %rbp,%rsi
callq  e0 <sh_add_to_list>
mov    0x0(%rip),%rax        # 1131 <CRYPTO_secure_malloc+0x241>
cmp    %rbp,(%rax,%r12,1)
jne    157b <CRYPTO_secure_malloc+0x68b>
mov    0x0(%rip),%rsi        # 1142 <CRYPTO_secure_malloc+0x252>
mov    %r14d,%ecx
mov    %r14d,(%rsp)
mov    0x0(%rip),%rdi        # 1150 <CRYPTO_secure_malloc+0x260>
shr    %cl,%rsi
add    %rsi,%rbp
cmp    0x0(%rip),%r13        # 115d <CRYPTO_secure_malloc+0x26d>
jge    14bb <CRYPTO_secure_malloc+0x5cb>
mov    %rbp,%rax
sub    0x0(%rip),%rax        # 116d <CRYPTO_secure_malloc+0x27d>
lea    -0x1(%rsi),%rdx
test   %rax,%rdx
jne    14d3 <CRYPTO_secure_malloc+0x5e3>
xor    %edx,%edx
div    %rsi
add    %rbx,%rax
mov    %rax,%rcx
je     14a3 <CRYPTO_secure_malloc+0x5b3>
cmp    0x0(%rip),%rax        # 1192 <CRYPTO_secure_malloc+0x2a2>
jae    14a3 <CRYPTO_secure_malloc+0x5b3>
shr    $0x3,%rax
and    $0x7,%ecx
movzbl (%rdi,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    1593 <CRYPTO_secure_malloc+0x6a3>
mov    0x0(%rip),%rdx        # 11ba <CRYPTO_secure_malloc+0x2ca>
mov    %r14d,%esi
mov    %rbp,%rdi
callq  0 <sh_setbit>
mov    %r12,%rdi
add    0x0(%rip),%rdi        # 11cf <CRYPTO_secure_malloc+0x2df>
mov    %rbp,%rsi
callq  e0 <sh_add_to_list>
mov    0x0(%rip),%r9        # 11de <CRYPTO_secure_malloc+0x2ee>
cmp    (%r9,%r12,1),%rbp
jne    151b <CRYPTO_secure_malloc+0x62b>
movzbl (%rsp),%ecx
mov    0x0(%rip),%r8        # 11f3 <CRYPTO_secure_malloc+0x303>
mov    %rbp,%r10
mov    0x0(%rip),%rsi        # 11fd <CRYPTO_secure_malloc+0x30d>
mov    %rbp,%rdi
xor    %edx,%edx
mov    %r8,%rax
mov    %r8,%r11
shr    %cl,%rax
sub    %rsi,%r10
mov    %r14d,%ecx
sub    %rax,%rdi
shr    %cl,%r11
mov    %r10,%rax
div    %r11
mov    %rdi,(%rsp)
mov    0x0(%rip),%rdi        # 1228 <CRYPTO_secure_malloc+0x338>
mov    %rdi,0x10(%rsp)
add    %rbx,%rax
xor    $0x1,%rax
mov    %rax,%rcx
mov    %eax,%edx
shr    $0x3,%rcx
and    $0x7,%edx
movzbl (%rdi,%rcx,1),%edi
bt     %rdx,%rdi
jae    1340 <CRYPTO_secure_malloc+0x450>
mov    0x0(%rip),%rdi        # 1255 <CRYPTO_secure_malloc+0x365>
movzbl (%rdi,%rcx,1),%ecx
bt     %rdx,%rcx
jb     1340 <CRYPTO_secure_malloc+0x450>
sub    $0x1,%rbx
and    %rbx,%rax
imul   %r11,%rax
add    %rax,%rsi
cmp    %rsi,(%rsp)
jne    1533 <CRYPTO_secure_malloc+0x643>
cmp    0x8(%rsp),%r14
je     1358 <CRYPTO_secure_malloc+0x468>
cmp    %r13,0x0(%rip)        # 128d <CRYPTO_secure_malloc+0x39d>
mov    0x0(%rip),%rsi        # 1294 <CRYPTO_secure_malloc+0x3a4>
jle    14bb <CRYPTO_secure_malloc+0x5cb>
lea    -0x1(%r11),%rdx
lea    0x8(%r12),%rax
mov    %r12,%rbx
test   %r10,%rdx
jne    14d3 <CRYPTO_secure_malloc+0x5e3>
mov    %rax,%r12
mov    %r15d,%ecx
mov    $0x1,%eax
xor    %edx,%edx
shl    %cl,%rax
mov    %rax,%rcx
mov    %r10,%rax
div    %r11
add    %rax,%rcx
je     14a3 <CRYPTO_secure_malloc+0x5b3>
cmp    0x0(%rip),%rcx        # 12d8 <CRYPTO_secure_malloc+0x3e8>
jae    14a3 <CRYPTO_secure_malloc+0x5b3>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
movzbl (%rsi,%rax,1),%edx
mov    $0x1,%eax
shl    %cl,%rax
test   %eax,%edx
jne    1503 <CRYPTO_secure_malloc+0x613>
mov    0x0(%rip),%rdx        # 1303 <CRYPTO_secure_malloc+0x413>
mov    %r15d,%esi
mov    %rbp,%rdi
callq  1c0 <sh_clearbit>
mov    0x0(%rbp),%rax
test   %rax,%rax
je     131f <CRYPTO_secure_malloc+0x42f>
mov    0x8(%rbp),%rdx
mov    %rdx,0x8(%rax)
mov    0x8(%rbp),%rdx
mov    %rax,(%rdx)
mov    0x0(%rbp),%rax
test   %rax,%rax
jne    1030 <CRYPTO_secure_malloc+0x140>
mov    0x0(%rip),%rcx        # 133a <CRYPTO_secure_malloc+0x44a>
jmpq   1070 <CRYPTO_secure_malloc+0x180>
nop
xor    %esi,%esi
jmpq   1271 <CRYPTO_secure_malloc+0x381>
mov    0x0(%rip),%rax        # 134e <CRYPTO_secure_malloc+0x45e>
mov    %rax,0x10(%rsp)
nopl   0x0(%rax,%rax,1)
mov    0x18(%rsp),%rax
mov    (%r9,%rax,1),%rbx
mov    0x8(%rsp),%rax
test   %eax,%eax
mov    %eax,%ecx
js     14bb <CRYPTO_secure_malloc+0x5cb>
cltq   
cmp    0x0(%rip),%rax        # 1379 <CRYPTO_secure_malloc+0x489>
jge    14bb <CRYPTO_secure_malloc+0x5cb>
mov    %rbx,%rax
mov    %r8,%rsi
sub    0x0(%rip),%rax        # 138c <CRYPTO_secure_malloc+0x49c>
shr    %cl,%rsi
lea    -0x1(%rsi),%rdx
test   %rax,%rdx
jne    14d3 <CRYPTO_secure_malloc+0x5e3>
mov    $0x1,%edi
mov    %rdi,%rdx
shl    %cl,%rdx
mov    %rdx,%rcx
xor    %edx,%edx
div    %rsi
add    %rax,%rcx
je     14a3 <CRYPTO_secure_malloc+0x5b3>
cmp    0x0(%rip),%rcx        # 13bf <CRYPTO_secure_malloc+0x4cf>
jae    14a3 <CRYPTO_secure_malloc+0x5b3>
mov    0x10(%rsp),%rsi
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
shl    %cl,%rdi
movzbl (%rsi,%rax,1),%eax
test   %edi,%eax
je     15ab <CRYPTO_secure_malloc+0x6bb>
mov    0x0(%rip),%rdx        # 13ea <CRYPTO_secure_malloc+0x4fa>
mov    0x8(%rsp),%esi
mov    %rbx,%rdi
callq  0 <sh_setbit>
mov    (%rbx),%rax
test   %rax,%rax
je     1406 <CRYPTO_secure_malloc+0x516>
mov    0x8(%rbx),%rdx
mov    %rdx,0x8(%rax)
mov    0x8(%rbx),%rdx
mov    %rax,(%rdx)
mov    (%rbx),%rax
test   %rax,%rax
je     149a <CRYPTO_secure_malloc+0x5aa>
mov    0x8(%rax),%rdx
mov    0x0(%rip),%rax        # 1424 <CRYPTO_secure_malloc+0x534>
cmp    %rax,%rdx
jae    148a <CRYPTO_secure_malloc+0x59a>
mov    0x0(%rip),%rax        # 1430 <CRYPTO_secure_malloc+0x540>
cmp    %rax,%rdx
jb     15c3 <CRYPTO_secure_malloc+0x6d3>
mov    %rax,%rcx
add    0x0(%rip),%rcx        # 1443 <CRYPTO_secure_malloc+0x553>
cmp    %rcx,%rdx
jae    15c3 <CRYPTO_secure_malloc+0x6d3>
cmp    %rax,%rbx
jb     15c8 <CRYPTO_secure_malloc+0x6d8>
add    0x0(%rip),%rax        # 145c <CRYPTO_secure_malloc+0x56c>
cmp    %rax,%rbx
jae    15c8 <CRYPTO_secure_malloc+0x6d8>
test   %rbx,%rbx
movq   $0x0,(%rbx)
movq   $0x0,0x8(%rbx)
je     f9f <CRYPTO_secure_malloc+0xaf>
mov    %rbx,%rdi
callq  2b0 <sh_actual_size>
jmpq   fa3 <CRYPTO_secure_malloc+0xb3>
mov    0x0(%rip),%rcx        # 1491 <CRYPTO_secure_malloc+0x5a1>
lea    (%rax,%rcx,8),%rax
cmp    %rax,%rdx
jae    1429 <CRYPTO_secure_malloc+0x539>
mov    0x0(%rip),%rax        # 14a1 <CRYPTO_secure_malloc+0x5b1>
jmp    144c <CRYPTO_secure_malloc+0x55c>
lea    0x0(%rip),%rsi        # 14aa <CRYPTO_secure_malloc+0x5ba>
lea    0x0(%rip),%rdi        # 14b1 <CRYPTO_secure_malloc+0x5c1>
mov    $0x134,%edx
callq  14bb <CRYPTO_secure_malloc+0x5cb>
lea    0x0(%rip),%rsi        # 14c2 <CRYPTO_secure_malloc+0x5d2>
lea    0x0(%rip),%rdi        # 14c9 <CRYPTO_secure_malloc+0x5d9>
mov    $0x131,%edx
callq  14d3 <CRYPTO_secure_malloc+0x5e3>
lea    0x0(%rip),%rsi        # 14da <CRYPTO_secure_malloc+0x5ea>
lea    0x0(%rip),%rdi        # 14e1 <CRYPTO_secure_malloc+0x5f1>
mov    $0x132,%edx
callq  14eb <CRYPTO_secure_malloc+0x5fb>
lea    0x0(%rip),%rsi        # 14f2 <CRYPTO_secure_malloc+0x602>
lea    0x0(%rip),%rdi        # 14f9 <CRYPTO_secure_malloc+0x609>
mov    $0x170,%edx
callq  1503 <CRYPTO_secure_malloc+0x613>
lea    0x0(%rip),%rsi        # 150a <CRYPTO_secure_malloc+0x61a>
lea    0x0(%rip),%rdi        # 1511 <CRYPTO_secure_malloc+0x621>
mov    $0x238,%edx
callq  151b <CRYPTO_secure_malloc+0x62b>
lea    0x0(%rip),%rsi        # 1522 <CRYPTO_secure_malloc+0x632>
lea    0x0(%rip),%rdi        # 1529 <CRYPTO_secure_malloc+0x639>
mov    $0x24b,%edx
callq  1533 <CRYPTO_secure_malloc+0x643>
lea    0x0(%rip),%rsi        # 153a <CRYPTO_secure_malloc+0x64a>
lea    0x0(%rip),%rdi        # 1541 <CRYPTO_secure_malloc+0x651>
mov    $0x24d,%edx
callq  154b <CRYPTO_secure_malloc+0x65b>
lea    0x0(%rip),%rsi        # 1552 <CRYPTO_secure_malloc+0x662>
lea    0x0(%rip),%rdi        # 1559 <CRYPTO_secure_malloc+0x669>
mov    $0x23b,%edx
callq  1563 <CRYPTO_secure_malloc+0x673>
lea    0x0(%rip),%rsi        # 156a <CRYPTO_secure_malloc+0x67a>
lea    0x0(%rip),%rdi        # 1571 <CRYPTO_secure_malloc+0x681>
mov    $0x241,%edx
callq  157b <CRYPTO_secure_malloc+0x68b>
lea    0x0(%rip),%rsi        # 1582 <CRYPTO_secure_malloc+0x692>
lea    0x0(%rip),%rdi        # 1589 <CRYPTO_secure_malloc+0x699>
mov    $0x244,%edx
callq  1593 <CRYPTO_secure_malloc+0x6a3>
lea    0x0(%rip),%rsi        # 159a <CRYPTO_secure_malloc+0x6aa>
lea    0x0(%rip),%rdi        # 15a1 <CRYPTO_secure_malloc+0x6b1>
mov    $0x248,%edx
callq  15ab <CRYPTO_secure_malloc+0x6bb>
lea    0x0(%rip),%rsi        # 15b2 <CRYPTO_secure_malloc+0x6c2>
lea    0x0(%rip),%rdi        # 15b9 <CRYPTO_secure_malloc+0x6c9>
mov    $0x252,%edx
callq  15c3 <CRYPTO_secure_malloc+0x6d3>
callq  15c8 <CRYPTO_secure_malloc+0x6d8>
lea    0x0(%rip),%rsi        # 15cf <CRYPTO_secure_malloc+0x6df>
lea    0x0(%rip),%rdi        # 15d6 <CRYPTO_secure_malloc+0x6e6>
mov    $0x256,%edx
callq  15e0 <CRYPTO_secure_zalloc>

00000000000015e0 <CRYPTO_secure_zalloc>:
mov    0x0(%rip),%eax        # 15e6 <CRYPTO_secure_zalloc+0x6>
test   %eax,%eax
jne    15f0 <CRYPTO_secure_zalloc+0x10>
jmpq   15ef <CRYPTO_secure_zalloc+0xf>
nop
jmpq   15f5 <CRYPTO_secure_zalloc+0x15>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000001600 <CRYPTO_secure_allocated>:
push   %rbp
push   %rbx
sub    $0x8,%rsp
mov    0x0(%rip),%ebx        # 160c <CRYPTO_secure_allocated+0xc>
test   %ebx,%ebx
jne    1620 <CRYPTO_secure_allocated+0x20>
add    $0x8,%rsp
mov    %ebx,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
mov    %rdi,%rbp
mov    0x0(%rip),%rdi        # 162a <CRYPTO_secure_allocated+0x2a>
xor    %ebx,%ebx
callq  1631 <CRYPTO_secure_allocated+0x31>
mov    0x0(%rip),%rax        # 1638 <CRYPTO_secure_allocated+0x38>
cmp    %rax,%rbp
jb     164c <CRYPTO_secure_allocated+0x4c>
add    0x0(%rip),%rax        # 1644 <CRYPTO_secure_allocated+0x44>
xor    %ebx,%ebx
cmp    %rax,%rbp
setb   %bl
mov    0x0(%rip),%rdi        # 1653 <CRYPTO_secure_allocated+0x53>
callq  1658 <CRYPTO_secure_allocated+0x58>
add    $0x8,%rsp
mov    %ebx,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001670 <CRYPTO_secure_free>:
test   %rdi,%rdi
je     1708 <CRYPTO_secure_free+0x98>
push   %r12
push   %rbp
mov    %edx,%r12d
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
callq  168b <CRYPTO_secure_free+0x1b>
test   %eax,%eax
je     16f0 <CRYPTO_secure_free+0x80>
mov    0x0(%rip),%rdi        # 1696 <CRYPTO_secure_free+0x26>
callq  169b <CRYPTO_secure_free+0x2b>
mov    %rbx,%rdi
callq  2b0 <sh_actual_size>
mov    %rbx,%rdi
mov    %rax,%rsi
mov    %rax,%rbp
callq  16b1 <CRYPTO_secure_free+0x41>
mov    0x0(%rip),%rax        # 16b8 <CRYPTO_secure_free+0x48>
sub    %rbp,0x0(%rip)        # 16bf <CRYPTO_secure_free+0x4f>
cmp    %rax,%rbx
jb     170a <CRYPTO_secure_free+0x9a>
add    0x0(%rip),%rax        # 16cb <CRYPTO_secure_free+0x5b>
cmp    %rax,%rbx
jae    170a <CRYPTO_secure_free+0x9a>
mov    %rbx,%rdi
callq  450 <sh_free.part.4>
pop    %rbx
pop    %rbp
pop    %r12
mov    0x0(%rip),%rdi        # 16e3 <CRYPTO_secure_free+0x73>
jmpq   16e8 <CRYPTO_secure_free+0x78>
nopl   0x0(%rax,%rax,1)
mov    %r12d,%edx
mov    %rbp,%rsi
mov    %rbx,%rdi
pop    %rbx
pop    %rbp
pop    %r12
jmpq   1702 <CRYPTO_secure_free+0x92>
nopw   0x0(%rax,%rax,1)
repz retq 
lea    0x0(%rip),%rsi        # 1711 <CRYPTO_secure_free+0xa1>
lea    0x0(%rip),%rdi        # 1718 <CRYPTO_secure_free+0xa8>
mov    $0x265,%edx
callq  1722 <CRYPTO_secure_free+0xb2>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001730 <CRYPTO_secure_clear_free>:
test   %rdi,%rdi
je     17e8 <CRYPTO_secure_clear_free+0xb8>
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %ecx,%r12d
mov    %rsi,%rbp
mov    %rdi,%rbx
sub    $0x8,%rsp
callq  1754 <CRYPTO_secure_clear_free+0x24>
test   %eax,%eax
je     17c0 <CRYPTO_secure_clear_free+0x90>
mov    0x0(%rip),%rdi        # 175f <CRYPTO_secure_clear_free+0x2f>
callq  1764 <CRYPTO_secure_clear_free+0x34>
mov    %rbx,%rdi
callq  2b0 <sh_actual_size>
mov    %rbx,%rdi
mov    %rax,%rsi
mov    %rax,%rbp
callq  177a <CRYPTO_secure_clear_free+0x4a>
mov    0x0(%rip),%rax        # 1781 <CRYPTO_secure_clear_free+0x51>
sub    %rbp,0x0(%rip)        # 1788 <CRYPTO_secure_clear_free+0x58>
cmp    %rax,%rbx
jb     17ea <CRYPTO_secure_clear_free+0xba>
add    0x0(%rip),%rax        # 1794 <CRYPTO_secure_clear_free+0x64>
cmp    %rax,%rbx
jae    17ea <CRYPTO_secure_clear_free+0xba>
mov    %rbx,%rdi
callq  450 <sh_free.part.4>
mov    0x0(%rip),%rdi        # 17a8 <CRYPTO_secure_clear_free+0x78>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
jmpq   17b7 <CRYPTO_secure_clear_free+0x87>
nopw   0x0(%rax,%rax,1)
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  17cb <CRYPTO_secure_clear_free+0x9b>
add    $0x8,%rsp
mov    %r12d,%edx
mov    %r13,%rsi
mov    %rbx,%rdi
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
jmpq   17e3 <CRYPTO_secure_clear_free+0xb3>
nopl   0x0(%rax,%rax,1)
repz retq 
lea    0x0(%rip),%rsi        # 17f1 <CRYPTO_secure_clear_free+0xc1>
lea    0x0(%rip),%rdi        # 17f8 <CRYPTO_secure_clear_free+0xc8>
mov    $0x265,%edx
callq  1802 <CRYPTO_secure_clear_free+0xd2>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001810 <CRYPTO_secure_used>:
mov    0x0(%rip),%rax        # 1817 <CRYPTO_secure_used+0x7>
retq   
nopl   0x0(%rax,%rax,1)

0000000000001820 <CRYPTO_secure_actual_size>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
sub    $0x8,%rsp
mov    0x0(%rip),%rdi        # 1830 <CRYPTO_secure_actual_size+0x10>
callq  1835 <CRYPTO_secure_actual_size+0x15>
mov    0x0(%rip),%r9        # 183c <CRYPTO_secure_actual_size+0x1c>
cmp    %r9,%rbx
jb     1975 <CRYPTO_secure_actual_size+0x155>
mov    0x0(%rip),%r8        # 184c <CRYPTO_secure_actual_size+0x2c>
lea    (%r9,%r8,1),%rax
cmp    %rax,%rbx
jae    1975 <CRYPTO_secure_actual_size+0x155>
lea    (%rbx,%r8,1),%rax
xor    %edx,%edx
mov    0x0(%rip),%r10        # 1866 <CRYPTO_secure_actual_size+0x46>
mov    0x0(%rip),%r11        # 186d <CRYPTO_secure_actual_size+0x4d>
sub    %r9,%rax
divq   0x0(%rip)        # 1877 <CRYPTO_secure_actual_size+0x57>
lea    -0x1(%r10),%rsi
test   %rax,%rax
je     18a0 <CRYPTO_secure_actual_size+0x80>
mov    %rax,%rdx
shr    $0x3,%rdx
movzbl (%r11,%rdx,1),%ecx
mov    %eax,%edx
and    $0x7,%edx
bt     %rdx,%rcx
jae    194b <CRYPTO_secure_actual_size+0x12b>
nopl   0x0(%rax,%rax,1)
test   %esi,%esi
mov    %esi,%ecx
js     19d5 <CRYPTO_secure_actual_size+0x1b5>
movslq %esi,%rsi
cmp    %r10,%rsi
jge    19d5 <CRYPTO_secure_actual_size+0x1b5>
shr    %cl,%r8
mov    %rbx,%rax
lea    -0x1(%r8),%rdx
sub    %r9,%rax
mov    %r8,%rbp
test   %rax,%rdx
jne    198d <CRYPTO_secure_actual_size+0x16d>
mov    $0x1,%esi
mov    %rsi,%rdx
shl    %cl,%rdx
mov    %rdx,%rcx
xor    %edx,%edx
div    %r8
add    %rax,%rcx
je     19bd <CRYPTO_secure_actual_size+0x19d>
cmp    0x0(%rip),%rcx        # 18f2 <CRYPTO_secure_actual_size+0xd2>
jae    19bd <CRYPTO_secure_actual_size+0x19d>
mov    %rcx,%rax
and    $0x7,%ecx
shr    $0x3,%rax
shl    %cl,%rsi
movzbl (%r11,%rax,1),%eax
test   %esi,%eax
je     19a5 <CRYPTO_secure_actual_size+0x185>
mov    0x0(%rip),%rdi        # 1919 <CRYPTO_secure_actual_size+0xf9>
callq  191e <CRYPTO_secure_actual_size+0xfe>
add    $0x8,%rsp
mov    %rbp,%rax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
mov    %rax,%rcx
shr    $0x3,%rcx
movzbl (%r11,%rcx,1),%edi
mov    %eax,%ecx
and    $0x7,%ecx
bt     %rcx,%rdi
jb     18a0 <CRYPTO_secure_actual_size+0x80>
test   $0x1,%al
jne    195d <CRYPTO_secure_actual_size+0x13d>
sub    $0x1,%rsi
shr    %rax
jne    1930 <CRYPTO_secure_actual_size+0x110>
jmpq   18a0 <CRYPTO_secure_actual_size+0x80>
lea    0x0(%rip),%rsi        # 1964 <CRYPTO_secure_actual_size+0x144>
lea    0x0(%rip),%rdi        # 196b <CRYPTO_secure_actual_size+0x14b>
mov    $0x126,%edx
callq  1975 <CRYPTO_secure_actual_size+0x155>
lea    0x0(%rip),%rsi        # 197c <CRYPTO_secure_actual_size+0x15c>
lea    0x0(%rip),%rdi        # 1983 <CRYPTO_secure_actual_size+0x163>
mov    $0x28b,%edx
callq  198d <CRYPTO_secure_actual_size+0x16d>
lea    0x0(%rip),%rsi        # 1994 <CRYPTO_secure_actual_size+0x174>
lea    0x0(%rip),%rdi        # 199b <CRYPTO_secure_actual_size+0x17b>
mov    $0x132,%edx
callq  19a5 <CRYPTO_secure_actual_size+0x185>
lea    0x0(%rip),%rsi        # 19ac <CRYPTO_secure_actual_size+0x18c>
lea    0x0(%rip),%rdi        # 19b3 <CRYPTO_secure_actual_size+0x193>
mov    $0x28f,%edx
callq  19bd <CRYPTO_secure_actual_size+0x19d>
lea    0x0(%rip),%rsi        # 19c4 <CRYPTO_secure_actual_size+0x1a4>
lea    0x0(%rip),%rdi        # 19cb <CRYPTO_secure_actual_size+0x1ab>
mov    $0x134,%edx
callq  19d5 <CRYPTO_secure_actual_size+0x1b5>
lea    0x0(%rip),%rsi        # 19dc <CRYPTO_secure_actual_size+0x1bc>
lea    0x0(%rip),%rdi        # 19e3 <CRYPTO_secure_actual_size+0x1c3>
mov    $0x131,%edx
callq  19ed <CRYPTO_secure_actual_size+0x1cd>

Disassembly of section .text.unlikely:

0000000000000000 <sh_remove_from_list.part.1>:
lea    0x0(%rip),%rsi        # 7 <sh_remove_from_list.part.1+0x7>
push   %rax
lea    0x0(%rip),%rdi        # f <sh_remove_from_list.part.1+0xf>
mov    $0x170,%edx
callq  19 <.LC19+0x8>
