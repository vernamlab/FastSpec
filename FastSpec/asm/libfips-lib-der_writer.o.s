
openssl_crypto_dump/libfips-lib-der_writer.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <DER_w_precompiled>:
push   %r12
push   %rbp
mov    %rdx,%r12
push   %rbx
mov    %rdi,%rbp
sub    $0x30,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
test   %esi,%esi
js     e0 <DER_w_precompiled+0xe0>
cmp    $0x1e,%esi
mov    %esi,%ebx
jle    50 <DER_w_precompiled+0x50>
xor    %eax,%eax
mov    0x28(%rsp),%rdx
xor    %fs:0x28,%rdx
jne    f5 <DER_w_precompiled+0xf5>
add    $0x30,%rsp
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
mov    %rcx,0x8(%rsp)
callq  5a <DER_w_precompiled+0x5a>
test   %eax,%eax
mov    0x8(%rsp),%rcx
je     2d <DER_w_precompiled+0x2d>
mov    %rcx,%rdx
mov    %r12,%rsi
mov    %rbp,%rdi
callq  71 <DER_w_precompiled+0x71>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
lea    0x18(%rsp),%rsi
mov    %rbp,%rdi
callq  82 <DER_w_precompiled+0x82>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
mov    %rbp,%rdi
callq  8e <DER_w_precompiled+0x8e>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
lea    0x20(%rsp),%rsi
mov    %rbp,%rdi
callq  9f <DER_w_precompiled+0x9f>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
mov    0x20(%rsp),%rax
cmp    %rax,0x18(%rsp)
je     d0 <DER_w_precompiled+0xd0>
mov    %ebx,%esi
mov    $0x1,%edx
mov    %rbp,%rdi
or     $0x80,%sil
callq  c2 <DER_w_precompiled+0xc2>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmpq   2f <DER_w_precompiled+0x2f>
nopw   0x0(%rax,%rax,1)
mov    %rcx,%rdx
mov    %r12,%rsi
callq  eb <DER_w_precompiled+0xeb>
test   %eax,%eax
je     2d <DER_w_precompiled+0x2d>
jmp    d0 <DER_w_precompiled+0xd0>
callq  fa <DER_w_precompiled+0xfa>
nopw   0x0(%rax,%rax,1)

0000000000000100 <DER_w_boolean>:
push   %r12
push   %rbp
mov    %rdi,%r12
push   %rbx
mov    %edx,%ebp
mov    %esi,%ebx
sub    $0x20,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
test   %esi,%esi
js     159 <DER_w_boolean+0x59>
cmp    $0x1e,%esi
jle    150 <DER_w_boolean+0x50>
xor    %ebp,%ebp
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    %ebp,%eax
jne    227 <DER_w_boolean+0x127>
add    $0x20,%rsp
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
callq  155 <DER_w_boolean+0x55>
test   %eax,%eax
je     128 <DER_w_boolean+0x28>
mov    %r12,%rdi
callq  161 <DER_w_boolean+0x61>
test   %eax,%eax
je     128 <DER_w_boolean+0x28>
test   %ebp,%ebp
jne    208 <DER_w_boolean+0x108>
mov    %r12,%rdi
callq  175 <DER_w_boolean+0x75>
test   %eax,%eax
jne    128 <DER_w_boolean+0x28>
mov    $0x1,%edx
mov    $0x1,%esi
mov    %r12,%rdi
callq  18b <DER_w_boolean+0x8b>
test   %eax,%eax
mov    %eax,%ebp
jne    128 <DER_w_boolean+0x28>
test   %ebx,%ebx
js     1fb <DER_w_boolean+0xfb>
cmp    $0x1e,%ebx
jg     12a <DER_w_boolean+0x2a>
lea    0x8(%rsp),%rsi
mov    %r12,%rdi
callq  1a7 <DER_w_boolean+0xa7>
test   %eax,%eax
je     12a <DER_w_boolean+0x2a>
mov    %r12,%rdi
callq  1b7 <DER_w_boolean+0xb7>
test   %eax,%eax
je     12a <DER_w_boolean+0x2a>
lea    0x10(%rsp),%rsi
mov    %r12,%rdi
callq  1cc <DER_w_boolean+0xcc>
test   %eax,%eax
je     12a <DER_w_boolean+0x2a>
mov    0x10(%rsp),%rax
cmp    %rax,0x8(%rsp)
je     1fb <DER_w_boolean+0xfb>
mov    %ebx,%esi
mov    $0x1,%edx
mov    %r12,%rdi
or     $0x80,%sil
callq  1f3 <DER_w_boolean+0xf3>
test   %eax,%eax
je     12a <DER_w_boolean+0x2a>
mov    $0x1,%ebp
jmpq   12a <DER_w_boolean+0x2a>
nopl   (%rax)
mov    $0x1,%edx
mov    $0xff,%esi
mov    %r12,%rdi
callq  21a <DER_w_boolean+0x11a>
test   %eax,%eax
jne    16d <DER_w_boolean+0x6d>
jmpq   128 <DER_w_boolean+0x28>
callq  22c <DER_w_boolean+0x12c>
nopl   0x0(%rax)

