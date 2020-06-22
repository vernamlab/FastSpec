
openssl_crypto_dump/libfips-lib-asn1_dsa.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <encode_der_length>:
cmp    $0xffff,%rsi
ja     58 <encode_der_length+0x58>
push   %rbp
push   %rbx
mov    %rdi,%rbp
mov    %rsi,%rbx
sub    $0x8,%rsp
cmp    $0xff,%rsi
ja     60 <encode_der_length+0x60>
cmp    $0x7f,%rsi
jbe    37 <encode_der_length+0x37>
mov    $0x1,%edx
mov    $0x81,%esi
callq  33 <encode_der_length+0x33>
test   %eax,%eax
je     78 <encode_der_length+0x78>
mov    $0x1,%edx
mov    %ebx,%esi
mov    %rbp,%rdi
callq  46 <encode_der_length+0x46>
test   %eax,%eax
setne  %al
add    $0x8,%rsp
movzbl %al,%eax
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    $0x1,%edx
mov    $0x82,%esi
callq  6f <encode_der_length+0x6f>
test   %eax,%eax
mov    $0x2,%edx
jne    3c <encode_der_length+0x3c>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000090 <encode_der_integer>:
push   %r14
push   %r13
push   %r12
push   %rbp
mov    %rdi,%r12
push   %rbx
mov    %rsi,%rdi
mov    %rsi,%rbp
xor    %ebx,%ebx
sub    $0x10,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
callq  bc <encode_der_integer+0x2c>
test   %eax,%eax
je     e8 <encode_der_integer+0x58>
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    %ebx,%eax
jne    18c <encode_der_integer+0xfc>
add    $0x10,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    %rbp,%rdi
mov    %eax,%ebx
callq  f2 <encode_der_integer+0x62>
mov    %r12,%rdi
mov    %eax,%r13d
callq  fd <encode_der_integer+0x6d>
test   %eax,%eax
je     c0 <encode_der_integer+0x30>
mov    $0x1,%edx
mov    $0x2,%esi
mov    %r12,%rdi
callq  113 <encode_der_integer+0x83>
test   %eax,%eax
je     c0 <encode_der_integer+0x30>
lea    0x7(%r13),%eax
test   %r13d,%r13d
mov    %r12,%rdi
cmovs  %eax,%r13d
sar    $0x3,%r13d
add    $0x1,%r13d
movslq %r13d,%r14
mov    %r14,%rsi
callq  138 <encode_der_integer+0xa8>
test   %eax,%eax
je     c0 <encode_der_integer+0x30>
mov    %rsp,%rdx
mov    %r14,%rsi
mov    %r12,%rdi
callq  14a <encode_der_integer+0xba>
test   %eax,%eax
je     c0 <encode_der_integer+0x30>
mov    %r12,%rdi
callq  15a <encode_der_integer+0xca>
test   %eax,%eax
je     c0 <encode_der_integer+0x30>
mov    (%rsp),%rsi
mov    $0x1,%ebx
test   %rsi,%rsi
je     c0 <encode_der_integer+0x30>
mov    %r13d,%edx
mov    %rbp,%rdi
xor    %ebx,%ebx
callq  181 <encode_der_integer+0xf1>
cmp    %eax,%r13d
sete   %bl
jmpq   c0 <encode_der_integer+0x30>
callq  191 <encode_der_integer+0x101>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