0000000000000230 <DER_w_ulong>:
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %rdi,%rbp
mov    %esi,%ebx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
test   %esi,%esi
js     289 <DER_w_ulong+0x59>
cmp    $0x1e,%esi
jle    280 <DER_w_ulong+0x50>
xor    %eax,%eax
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    38d <DER_w_ulong+0x15d>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
callq  285 <DER_w_ulong+0x55>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    %rbp,%rdi
callq  291 <DER_w_ulong+0x61>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
test   %r13,%r13
je     2d4 <DER_w_ulong+0xa4>
mov    %r13,%rax
xor    %edx,%edx
nop
mov    %eax,%r12d
shr    $0x8,%rax
add    $0x1,%rdx
test   %rax,%rax
jne    2a0 <DER_w_ulong+0x70>
test   %rdx,%rdx
mov    $0x1,%eax
mov    %r13d,%esi
cmove  %rax,%rdx
mov    %rbp,%rdi
callq  2c7 <DER_w_ulong+0x97>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
and    $0x80,%r12d
je     2eb <DER_w_ulong+0xbb>
xor    %esi,%esi
mov    $0x1,%edx
mov    %rbp,%rdi
callq  2e3 <DER_w_ulong+0xb3>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    %rbp,%rdi
callq  2f3 <DER_w_ulong+0xc3>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    $0x1,%edx
mov    $0x2,%esi
mov    %rbp,%rdi
callq  30d <DER_w_ulong+0xdd>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
test   %ebx,%ebx
js     383 <DER_w_ulong+0x153>
cmp    $0x1e,%ebx
jg     25b <DER_w_ulong+0x2b>
lea    0x8(%rsp),%rsi
mov    %rbp,%rdi
callq  32f <DER_w_ulong+0xff>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    %rbp,%rdi
callq  33f <DER_w_ulong+0x10f>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
lea    0x10(%rsp),%rsi
mov    %rbp,%rdi
callq  354 <DER_w_ulong+0x124>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    0x10(%rsp),%rax
cmp    %rax,0x8(%rsp)
je     383 <DER_w_ulong+0x153>
mov    %ebx,%esi
mov    $0x1,%edx
mov    %rbp,%rdi
or     $0x80,%sil
callq  37b <DER_w_ulong+0x14b>
test   %eax,%eax
je     25b <DER_w_ulong+0x2b>
mov    $0x1,%eax
jmpq   25d <DER_w_ulong+0x2d>
callq  392 <DER_w_ulong+0x162>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003a0 <DER_w_bn>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x38,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
test   %rdx,%rdx
je     3d7 <DER_w_bn+0x37>
mov    %rdi,%r12
mov    %rdx,%rdi
mov    %esi,%ebp
mov    %rdx,%rbx
callq  3d3 <DER_w_bn+0x33>
test   %eax,%eax
je     400 <DER_w_bn+0x60>
xor    %eax,%eax
mov    0x28(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    581 <DER_w_bn+0x1e1>
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
callq  408 <DER_w_bn+0x68>
test   %eax,%eax
jne    570 <DER_w_bn+0x1d0>
test   %ebp,%ebp
js     425 <DER_w_bn+0x85>
cmp    $0x1e,%ebp
jg     3d7 <DER_w_bn+0x37>
mov    %r12,%rdi
callq  421 <DER_w_bn+0x81>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    %r12,%rdi
callq  42d <DER_w_bn+0x8d>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    %rbx,%rdi
movq   $0x0,0x20(%rsp)
lea    0x20(%rsp),%r15
callq  447 <DER_w_bn+0xa7>
lea    0xe(%rax),%edx
add    $0x7,%eax
mov    %rbx,%rdi
mov    %eax,%esi
cmovs  %edx,%esi
sar    $0x3,%esi
movslq %esi,%rsi
mov    %rsi,0x8(%rsp)
callq  465 <DER_w_bn+0xc5>
mov    0x8(%rsp),%rsi
mov    %r12,%rdi
lea    -0x1(%rsi),%r13
mov    %r13,%rdx
shr    $0x3,%rdx
mov    (%rax,%rdx,8),%r14
mov    %r15,%rdx
callq  484 <DER_w_bn+0xe4>
test   %eax,%eax
je     3d9 <DER_w_bn+0x39>
mov    0x20(%rsp),%rsi
test   %rsi,%rsi
je     49e <DER_w_bn+0xfe>
mov    %rbx,%rdi
callq  49e <DER_w_bn+0xfe>
and    $0x7,%r13d
lea    0x0(,%r13,8),%ecx
shr    %cl,%r14
and    $0x80,%r14d
je     4cd <DER_w_bn+0x12d>
xor    %esi,%esi
mov    $0x1,%edx
mov    %r12,%rdi
callq  4c5 <DER_w_bn+0x125>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    %r12,%rdi
callq  4d5 <DER_w_bn+0x135>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    $0x1,%edx
mov    $0x2,%esi
mov    %r12,%rdi
callq  4ef <DER_w_bn+0x14f>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
test   %ebp,%ebp
js     563 <DER_w_bn+0x1c3>
cmp    $0x1e,%ebp
jg     3d7 <DER_w_bn+0x37>
lea    0x18(%rsp),%rsi
mov    %r12,%rdi
callq  511 <DER_w_bn+0x171>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    %r12,%rdi
callq  521 <DER_w_bn+0x181>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    %r15,%rsi
mov    %r12,%rdi
callq  534 <DER_w_bn+0x194>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    0x20(%rsp),%rax
cmp    %rax,0x18(%rsp)
je     563 <DER_w_bn+0x1c3>
mov    %ebp,%esi
mov    $0x1,%edx
mov    %r12,%rdi
or     $0x80,%sil
callq  55b <DER_w_bn+0x1bb>
test   %eax,%eax
je     3d7 <DER_w_bn+0x37>
mov    $0x1,%eax
jmpq   3d9 <DER_w_bn+0x39>
nopl   (%rax)
xor    %edx,%edx
mov    %ebp,%esi
mov    %r12,%rdi
callq  57c <DER_w_bn+0x1dc>
jmpq   3d9 <DER_w_bn+0x39>
callq  586 <DER_w_bn+0x1e6>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000590 <DER_w_null>:
push   %rbp
push   %rbx
mov    %rdi,%rbp
mov    %esi,%ebx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
test   %esi,%esi
js     5e1 <DER_w_null+0x51>
cmp    $0x1e,%esi
jle    5d8 <DER_w_null+0x48>
xor    %eax,%eax
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    67f <DER_w_null+0xef>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
callq  5dd <DER_w_null+0x4d>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    %rbp,%rdi
callq  5e9 <DER_w_null+0x59>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    %rbp,%rdi
callq  5f5 <DER_w_null+0x65>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    $0x1,%edx
mov    $0x5,%esi
mov    %rbp,%rdi
callq  60b <DER_w_null+0x7b>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
test   %ebx,%ebx
js     675 <DER_w_null+0xe5>
cmp    $0x1e,%ebx
jg     5b4 <DER_w_null+0x24>
lea    0x8(%rsp),%rsi
mov    %rbp,%rdi
callq  625 <DER_w_null+0x95>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    %rbp,%rdi
callq  631 <DER_w_null+0xa1>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
lea    0x10(%rsp),%rsi
mov    %rbp,%rdi
callq  646 <DER_w_null+0xb6>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    0x10(%rsp),%rax
cmp    %rax,0x8(%rsp)
je     675 <DER_w_null+0xe5>
mov    %ebx,%esi
mov    $0x1,%edx
mov    %rbp,%rdi
or     $0x80,%sil
callq  66d <DER_w_null+0xdd>
test   %eax,%eax
je     5b4 <DER_w_null+0x24>
mov    $0x1,%eax
jmpq   5b6 <DER_w_null+0x26>
callq  684 <DER_w_null+0xf4>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000690 <DER_w_begin_sequence>:
test   %esi,%esi
push   %rbx
mov    %rdi,%rbx
js     6b1 <DER_w_begin_sequence+0x21>
cmp    $0x1e,%esi
jle    6a8 <DER_w_begin_sequence+0x18>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax)
callq  6ad <DER_w_begin_sequence+0x1d>
test   %eax,%eax
je     69d <DER_w_begin_sequence+0xd>
mov    %rbx,%rdi
callq  6b9 <DER_w_begin_sequence+0x29>
test   %eax,%eax
setne  %al
movzbl %al,%eax
pop    %rbx
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000006d0 <DER_w_end_sequence>:
push   %rbp
push   %rbx
mov    %esi,%ebp
mov    %rdi,%rbx
sub    $0x38,%rsp
lea    0x8(%rsp),%rsi
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
callq  6f5 <DER_w_end_sequence+0x25>
test   %eax,%eax
jne    720 <DER_w_end_sequence+0x50>
xor    %eax,%eax
mov    0x28(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    7fa <DER_w_end_sequence+0x12a>
add    $0x38,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    %rbx,%rdi
callq  728 <DER_w_end_sequence+0x58>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
lea    0x10(%rsp),%rsi
mov    %rbx,%rdi
callq  739 <DER_w_end_sequence+0x69>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
mov    0x10(%rsp),%rax
cmp    %rax,0x8(%rsp)
je     7e0 <DER_w_end_sequence+0x110>
mov    $0x1,%edx
mov    $0x30,%esi
mov    %rbx,%rdi
callq  75f <DER_w_end_sequence+0x8f>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
test   %ebp,%ebp
js     7d0 <DER_w_end_sequence+0x100>
cmp    $0x1e,%ebp
jg     6f9 <DER_w_end_sequence+0x29>
lea    0x18(%rsp),%rsi
mov    %rbx,%rdi
callq  779 <DER_w_end_sequence+0xa9>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
mov    %rbx,%rdi
callq  789 <DER_w_end_sequence+0xb9>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
lea    0x20(%rsp),%rsi
mov    %rbx,%rdi
callq  79e <DER_w_end_sequence+0xce>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
mov    0x20(%rsp),%rax
cmp    %rax,0x18(%rsp)
je     7d0 <DER_w_end_sequence+0x100>
mov    %ebp,%esi
mov    $0x1,%edx
mov    %rbx,%rdi
or     $0x80,%sil
callq  7c5 <DER_w_end_sequence+0xf5>
test   %eax,%eax
je     6f9 <DER_w_end_sequence+0x29>
nopl   (%rax)
mov    $0x1,%eax
jmpq   6fb <DER_w_end_sequence+0x2b>
nopw   0x0(%rax,%rax,1)
mov    $0x2,%esi
mov    %rbx,%rdi
callq  7ed <DER_w_end_sequence+0x11d>
test   %eax,%eax
jne    763 <DER_w_end_sequence+0x93>
jmpq   6f9 <DER_w_end_sequence+0x29>
callq  7ff <DER_w_end_sequence+0x12f>