00000000000001a0 <encode_der_dsa_sig>:
push   %r14
push   %r13
mov    %rdx,%r14
push   %r12
push   %rbp
mov    %rsi,%r12
push   %rbx
mov    %rdi,%rbx
sub    $0x50,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x48(%rsp)
xor    %eax,%eax
callq  1ca <encode_der_dsa_sig+0x2a>
mov    %rbx,%rdi
mov    %eax,%ebp
callq  1d4 <encode_der_dsa_sig+0x34>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
test   %ebp,%ebp
jne    238 <encode_der_dsa_sig+0x98>
lea    0x10(%rsp),%r13
xor    %esi,%esi
mov    %r13,%rdi
callq  1eb <encode_der_dsa_sig+0x4b>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
mov    %r12,%rsi
mov    %r13,%rdi
callq  1fa <encode_der_dsa_sig+0x5a>
test   %eax,%eax
jne    260 <encode_der_dsa_sig+0xc0>
mov    %r13,%rdi
callq  206 <encode_der_dsa_sig+0x66>
nopw   %cs:0x0(%rax,%rax,1)
xor    %eax,%eax
mov    0x48(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    317 <encode_der_dsa_sig+0x177>
add    $0x50,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rsi
mov    %rbx,%rdi
callq  243 <encode_der_dsa_sig+0xa3>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
mov    %r14,%rsi
mov    %rbx,%rdi
callq  252 <encode_der_dsa_sig+0xb2>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
mov    %rbx,%r13
jmp    26f <encode_der_dsa_sig+0xcf>
nopl   0x0(%rax,%rax,1)
mov    %r14,%rsi
mov    %r13,%rdi
callq  26b <encode_der_dsa_sig+0xcb>
test   %eax,%eax
je     1fe <encode_der_dsa_sig+0x5e>
lea    0x8(%rsp),%rsi
mov    %r13,%rdi
callq  27c <encode_der_dsa_sig+0xdc>
test   %eax,%eax
je     2e0 <encode_der_dsa_sig+0x140>
test   %ebp,%ebp
jne    294 <encode_der_dsa_sig+0xf4>
mov    %r13,%rdi
callq  28c <encode_der_dsa_sig+0xec>
test   %eax,%eax
je     1fe <encode_der_dsa_sig+0x5e>
mov    $0x1,%edx
mov    $0x30,%esi
mov    %rbx,%rdi
callq  2a6 <encode_der_dsa_sig+0x106>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
mov    0x8(%rsp),%rsi
mov    %rbx,%rdi
callq  2bb <encode_der_dsa_sig+0x11b>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
test   %ebp,%ebp
je     2f0 <encode_der_dsa_sig+0x150>
mov    %rbx,%rdi
callq  2cf <encode_der_dsa_sig+0x12f>
test   %eax,%eax
setne  %al
movzbl %al,%eax
jmpq   212 <encode_der_dsa_sig+0x72>
nopl   0x0(%rax)
test   %ebp,%ebp
jne    210 <encode_der_dsa_sig+0x70>
jmpq   1fe <encode_der_dsa_sig+0x5e>
nopl   (%rax)
mov    %r12,%rsi
mov    %rbx,%rdi
callq  2fb <encode_der_dsa_sig+0x15b>
test   %eax,%eax
je     210 <encode_der_dsa_sig+0x70>
mov    %r14,%rsi
mov    %rbx,%rdi
callq  30e <encode_der_dsa_sig+0x16e>
test   %eax,%eax
jne    2c7 <encode_der_dsa_sig+0x127>
jmpq   210 <encode_der_dsa_sig+0x70>
callq  31c <encode_der_dsa_sig+0x17c>
nopl   0x0(%rax)

0000000000000320 <decode_der_length>:
mov    0x8(%rdi),%rax
test   %rax,%rax
je     357 <decode_der_length+0x37>
mov    (%rdi),%rcx
lea    -0x1(%rax),%r9
movzbl (%rcx),%r8d
lea    0x1(%rcx),%r10
mov    %r9,0x8(%rdi)
mov    %r10,(%rdi)
cmp    $0x7f,%r8d
jbe    360 <decode_der_length+0x40>
cmp    $0x81,%r8d
je     3c0 <decode_der_length+0xa0>
cmp    $0x82,%r8d
je     380 <decode_der_length+0x60>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
cmp    %r9,%r8
ja     357 <decode_der_length+0x37>
mov    %r10,(%rsi)
mov    %r8,0x8(%rsi)
mov    $0x1,%eax
add    %r8,(%rdi)
sub    %r8,0x8(%rdi)
retq   
nopl   0x0(%rax)
cmp    $0x1,%r9
jbe    357 <decode_der_length+0x37>
movzwl 0x1(%rcx),%edx
sub    $0x3,%rax
rol    $0x8,%dx
movzwl %dx,%edx
cmp    %rdx,%rax
jb     357 <decode_der_length+0x37>
add    $0x3,%rcx
lea    (%rcx,%rdx,1),%r8
sub    %rdx,%rax
mov    %rax,0x8(%rdi)
mov    $0x1,%eax
mov    %r8,(%rdi)
mov    %rcx,(%rsi)
mov    %rdx,0x8(%rsi)
retq   
nopl   0x0(%rax)
test   %r9,%r9
je     357 <decode_der_length+0x37>
movzbl 0x1(%rcx),%edx
sub    $0x2,%rax
cmp    %rdx,%rax
jb     357 <decode_der_length+0x37>
add    $0x2,%rcx
jmp    39e <decode_der_length+0x7e>
nopl   0x0(%rax,%rax,1)

00000000000003e0 <decode_der_integer>:
push   %rbx
sub    $0x20,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
mov    0x8(%rdi),%rax
test   %rax,%rax
je     41c <decode_der_integer+0x3c>
mov    (%rdi),%rcx
mov    %rsi,%rbx
sub    $0x1,%rax
movzbl (%rcx),%esi
add    $0x1,%rcx
mov    %rax,0x8(%rdi)
mov    %rcx,(%rdi)
cmp    $0x2,%sil
je     438 <decode_der_integer+0x58>
xor    %eax,%eax
mov    0x18(%rsp),%rdx
xor    %fs:0x28,%rdx
jne    47c <decode_der_integer+0x9c>
add    $0x20,%rsp
pop    %rbx
retq   
nopl   0x0(%rax)
mov    %rsp,%rsi
callq  440 <decode_der_integer+0x60>
test   %eax,%eax
je     41c <decode_der_integer+0x3c>
mov    0x8(%rsp),%rsi
test   %rsi,%rsi
je     41c <decode_der_integer+0x3c>
mov    (%rsp),%rdi
movzbl (%rdi),%eax
test   %al,%al
js     41c <decode_der_integer+0x3c>
cmp    $0x1,%rsi
je     469 <decode_der_integer+0x89>
test   %al,%al
jne    469 <decode_der_integer+0x89>
cmpb   $0x0,0x1(%rdi)
jns    41c <decode_der_integer+0x3c>
mov    %rbx,%rdx
callq  471 <decode_der_integer+0x91>
test   %rax,%rax
setne  %al
movzbl %al,%eax
jmp    41e <decode_der_integer+0x3e>
callq  481 <decode_der_integer+0xa1>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000490 <decode_der_dsa_sig>:
push   %r12
push   %rbp
push   %rbx
sub    $0x40,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
test   %rcx,%rcx
js     4bc <decode_der_dsa_sig+0x2c>
mov    (%rdx),%rax
mov    %rcx,0x18(%rsp)
mov    %rax,0x10(%rsp)
jne    4e0 <decode_der_dsa_sig+0x50>
xor    %eax,%eax
mov    0x38(%rsp),%rbx
xor    %fs:0x28,%rbx
jne    55e <decode_der_dsa_sig+0xce>
add    $0x40,%rsp
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax,%rax,1)
mov    %rsi,%rbp
movzbl (%rax),%esi
sub    $0x1,%rcx
add    $0x1,%rax
mov    %rcx,0x18(%rsp)
mov    %rax,0x10(%rsp)
cmp    $0x30,%sil
jne    4bc <decode_der_dsa_sig+0x2c>
lea    0x20(%rsp),%r12
mov    %rdi,%rbx
lea    0x10(%rsp),%rdi
mov    %rdx,0x8(%rsp)
mov    %r12,%rsi
callq  518 <decode_der_dsa_sig+0x88>
test   %eax,%eax
je     4bc <decode_der_dsa_sig+0x2c>
mov    %rbx,%rsi
mov    %r12,%rdi
callq  527 <decode_der_dsa_sig+0x97>
test   %eax,%eax
je     4bc <decode_der_dsa_sig+0x2c>
mov    %rbp,%rsi
mov    %r12,%rdi
callq  536 <decode_der_dsa_sig+0xa6>
test   %eax,%eax
je     4bc <decode_der_dsa_sig+0x2c>
cmpq   $0x0,0x28(%rsp)
jne    4bc <decode_der_dsa_sig+0x2c>
mov    0x10(%rsp),%rcx
mov    0x8(%rsp),%rdx
mov    %rcx,%rax
sub    (%rdx),%rax
mov    %rcx,(%rdx)
jmpq   4be <decode_der_dsa_sig+0x2e>
callq  563 <decode_der_dsa_sig+0xd3>
