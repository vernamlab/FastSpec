
openssl_crypto_dump/tls13secretstest-bin-packet.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <WPACKET_put_bytes__.part.5>:
cmpq   $0x0,0x28(%rdi)
je     e0 <WPACKET_put_bytes__.part.5+0xe0>
test   %rdx,%rdx
je     e0 <WPACKET_put_bytes__.part.5+0xe0>
mov    0x18(%rdi),%rcx
mov    0x20(%rdi),%rax
sub    %rcx,%rax
cmp    %rax,%rdx
ja     e0 <WPACKET_put_bytes__.part.5+0xe0>
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
mov    (%rdi),%rdi
mov    %rdx,%rbx
mov    %esi,%r12d
test   %rdi,%rdi
je     158 <WPACKET_put_bytes__.part.5+0x158>
mov    (%rdi),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
cmp    %rdx,%rbx
ja     e8 <WPACKET_put_bytes__.part.5+0xe8>
mov    0x8(%rbp),%rax
test   %rax,%rax
je     18d <WPACKET_put_bytes__.part.5+0x18d>
testb  $0x1,0x30(%rbp)
mov    0x10(%rbp),%rdx
jne    140 <WPACKET_put_bytes__.part.5+0x140>
add    %rdx,%rax
add    %rbx,%rcx
add    %rbx,%rdx
test   %rax,%rax
mov    %rcx,0x18(%rbp)
mov    %rdx,0x10(%rbp)
mov    %r12d,%ecx
je     ce <WPACKET_put_bytes__.part.5+0xce>
lea    -0x1(%rbx),%rsi
mov    %rcx,%rdx
shr    $0x8,%rdx
add    %rsi,%rax
test   %rsi,%rsi
mov    %r12b,(%rax)
je     130 <WPACKET_put_bytes__.part.5+0x130>
mov    %dl,-0x1(%rax)
mov    %rcx,%rdx
shr    $0x10,%rdx
cmp    $0x2,%rbx
je     130 <WPACKET_put_bytes__.part.5+0x130>
shr    $0x18,%rcx
cmp    $0x3,%rbx
mov    %dl,-0x2(%rax)
mov    %rcx,%rdx
je     130 <WPACKET_put_bytes__.part.5+0x130>
cmp    $0x4,%rbx
mov    %cl,-0x3(%rax)
je     ce <WPACKET_put_bytes__.part.5+0xce>
movb   $0x0,-0x4(%rax)
pop    %rbx
mov    $0x1,%eax
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
cmp    %rax,%rbx
mov    $0xffffffffffffffff,%rsi
cmovae %rbx,%rax
test   %rax,%rax
js     10f <WPACKET_put_bytes__.part.5+0x10f>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  114 <WPACKET_put_bytes__.part.5+0x114>
test   %rax,%rax
je     135 <WPACKET_put_bytes__.part.5+0x135>
mov    0x8(%rbp),%rax
test   %rax,%rax
je     180 <WPACKET_put_bytes__.part.5+0x180>
mov    0x18(%rbp),%rcx
jmpq   60 <WPACKET_put_bytes__.part.5+0x60>
nopl   0x0(%rax,%rax,1)
test   %rdx,%rdx
je     ce <WPACKET_put_bytes__.part.5+0xce>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
sub    %rdx,%rax
add    0x20(%rbp),%rax
je     16b <WPACKET_put_bytes__.part.5+0x16b>
sub    %rbx,%rax
jmpq   71 <WPACKET_put_bytes__.part.5+0x71>
nopl   0x0(%rax)
mov    0x8(%rbp),%rax
test   %rax,%rax
jne    60 <WPACKET_put_bytes__.part.5+0x60>
testb  $0x1,0x30(%rbp)
je     1a0 <WPACKET_put_bytes__.part.5+0x1a0>
add    %rbx,%rcx
add    %rbx,0x10(%rbp)
mov    %rcx,0x18(%rbp)
jmpq   ce <WPACKET_put_bytes__.part.5+0xce>
nopl   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rdi
mov    0x18(%rbp),%rcx
test   %rdi,%rdi
je     165 <WPACKET_put_bytes__.part.5+0x165>
mov    0x8(%rdi),%rax
test   %rax,%rax
jne    60 <WPACKET_put_bytes__.part.5+0x60>
testb  $0x1,0x30(%rbp)
jne    16b <WPACKET_put_bytes__.part.5+0x16b>
add    %rbx,%rcx
add    0x10(%rbp),%rbx
mov    %rcx,0x18(%rbp)
mov    %rbx,0x10(%rbp)
jmpq   ce <WPACKET_put_bytes__.part.5+0xce>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000001c0 <wpacket_intern_close>:
push   %r14
push   %r13
mov    %edx,%r14d
push   %r12
push   %rbp
mov    %rdi,%r12
push   %rbx
mov    0x18(%rdi),%rax
mov    %rsi,%rbp
mov    %rax,%rbx
sub    0x18(%rsi),%rbx
jne    3a8 <wpacket_intern_close+0x1e8>
mov    0x20(%rsi),%edx
test   $0x1,%dl
jne    397 <wpacket_intern_close+0x1d7>
and    $0x2,%edx
je     3a8 <wpacket_intern_close+0x1e8>
test   %r14d,%r14d
je     397 <wpacket_intern_close+0x1d7>
mov    0x10(%rsi),%rcx
mov    0x10(%rdi),%rdx
sub    %rcx,%rdx
cmp    0x8(%rsi),%rdx
je     440 <wpacket_intern_close+0x280>
testb  $0x1,0x30(%r12)
movq   $0x0,0x8(%rbp)
movq   $0x0,0x10(%rbp)
je     332 <wpacket_intern_close+0x172>
cmpq   $0x0,0x0(%rbp)
je     328 <wpacket_intern_close+0x168>
test   %rbx,%rbx
jne    360 <wpacket_intern_close+0x1a0>
testb  $0x2,0x20(%rbp)
jne    328 <wpacket_intern_close+0x168>
mov    $0x1,%r13d
mov    %ebx,%esi
mov    %r13,%rdx
mov    %r12,%rdi
callq  0 <WPACKET_put_bytes__.part.5>
test   %eax,%eax
je     397 <wpacket_intern_close+0x1d7>
cmp    $0x7f,%rbx
jbe    328 <wpacket_intern_close+0x168>
cmpq   $0x0,0x28(%r12)
je     397 <wpacket_intern_close+0x1d7>
mov    0x18(%r12),%rax
cmp    %rax,0x20(%r12)
je     397 <wpacket_intern_close+0x1d7>
mov    (%r12),%rdi
test   %rdi,%rdi
je     49f <wpacket_intern_close+0x2df>
cmp    (%rdi),%rax
jne    450 <wpacket_intern_close+0x290>
test   %rax,%rax
mov    $0x1,%edx
mov    $0xffffffffffffffff,%rsi
cmove  %rdx,%rax
test   %rax,%rax
js     2d2 <wpacket_intern_close+0x112>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  2d7 <wpacket_intern_close+0x117>
test   %rax,%rax
je     397 <wpacket_intern_close+0x1d7>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
je     4d6 <wpacket_intern_close+0x316>
mov    0x18(%r12),%rax
testb  $0x1,0x30(%r12)
mov    0x10(%r12),%rcx
jne    48c <wpacket_intern_close+0x2cc>
add    %rcx,%rdx
add    $0x1,%rax
add    $0x1,%rcx
or     $0x80,%r13b
test   %rdx,%rdx
mov    %rax,0x18(%r12)
mov    %rcx,0x10(%r12)
je     328 <wpacket_intern_close+0x168>
mov    %r13b,(%rdx)
nopl   (%rax)
test   %r14d,%r14d
mov    $0x1,%eax
je     399 <wpacket_intern_close+0x1d9>
mov    0x0(%rbp),%rax
mov    %rbp,%rdi
mov    $0x120,%edx
mov    $0x0,%esi
mov    %rax,0x28(%r12)
callq  34d <wpacket_intern_close+0x18d>
pop    %rbx
mov    $0x1,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    %rbx,%rax
shr    $0x8,%rax
test   %rax,%rax
je     4e5 <wpacket_intern_close+0x325>
mov    $0x1,%r13d
nopw   %cs:0x0(%rax,%rax,1)
shr    $0x8,%rax
add    $0x1,%r13
test   %rax,%rax
jne    380 <wpacket_intern_close+0x1c0>
cmp    $0x4,%r13
jbe    255 <wpacket_intern_close+0x95>
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rbp),%rdx
test   %rdx,%rdx
je     400 <wpacket_intern_close+0x240>
mov    0x8(%r12),%rax
test   %rax,%rax
je     420 <wpacket_intern_close+0x260>
add    0x8(%rbp),%rax
je     328 <wpacket_intern_close+0x168>
lea    -0x1(%rax,%rdx,1),%rax
mov    %rax,%rcx
sub    %rdx,%rcx
mov    %rcx,%rdx
nopl   0x0(%rax,%rax,1)
mov    %bl,(%rax)
sub    $0x1,%rax
shr    $0x8,%rbx
cmp    %rax,%rdx
jne    3d8 <wpacket_intern_close+0x218>
test   %rbx,%rbx
jne    397 <wpacket_intern_close+0x1d7>
test   %r14d,%r14d
mov    $0x1,%eax
je     399 <wpacket_intern_close+0x1d9>
jmpq   332 <wpacket_intern_close+0x172>
nopl   0x0(%rax,%rax,1)
testb  $0x1,0x30(%r12)
jne    231 <wpacket_intern_close+0x71>
test   %r14d,%r14d
mov    $0x1,%eax
je     399 <wpacket_intern_close+0x1d9>
jmpq   332 <wpacket_intern_close+0x172>
nopl   0x0(%rax,%rax,1)
mov    (%r12),%rax
test   %rax,%rax
je     328 <wpacket_intern_close+0x168>
mov    0x8(%rax),%rax
test   %rax,%rax
je     328 <wpacket_intern_close+0x168>
jmpq   3bb <wpacket_intern_close+0x1fb>
nop
sub    %rcx,%rax
mov    %rdx,0x10(%rdi)
mov    %rax,0x18(%rdi)
jmpq   215 <wpacket_intern_close+0x55>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
jne    2f3 <wpacket_intern_close+0x133>
mov    0x8(%rdi),%rdx
test   %rdx,%rdx
jne    2ee <wpacket_intern_close+0x12e>
testb  $0x1,0x30(%r12)
jne    4b5 <wpacket_intern_close+0x2f5>
mov    0x10(%r12),%rax
addq   $0x1,0x18(%r12)
add    $0x1,%rax
mov    %rax,0x10(%r12)
jmpq   328 <wpacket_intern_close+0x168>
sub    %rcx,%rdx
add    0x20(%r12),%rdx
je     4bf <wpacket_intern_close+0x2ff>
sub    $0x1,%rdx
jmpq   307 <wpacket_intern_close+0x147>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
jne    2f3 <wpacket_intern_close+0x133>
testb  $0x1,0x30(%r12)
jne    473 <wpacket_intern_close+0x2b3>
mov    0x10(%r12),%rcx
mov    0x18(%r12),%rax
add    $0x1,%rax
add    $0x1,%rcx
mov    %rax,0x18(%r12)
mov    %rcx,0x10(%r12)
jmpq   328 <wpacket_intern_close+0x168>
mov    (%r12),%rdi
test   %rdi,%rdi
jne    45e <wpacket_intern_close+0x29e>
jmp    4ad <wpacket_intern_close+0x2ed>
mov    %ebx,%esi
mov    $0x1,%r13d
jmpq   257 <wpacket_intern_close+0x97>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000500 <WPACKET_allocate_bytes>:
cmpq   $0x0,0x28(%rdi)
je     5d0 <WPACKET_allocate_bytes+0xd0>
test   %rsi,%rsi
je     5d0 <WPACKET_allocate_bytes+0xd0>
mov    0x18(%rdi),%rax
mov    0x20(%rdi),%rcx
sub    %rax,%rcx
cmp    %rcx,%rsi
ja     5d0 <WPACKET_allocate_bytes+0xd0>
push   %r12
push   %rbp
mov    %rdx,%r12
push   %rbx
mov    %rdi,%rbx
mov    (%rdi),%rdi
mov    %rsi,%rbp
test   %rdi,%rdi
je     580 <WPACKET_allocate_bytes+0x80>
mov    (%rdi),%rdx
mov    %rdx,%rcx
sub    %rax,%rcx
cmp    %rcx,%rsi
jbe    580 <WPACKET_allocate_bytes+0x80>
cmp    %rdx,%rsi
cmovae %rsi,%rdx
mov    $0xffffffffffffffff,%rsi
test   %rdx,%rdx
js     572 <WPACKET_allocate_bytes+0x72>
lea    (%rdx,%rdx,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  577 <WPACKET_allocate_bytes+0x77>
test   %rax,%rax
je     5e8 <WPACKET_allocate_bytes+0xe8>
mov    0x18(%rbx),%rax
test   %r12,%r12
je     610 <WPACKET_allocate_bytes+0x110>
mov    0x8(%rbx),%rdx
test   %rdx,%rdx
je     5f0 <WPACKET_allocate_bytes+0xf0>
testb  $0x1,0x30(%rbx)
mov    0x10(%rbx),%rsi
jne    5d8 <WPACKET_allocate_bytes+0xd8>
add    %rsi,%rdx
test   %rdx,%rdx
mov    %rdx,(%r12)
je     5b5 <WPACKET_allocate_bytes+0xb5>
testb  $0x1,0x30(%rbx)
je     5b5 <WPACKET_allocate_bytes+0xb5>
sub    %rbp,%rdx
mov    %rdx,(%r12)
add    %rbp,%rax
add    %rbp,%rsi
mov    %rax,0x18(%rbx)
mov    %rsi,0x10(%rbx)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
sub    %rsi,%rdx
add    0x20(%rbx),%rdx
jmp    59f <WPACKET_allocate_bytes+0x9f>
nopl   0x0(%rax)
xor    %eax,%eax
jmp    5c8 <WPACKET_allocate_bytes+0xc8>
nopl   0x0(%rax)
mov    (%rbx),%rdx
test   %rdx,%rdx
je     601 <WPACKET_allocate_bytes+0x101>
mov    0x8(%rdx),%rdx
test   %rdx,%rdx
jne    592 <WPACKET_allocate_bytes+0x92>
movq   $0x0,(%r12)
mov    0x10(%rbx),%rsi
jmp    5b5 <WPACKET_allocate_bytes+0xb5>
nop
mov    0x10(%rbx),%rsi
jmp    5b5 <WPACKET_allocate_bytes+0xb5>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000620 <WPACKET_reserve_bytes>:
cmpq   $0x0,0x28(%rdi)
je     6a0 <WPACKET_reserve_bytes+0x80>
test   %rsi,%rsi
je     6a0 <WPACKET_reserve_bytes+0x80>
mov    0x18(%rdi),%rcx
mov    0x20(%rdi),%rax
sub    %rcx,%rax
cmp    %rax,%rsi
ja     6a0 <WPACKET_reserve_bytes+0x80>
push   %r12
push   %rbp
mov    %rdx,%r12
push   %rbx
mov    %rdi,%rbx
mov    (%rdi),%rdi
mov    %rsi,%rbp
test   %rdi,%rdi
je     6a8 <WPACKET_reserve_bytes+0x88>
mov    (%rdi),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
cmp    %rdx,%rsi
jbe    6a8 <WPACKET_reserve_bytes+0x88>
cmp    %rax,%rsi
cmovae %rsi,%rax
mov    $0xffffffffffffffff,%rsi
test   %rax,%rax
js     686 <WPACKET_reserve_bytes+0x66>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  68b <WPACKET_reserve_bytes+0x6b>
test   %rax,%rax
jne    6a8 <WPACKET_reserve_bytes+0x88>
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
test   %r12,%r12
je     709 <WPACKET_reserve_bytes+0xe9>
mov    0x8(%rbx),%rax
test   %rax,%rax
je     6f0 <WPACKET_reserve_bytes+0xd0>
testb  $0x1,0x30(%rbx)
jne    6e0 <WPACKET_reserve_bytes+0xc0>
add    0x10(%rbx),%rax
mov    %rax,(%r12)
testb  $0x1,0x30(%rbx)
je     709 <WPACKET_reserve_bytes+0xe9>
test   %rax,%rax
je     709 <WPACKET_reserve_bytes+0xe9>
sub    %rbp,%rax
mov    %rax,(%r12)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
sub    0x10(%rbx),%rax
add    0x20(%rbx),%rax
jmp    6c0 <WPACKET_reserve_bytes+0xa0>
nopw   0x0(%rax,%rax,1)
mov    (%rbx),%rax
test   %rax,%rax
je     701 <WPACKET_reserve_bytes+0xe1>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    6b6 <WPACKET_reserve_bytes+0x96>
movq   $0x0,(%r12)
mov    $0x1,%eax
jmp    692 <WPACKET_reserve_bytes+0x72>

0000000000000710 <WPACKET_sub_allocate_bytes__>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x18,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
cmpq   $0x0,0x28(%rdi)
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
test   %rcx,%rcx
mov    %rdi,%rbx
mov    %rsi,%r13
mov    %rdx,%r12
mov    %rcx,%rbp
je     818 <WPACKET_sub_allocate_bytes__+0x108>
testb  $0x1,0x30(%rdi)
jne    7f0 <WPACKET_sub_allocate_bytes__+0xe0>
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  768 <WPACKET_sub_allocate_bytes__+0x58>
test   %rax,%rax
je     7c0 <WPACKET_sub_allocate_bytes__+0xb0>
mov    0x28(%rbx),%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
mov    %rbp,0x10(%rax)
lea    0x0(%rbp,%rdx,1),%rcx
mov    %rdx,0x8(%rax)
mov    %rsp,%rdx
mov    %rcx,0x18(%rax)
callq  79b <WPACKET_sub_allocate_bytes__+0x8b>
test   %eax,%eax
je     7f2 <WPACKET_sub_allocate_bytes__+0xe2>
mov    %rbp,%rdx
add    0x18(%rbx),%rdx
add    %rbp,0x10(%rbx)
mov    0x28(%rbx),%rax
mov    %rdx,0x18(%rbx)
jmpq   854 <WPACKET_sub_allocate_bytes__+0x144>
nopw   0x0(%rax,%rax,1)
callq  7c5 <WPACKET_sub_allocate_bytes__+0xb5>
mov    $0x0,%edx
mov    $0x163,%esi
mov    $0x0,%edi
callq  7d9 <WPACKET_sub_allocate_bytes__+0xc9>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
xor    %eax,%eax
callq  7ec <WPACKET_sub_allocate_bytes__+0xdc>
nopl   0x0(%rax)
xor    %eax,%eax
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    971 <WPACKET_sub_allocate_bytes__+0x261>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  82c <WPACKET_sub_allocate_bytes__+0x11c>
test   %rax,%rax
je     7c0 <WPACKET_sub_allocate_bytes__+0xb0>
mov    0x28(%rbx),%rdx
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
movq   $0x0,0x10(%rax)
movq   $0x0,0x8(%rax)
mov    %rdx,0x18(%rax)
test   %rax,%rax
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
test   %r13,%r13
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
mov    0x20(%rbx),%rax
sub    %rdx,%rax
cmp    %rax,%r13
ja     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
mov    (%rbx),%rdi
test   %rdi,%rdi
je     8b9 <WPACKET_sub_allocate_bytes__+0x1a9>
mov    (%rdi),%rax
mov    %rax,%rcx
sub    %rdx,%rcx
cmp    %rcx,%r13
jbe    8b9 <WPACKET_sub_allocate_bytes__+0x1a9>
cmp    %rax,%r13
mov    $0xffffffffffffffff,%rsi
cmovae %r13,%rax
test   %rax,%rax
js     8a7 <WPACKET_sub_allocate_bytes__+0x197>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  8ac <WPACKET_sub_allocate_bytes__+0x19c>
test   %rax,%rax
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
mov    0x18(%rbx),%rdx
test   %r12,%r12
je     968 <WPACKET_sub_allocate_bytes__+0x258>
mov    0x8(%rbx),%rcx
test   %rcx,%rcx
je     940 <WPACKET_sub_allocate_bytes__+0x230>
testb  $0x1,0x30(%rbx)
mov    0x10(%rbx),%rax
jne    930 <WPACKET_sub_allocate_bytes__+0x220>
add    %rax,%rcx
mov    %rcx,(%r12)
testb  $0x1,0x30(%rbx)
je     8ee <WPACKET_sub_allocate_bytes__+0x1de>
test   %rcx,%rcx
je     8ee <WPACKET_sub_allocate_bytes__+0x1de>
sub    %r13,%rcx
mov    %rcx,(%r12)
mov    0x28(%rbx),%rsi
add    %r13,%rdx
add    %rax,%r13
mov    %rdx,0x18(%rbx)
mov    %r13,0x10(%rbx)
test   %rsi,%rsi
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
cmpq   $0x0,(%rsi)
je     7f0 <WPACKET_sub_allocate_bytes__+0xe0>
mov    $0x1,%edx
mov    %rbx,%rdi
callq  1c0 <wpacket_intern_close>
test   %eax,%eax
setne  %al
movzbl %al,%eax
jmpq   7f2 <WPACKET_sub_allocate_bytes__+0xe2>
nopl   (%rax)
sub    %rax,%rcx
add    0x20(%rbx),%rcx
jmp    8d8 <WPACKET_sub_allocate_bytes__+0x1c8>
nopl   0x0(%rax)
mov    (%rbx),%rax
test   %rax,%rax
je     955 <WPACKET_sub_allocate_bytes__+0x245>
mov    0x8(%rax),%rcx
test   %rcx,%rcx
jne    8cb <WPACKET_sub_allocate_bytes__+0x1bb>
movq   $0x0,(%r12)
mov    0x10(%rbx),%rax
jmp    8ee <WPACKET_sub_allocate_bytes__+0x1de>
nopl   0x0(%rax,%rax,1)
mov    0x10(%rbx),%rax
jmpq   8ee <WPACKET_sub_allocate_bytes__+0x1de>
callq  976 <WPACKET_sub_allocate_bytes__+0x266>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000980 <WPACKET_sub_reserve_bytes__>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
testb  $0x1,0x30(%rdi)
je     9a8 <WPACKET_sub_reserve_bytes__+0x28>
test   %rcx,%rcx
je     9a8 <WPACKET_sub_reserve_bytes__+0x28>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopw   0x0(%rax,%rax,1)
cmpq   $0x0,0x28(%rdi)
lea    (%rcx,%rsi,1),%rbp
je     995 <WPACKET_sub_reserve_bytes__+0x15>
test   %rbp,%rbp
je     995 <WPACKET_sub_reserve_bytes__+0x15>
mov    0x18(%rdi),%rsi
mov    0x20(%rdi),%rax
sub    %rsi,%rax
cmp    %rax,%rbp
ja     995 <WPACKET_sub_reserve_bytes__+0x15>
mov    %rdi,%rbx
mov    (%rdi),%rdi
mov    %rcx,%r12
mov    %rdx,%r13
test   %rdi,%rdi
je     a1c <WPACKET_sub_reserve_bytes__+0x9c>
mov    (%rdi),%rax
mov    %rax,%rdx
sub    %rsi,%rdx
cmp    %rdx,%rbp
jbe    a1c <WPACKET_sub_reserve_bytes__+0x9c>
cmp    %rax,%rbp
mov    $0xffffffffffffffff,%rsi
cmovae %rbp,%rax
test   %rax,%rax
js     a0e <WPACKET_sub_reserve_bytes__+0x8e>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  a13 <WPACKET_sub_reserve_bytes__+0x93>
test   %rax,%rax
je     995 <WPACKET_sub_reserve_bytes__+0x15>
test   %r13,%r13
je     aa8 <WPACKET_sub_reserve_bytes__+0x128>
mov    0x8(%rbx),%rax
test   %rax,%rax
je     a80 <WPACKET_sub_reserve_bytes__+0x100>
testb  $0x1,0x30(%rbx)
je     a70 <WPACKET_sub_reserve_bytes__+0xf0>
sub    0x10(%rbx),%rax
add    0x20(%rbx),%rax
mov    %rax,0x0(%r13)
testb  $0x1,0x30(%rbx)
je     a52 <WPACKET_sub_reserve_bytes__+0xd2>
test   %rax,%rax
je     a52 <WPACKET_sub_reserve_bytes__+0xd2>
sub    %rbp,%rax
mov    %rax,0x0(%r13)
test   %rax,%rax
je     a99 <WPACKET_sub_reserve_bytes__+0x119>
add    %r12,%rax
mov    %rax,0x0(%r13)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
xchg   %ax,%ax
add    0x10(%rbx),%rax
jmp    a3c <WPACKET_sub_reserve_bytes__+0xbc>
nopw   %cs:0x0(%rax,%rax,1)
mov    (%rbx),%rax
test   %rax,%rax
je     a91 <WPACKET_sub_reserve_bytes__+0x111>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    a2e <WPACKET_sub_reserve_bytes__+0xae>
movq   $0x0,0x0(%r13)
mov    $0x1,%eax
jmpq   997 <WPACKET_sub_reserve_bytes__+0x17>
nopl   0x0(%rax,%rax,1)
mov    0x0,%rax
jmp    a52 <WPACKET_sub_reserve_bytes__+0xd2>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000ac0 <WPACKET_init_static_len>:
push   %rbp
push   %rbx
mov    %rdi,%rbx
lea    -0x1(%rcx),%rdi
mov    %rcx,%rbp
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
cmp    $0x6,%rdi
mov    $0xffffffffffffffff,%rax
ja     aff <WPACKET_init_static_len+0x3f>
lea    0x0(,%rcx,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rdi,%rax
test   %rsi,%rsi
je     ba0 <WPACKET_init_static_len+0xe0>
test   %rdx,%rdx
je     ba0 <WPACKET_init_static_len+0xe0>
cmp    %rax,%rdx
mov    %rsi,0x8(%rbx)
movq   $0x0,(%rbx)
cmova  %rax,%rdx
andb   $0xfe,0x30(%rbx)
movq   $0x0,0x10(%rbx)
mov    %rdx,0x20(%rbx)
movq   $0x0,0x18(%rbx)
mov    $0x6b,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  b4f <WPACKET_init_static_len+0x8f>
test   %rax,%rax
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
je     be8 <WPACKET_init_static_len+0x128>
test   %rbp,%rbp
mov    $0x1,%eax
je     ba2 <WPACKET_init_static_len+0xe2>
mov    %rbp,0x18(%rdx)
mov    %rbp,0x10(%rdx)
lea    0x10(%rsp),%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  b81 <WPACKET_init_static_len+0xc1>
test   %eax,%eax
je     bc0 <WPACKET_init_static_len+0x100>
mov    0x28(%rbx),%rax
add    %rbp,0x18(%rbx)
add    %rbp,0x10(%rbx)
movq   $0x0,0x8(%rax)
mov    $0x1,%eax
jmp    ba2 <WPACKET_init_static_len+0xe2>
xor    %eax,%eax
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    c18 <WPACKET_init_static_len+0x158>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
mov    0x28(%rbx),%rdi
mov    $0x77,%edx
mov    $0x0,%esi
mov    %eax,0xc(%rsp)
callq  bd7 <WPACKET_init_static_len+0x117>
movq   $0x0,0x28(%rbx)
mov    0xc(%rsp),%eax
jmp    ba2 <WPACKET_init_static_len+0xe2>
nopl   (%rax)
callq  bed <WPACKET_init_static_len+0x12d>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  c01 <WPACKET_init_static_len+0x141>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  c14 <WPACKET_init_static_len+0x154>
xor    %eax,%eax
jmp    ba2 <WPACKET_init_static_len+0xe2>
callq  c1d <WPACKET_init_static_len+0x15d>
nopl   (%rax)

0000000000000c20 <WPACKET_init_der>:
test   %rsi,%rsi
je     c80 <WPACKET_init_der+0x60>
test   %rdx,%rdx
je     c80 <WPACKET_init_der+0x60>
push   %rbx
orb    $0x1,0x30(%rdi)
mov    %rdi,%rbx
mov    %rsi,0x8(%rdi)
mov    %rdx,0x20(%rdi)
mov    $0x0,%esi
movq   $0x0,(%rdi)
movq   $0x0,0x10(%rdi)
mov    $0x6b,%edx
movq   $0x0,0x18(%rdi)
mov    $0x28,%edi
callq  c65 <WPACKET_init_der+0x45>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     c88 <WPACKET_init_der+0x68>
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
callq  c8d <WPACKET_init_der+0x6d>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  ca1 <WPACKET_init_der+0x81>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  cb4 <WPACKET_init_der+0x94>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

0000000000000cc0 <WPACKET_init_len>:
test   %rsi,%rsi
je     e08 <WPACKET_init_len+0x148>
push   %rbp
push   %rbx
mov    $0xffffffffffffffff,%rax
sub    $0x8,%rsp
mov    %rsi,(%rdi)
lea    -0x1(%rdx),%rsi
movq   $0x0,0x8(%rdi)
cmp    $0x6,%rsi
jbe    d40 <WPACKET_init_len+0x80>
andb   $0xfe,0x30(%rdi)
mov    %rdi,%rbx
mov    %rax,0x20(%rdi)
movq   $0x0,0x10(%rdi)
movq   $0x0,0x18(%rdi)
mov    %rdx,%rbp
mov    $0x0,%esi
mov    $0x6b,%edx
mov    $0x28,%edi
callq  d1d <WPACKET_init_len+0x5d>
test   %rax,%rax
mov    %rax,%rcx
mov    %rax,0x28(%rbx)
je     e20 <WPACKET_init_len+0x160>
test   %rbp,%rbp
mov    $0x1,%eax
jne    d58 <WPACKET_init_len+0x98>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
lea    0x0(,%rdx,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rsi,%rax
jmp    ceb <WPACKET_init_len+0x2b>
nopl   0x0(%rax)
mov    0x18(%rbx),%rax
mov    0x20(%rbx),%rdx
mov    %rbp,0x18(%rcx)
mov    %rbp,0x10(%rcx)
sub    %rax,%rdx
cmp    %rdx,%rbp
ja     de0 <WPACKET_init_len+0x120>
mov    (%rbx),%rdi
test   %rdi,%rdi
je     dbf <WPACKET_init_len+0xff>
mov    (%rdi),%rdx
mov    %rdx,%rsi
sub    %rax,%rsi
cmp    %rsi,%rbp
jbe    dbf <WPACKET_init_len+0xff>
cmp    %rdx,%rbp
mov    $0xffffffffffffffff,%rsi
cmovae %rbp,%rdx
test   %rdx,%rdx
js     dad <WPACKET_init_len+0xed>
lea    (%rdx,%rdx,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  db2 <WPACKET_init_len+0xf2>
test   %rax,%rax
je     e10 <WPACKET_init_len+0x150>
mov    0x28(%rbx),%rcx
mov    0x18(%rbx),%rax
add    %rbp,%rax
add    %rbp,0x10(%rbx)
mov    %rax,0x18(%rbx)
movq   $0x0,0x8(%rcx)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
mov    %rcx,%rdi
mov    $0x77,%edx
mov    $0x0,%esi
callq  df2 <WPACKET_init_len+0x132>
movq   $0x0,0x28(%rbx)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x28(%rbx),%rdi
jmp    de3 <WPACKET_init_len+0x123>
nopw   %cs:0x0(%rax,%rax,1)
callq  e25 <WPACKET_init_len+0x165>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  e39 <WPACKET_init_len+0x179>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  e4c <WPACKET_init_len+0x18c>
xor    %eax,%eax
jmpq   d37 <WPACKET_init_len+0x77>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000e60 <WPACKET_init>:
test   %rsi,%rsi
je     ec0 <WPACKET_init+0x60>
push   %rbx
andb   $0xfe,0x30(%rdi)
mov    %rdi,%rbx
mov    %rsi,(%rdi)
movq   $0x0,0x8(%rdi)
mov    $0x6b,%edx
movq   $0xffffffffffffffff,0x20(%rdi)
movq   $0x0,0x10(%rdi)
mov    $0x0,%esi
movq   $0x0,0x18(%rdi)
mov    $0x28,%edi
callq  ea4 <WPACKET_init+0x44>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     ec8 <WPACKET_init+0x68>
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
callq  ecd <WPACKET_init+0x6d>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  ee1 <WPACKET_init+0x81>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  ef4 <WPACKET_init+0x94>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

0000000000000f00 <WPACKET_init_null>:
lea    -0x1(%rsi),%rdx
push   %rbx
mov    $0xffffffffffffffff,%rax
mov    %rdi,%rbx
movq   $0x0,0x8(%rdi)
movq   $0x0,(%rdi)
cmp    $0x6,%rdx
ja     f36 <WPACKET_init_null+0x36>
lea    0x0(,%rsi,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rdx,%rax
andb   $0xfe,0x30(%rbx)
mov    $0x6b,%edx
mov    %rax,0x20(%rbx)
movq   $0x0,0x10(%rbx)
movq   $0x0,0x18(%rbx)
mov    $0x0,%esi
mov    $0x28,%edi
callq  f62 <WPACKET_init_null+0x62>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     f78 <WPACKET_init_null+0x78>
pop    %rbx
retq   
nopl   (%rax)
callq  f7d <WPACKET_init_null+0x7d>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  f91 <WPACKET_init_null+0x91>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  fa4 <WPACKET_init_null+0xa4>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

0000000000000fb0 <WPACKET_init_null_der>:
push   %rbx
orb    $0x1,0x30(%rdi)
mov    %rdi,%rbx
movq   $0x0,0x8(%rdi)
movq   $0x0,(%rdi)
mov    $0x6b,%edx
movq   $0xffffffffffffffff,0x20(%rdi)
movq   $0x0,0x10(%rdi)
mov    $0x0,%esi
movq   $0x0,0x18(%rdi)
mov    $0x28,%edi
callq  ff3 <WPACKET_init_null_der+0x43>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     1010 <WPACKET_init_null_der+0x60>
pop    %rbx
retq   
nopw   %cs:0x0(%rax,%rax,1)
callq  1015 <WPACKET_init_null_der+0x65>
mov    $0x0,%edx
mov    $0x6c,%esi
mov    $0x0,%edi
callq  1029 <WPACKET_init_null_der+0x79>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  103c <WPACKET_init_null_der+0x8c>
xor    %eax,%eax
pop    %rbx
retq   

0000000000001040 <WPACKET_set_flags>:
mov    0x28(%rdi),%rax
test   %rax,%rax
je     1058 <WPACKET_set_flags+0x18>
mov    %esi,0x20(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000001060 <WPACKET_fill_lengths>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x18,%rsp
mov    0x28(%rdi),%rbp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
test   %rbp,%rbp
je     1100 <WPACKET_fill_lengths+0xa0>
mov    %rdi,%r13
nopw   %cs:0x0(%rax,%rax,1)
mov    0x18(%r13),%rax
mov    %rax,%rbx
sub    0x18(%rbp),%rbx
jne    10aa <WPACKET_fill_lengths+0x4a>
mov    0x20(%rbp),%edx
test   $0x1,%dl
jne    1100 <WPACKET_fill_lengths+0xa0>
and    $0x2,%edx
jne    1100 <WPACKET_fill_lengths+0xa0>
mov    0x10(%rbp),%rdx
test   %rdx,%rdx
je     1200 <WPACKET_fill_lengths+0x1a0>
mov    0x8(%r13),%rax
test   %rax,%rax
je     1260 <WPACKET_fill_lengths+0x200>
add    0x8(%rbp),%rax
je     11e0 <WPACKET_fill_lengths+0x180>
lea    -0x1(%rax,%rdx,1),%rax
mov    %rax,%rcx
sub    %rdx,%rcx
mov    %rcx,%rdx
nopl   0x0(%rax)
mov    %bl,(%rax)
sub    $0x1,%rax
shr    $0x8,%rbx
cmp    %rdx,%rax
jne    10e0 <WPACKET_fill_lengths+0x80>
test   %rbx,%rbx
je     11e0 <WPACKET_fill_lengths+0x180>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
mov    0x8(%rsp),%rsi
xor    %fs:0x28,%rsi
jne    129a <WPACKET_fill_lengths+0x23a>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
testb  $0x2,0x20(%rbp)
jne    1250 <WPACKET_fill_lengths+0x1f0>
mov    $0x1,%r12d
mov    %rsp,%rdx
mov    %r12,%rsi
mov    %r13,%rdi
callq  1146 <WPACKET_fill_lengths+0xe6>
test   %eax,%eax
je     1100 <WPACKET_fill_lengths+0xa0>
mov    (%rsp),%rdx
add    %r12,0x18(%r13)
mov    %ebx,%eax
add    %r12,0x10(%r13)
test   %rdx,%rdx
je     11a2 <WPACKET_fill_lengths+0x142>
lea    -0x1(%r12),%rcx
add    %rcx,%rdx
test   %r12,%r12
je     128c <WPACKET_fill_lengths+0x22c>
mov    %al,(%rdx)
shr    $0x8,%rax
test   %rcx,%rcx
je     128c <WPACKET_fill_lengths+0x22c>
mov    %al,-0x1(%rdx)
shr    $0x8,%rax
cmp    $0x2,%r12
je     128c <WPACKET_fill_lengths+0x22c>
mov    %al,-0x2(%rdx)
shr    $0x8,%rax
cmp    $0x3,%r12
je     128c <WPACKET_fill_lengths+0x22c>
mov    %al,-0x3(%rdx)
cmp    $0x7f,%rbx
jbe    11e0 <WPACKET_fill_lengths+0x180>
mov    %rsp,%rdx
mov    $0x1,%esi
mov    %r13,%rdi
callq  11b8 <WPACKET_fill_lengths+0x158>
test   %eax,%eax
je     1100 <WPACKET_fill_lengths+0xa0>
mov    (%rsp),%rax
addq   $0x1,0x18(%r13)
or     $0x80,%r12b
addq   $0x1,0x10(%r13)
test   %rax,%rax
je     11e0 <WPACKET_fill_lengths+0x180>
mov    %r12b,(%rax)
nopw   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rbp
test   %rbp,%rbp
jne    1090 <WPACKET_fill_lengths+0x30>
mov    $0x1,%eax
jmpq   1102 <WPACKET_fill_lengths+0xa2>
nopw   0x0(%rax,%rax,1)
testb  $0x1,0x30(%r13)
je     11e0 <WPACKET_fill_lengths+0x180>
mov    0x0(%rbp),%rdx
test   %rdx,%rdx
je     11ed <WPACKET_fill_lengths+0x18d>
test   %rbx,%rbx
je     1128 <WPACKET_fill_lengths+0xc8>
mov    %rbx,%rax
mov    $0x1,%r12d
shr    $0x8,%rax
test   %rax,%rax
je     1138 <WPACKET_fill_lengths+0xd8>
nop
shr    $0x8,%rax
add    $0x1,%r12
test   %rax,%rax
jne    1230 <WPACKET_fill_lengths+0x1d0>
cmp    $0x4,%r12
ja     1100 <WPACKET_fill_lengths+0xa0>
jmpq   1138 <WPACKET_fill_lengths+0xd8>
nopl   0x0(%rax)
mov    %rdx,%rbp
jmpq   1094 <WPACKET_fill_lengths+0x34>
nopl   0x0(%rax,%rax,1)
mov    0x0(%r13),%rax
test   %rax,%rax
je     11e0 <WPACKET_fill_lengths+0x180>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    10c4 <WPACKET_fill_lengths+0x64>
mov    0x0(%rbp),%rbp
test   %rbp,%rbp
jne    1090 <WPACKET_fill_lengths+0x30>
jmpq   11ed <WPACKET_fill_lengths+0x18d>
test   %rax,%rax
jne    1100 <WPACKET_fill_lengths+0xa0>
jmpq   11a2 <WPACKET_fill_lengths+0x142>
callq  129f <WPACKET_fill_lengths+0x23f>
nop

00000000000012a0 <WPACKET_close>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
mov    0x28(%rdi),%rbp
test   %rbp,%rbp
je     1318 <WPACKET_close+0x78>
mov    0x0(%rbp),%rax
test   %rax,%rax
je     1318 <WPACKET_close+0x78>
mov    0x18(%rdi),%rdx
mov    %rdi,%r12
mov    %rdx,%rbx
sub    0x18(%rbp),%rbx
je     1328 <WPACKET_close+0x88>
mov    0x10(%rbp),%rcx
test   %rcx,%rcx
je     1488 <WPACKET_close+0x1e8>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
je     14d0 <WPACKET_close+0x230>
add    0x8(%rbp),%rdx
je     145c <WPACKET_close+0x1bc>
lea    -0x1(%rdx,%rcx,1),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
nopl   0x0(%rax)
mov    %bl,(%rax)
sub    $0x1,%rax
shr    $0x8,%rbx
cmp    %rdx,%rax
jne    1300 <WPACKET_close+0x60>
test   %rbx,%rbx
je     1458 <WPACKET_close+0x1b8>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
mov    0x20(%rbp),%ecx
test   $0x1,%cl
jne    1318 <WPACKET_close+0x78>
test   $0x2,%cl
je     12cc <WPACKET_close+0x2c>
mov    0x10(%rbp),%rdi
mov    0x10(%r12),%rsi
sub    %rdi,%rsi
cmp    0x8(%rbp),%rsi
je     14f0 <WPACKET_close+0x250>
testb  $0x1,0x30(%r12)
movq   $0x0,0x8(%rbp)
movq   $0x0,0x10(%rbp)
je     145c <WPACKET_close+0x1bc>
and    $0x2,%ecx
jne    145c <WPACKET_close+0x1bc>
mov    $0x1,%r13d
mov    %ebx,%esi
mov    %r13,%rdx
mov    %r12,%rdi
callq  0 <WPACKET_put_bytes__.part.5>
test   %eax,%eax
je     1318 <WPACKET_close+0x78>
cmp    $0x7f,%rbx
jbe    1458 <WPACKET_close+0x1b8>
cmpq   $0x0,0x28(%r12)
je     1318 <WPACKET_close+0x78>
mov    0x18(%r12),%rax
cmp    %rax,0x20(%r12)
je     1318 <WPACKET_close+0x78>
mov    (%r12),%rdi
test   %rdi,%rdi
je     1551 <WPACKET_close+0x2b1>
cmp    (%rdi),%rax
jne    1502 <WPACKET_close+0x262>
test   %rax,%rax
mov    $0x1,%edx
mov    $0xffffffffffffffff,%rsi
cmove  %rdx,%rax
test   %rax,%rax
js     13ef <WPACKET_close+0x14f>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  13f4 <WPACKET_close+0x154>
test   %rax,%rax
je     1318 <WPACKET_close+0x78>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
je     1588 <WPACKET_close+0x2e8>
mov    0x18(%r12),%rax
testb  $0x1,0x30(%r12)
mov    0x10(%r12),%rcx
jne    153e <WPACKET_close+0x29e>
add    %rcx,%rdx
mov    %r13d,%r13d
add    $0x1,%rax
add    $0x1,%rcx
or     $0x80,%r13b
test   %rdx,%rdx
mov    %rax,0x18(%r12)
mov    %rcx,0x10(%r12)
je     1458 <WPACKET_close+0x1b8>
mov    %r13b,(%rdx)
shr    $0x8,%r13
test   %r13,%r13
jne    1318 <WPACKET_close+0x78>
nopw   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rax
mov    %rax,0x28(%r12)
mov    %rbp,%rdi
mov    $0x120,%edx
mov    $0x0,%esi
callq  1473 <WPACKET_close+0x1d3>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
testb  $0x1,0x30(%r12)
je     145c <WPACKET_close+0x1bc>
test   %rbx,%rbx
je     15a4 <WPACKET_close+0x304>
mov    %rbx,%rax
shr    $0x8,%rax
test   %rax,%rax
je     1597 <WPACKET_close+0x2f7>
mov    $0x1,%r13d
nop
shr    $0x8,%rax
add    $0x1,%r13
test   %rax,%rax
jne    14b0 <WPACKET_close+0x210>
cmp    $0x4,%r13
ja     1318 <WPACKET_close+0x78>
jmpq   1376 <WPACKET_close+0xd6>
nopl   0x0(%rax)
mov    (%r12),%rdx
test   %rdx,%rdx
je     145c <WPACKET_close+0x1bc>
mov    0x8(%rdx),%rdx
test   %rdx,%rdx
je     145c <WPACKET_close+0x1bc>
jmpq   12e7 <WPACKET_close+0x47>
nopl   0x0(%rax,%rax,1)
sub    %rdi,%rdx
mov    %rsi,0x10(%r12)
mov    %rdx,0x18(%r12)
jmpq   134b <WPACKET_close+0xab>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
jne    1410 <WPACKET_close+0x170>
mov    0x8(%rdi),%rdx
test   %rdx,%rdx
jne    140b <WPACKET_close+0x16b>
testb  $0x1,0x30(%r12)
jne    1567 <WPACKET_close+0x2c7>
mov    0x10(%r12),%rax
addq   $0x1,0x18(%r12)
add    $0x1,%rax
mov    %rax,0x10(%r12)
jmpq   1458 <WPACKET_close+0x1b8>
sub    %rcx,%rdx
add    0x20(%r12),%rdx
je     1571 <WPACKET_close+0x2d1>
sub    $0x1,%rdx
jmpq   1424 <WPACKET_close+0x184>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
jne    1410 <WPACKET_close+0x170>
testb  $0x1,0x30(%r12)
jne    1525 <WPACKET_close+0x285>
mov    0x10(%r12),%rcx
mov    0x18(%r12),%rax
add    $0x1,%rax
add    $0x1,%rcx
mov    %rax,0x18(%r12)
mov    %rcx,0x10(%r12)
jmpq   1458 <WPACKET_close+0x1b8>
mov    (%r12),%rdi
test   %rdi,%rdi
jne    1510 <WPACKET_close+0x270>
jmp    155f <WPACKET_close+0x2bf>
mov    %ebx,%esi
mov    $0x1,%r13d
jmpq   1378 <WPACKET_close+0xd8>
mov    0x20(%rbp),%ecx
jmpq   1367 <WPACKET_close+0xc7>
nopl   0x0(%rax)

00000000000015b0 <WPACKET_finish>:
push   %rbx
mov    0x28(%rdi),%rax
test   %rax,%rax
je     15c2 <WPACKET_finish+0x12>
mov    (%rax),%rdx
test   %rdx,%rdx
je     15d0 <WPACKET_finish+0x20>
xor    %eax,%eax
pop    %rbx
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    0x18(%rdi),%rsi
mov    %rsi,%rcx
sub    0x18(%rax),%rcx
jne    1650 <WPACKET_finish+0xa0>
mov    0x20(%rax),%r8d
test   $0x1,%r8b
jne    15c2 <WPACKET_finish+0x12>
and    $0x2,%r8d
je     1650 <WPACKET_finish+0xa0>
mov    0x10(%rax),%r8
mov    0x10(%rdi),%rcx
sub    %r8,%rcx
cmp    0x8(%rax),%rcx
je     16b8 <WPACKET_finish+0x108>
movq   $0x0,0x8(%rax)
movq   $0x0,0x10(%rax)
mov    %rdi,%rbx
mov    %rdx,0x28(%rdi)
mov    $0x0,%esi
mov    %rax,%rdi
mov    $0x120,%edx
callq  162b <WPACKET_finish+0x7b>
mov    0x28(%rbx),%rdi
mov    $0x14e,%edx
mov    $0x0,%esi
callq  163e <WPACKET_finish+0x8e>
movq   $0x0,0x28(%rbx)
mov    $0x1,%eax
pop    %rbx
retq   
nopl   (%rax)
mov    0x10(%rax),%r8
test   %r8,%r8
je     1612 <WPACKET_finish+0x62>
mov    0x8(%rdi),%rsi
test   %rsi,%rsi
je     1698 <WPACKET_finish+0xe8>
add    0x8(%rax),%rsi
je     1612 <WPACKET_finish+0x62>
lea    -0x1(%rsi,%r8,1),%rdx
mov    %rdx,%rsi
sub    %r8,%rsi
nopl   0x0(%rax,%rax,1)
mov    %cl,(%rdx)
sub    $0x1,%rdx
shr    $0x8,%rcx
cmp    %rdx,%rsi
jne    1678 <WPACKET_finish+0xc8>
test   %rcx,%rcx
jne    15c2 <WPACKET_finish+0x12>
mov    (%rax),%rdx
jmpq   1612 <WPACKET_finish+0x62>
mov    (%rdi),%rsi
test   %rsi,%rsi
je     1612 <WPACKET_finish+0x62>
mov    0x8(%rsi),%rsi
test   %rsi,%rsi
je     1612 <WPACKET_finish+0x62>
jmp    1662 <WPACKET_finish+0xb2>
nopl   0x0(%rax,%rax,1)
sub    %r8,%rsi
mov    %rcx,0x10(%rdi)
mov    %rsi,0x18(%rdi)
jmpq   1602 <WPACKET_finish+0x52>
nopl   0x0(%rax,%rax,1)

00000000000016d0 <WPACKET_start_sub_packet_len__>:
cmpq   $0x0,0x28(%rdi)
je     1838 <WPACKET_start_sub_packet_len__+0x168>
push   %rbp
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
sub    $0x8,%rsp
test   %rsi,%rsi
je     17b8 <WPACKET_start_sub_packet_len__+0xe8>
testb  $0x1,0x30(%rdi)
jne    17a8 <WPACKET_start_sub_packet_len__+0xd8>
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  170e <WPACKET_start_sub_packet_len__+0x3e>
test   %rax,%rax
je     1800 <WPACKET_start_sub_packet_len__+0x130>
mov    0x28(%rbx),%rdx
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
mov    %rbp,0x10(%rax)
lea    0x0(%rbp,%rdx,1),%rcx
mov    %rdx,0x8(%rax)
mov    %rcx,0x18(%rax)
mov    0x20(%rbx),%rax
sub    %rdx,%rax
cmp    %rax,%rbp
ja     17a8 <WPACKET_start_sub_packet_len__+0xd8>
mov    (%rbx),%rdi
test   %rdi,%rdi
je     1791 <WPACKET_start_sub_packet_len__+0xc1>
mov    (%rdi),%rax
mov    %rax,%rsi
sub    %rdx,%rsi
cmp    %rsi,%rbp
jbe    1791 <WPACKET_start_sub_packet_len__+0xc1>
cmp    %rax,%rbp
mov    $0xffffffffffffffff,%rsi
cmovae %rbp,%rax
test   %rax,%rax
js     1780 <WPACKET_start_sub_packet_len__+0xb0>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  1785 <WPACKET_start_sub_packet_len__+0xb5>
test   %rax,%rax
je     17a8 <WPACKET_start_sub_packet_len__+0xd8>
mov    %rbp,%rcx
add    0x18(%rbx),%rcx
mov    %rcx,0x18(%rbx)
add    %rbp,0x10(%rbx)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  17cc <WPACKET_start_sub_packet_len__+0xfc>
test   %rax,%rax
je     1800 <WPACKET_start_sub_packet_len__+0x130>
mov    0x28(%rbx),%rdx
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
movq   $0x0,0x10(%rax)
movq   $0x0,0x8(%rax)
mov    %rdx,0x18(%rax)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
callq  1805 <WPACKET_start_sub_packet_len__+0x135>
mov    $0x0,%edx
mov    $0x163,%esi
mov    $0x0,%edi
callq  1819 <WPACKET_start_sub_packet_len__+0x149>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  182c <WPACKET_start_sub_packet_len__+0x15c>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000001840 <WPACKET_start_sub_packet>:
cmpq   $0x0,0x28(%rdi)
je     1890 <WPACKET_start_sub_packet+0x50>
push   %rbx
mov    $0x162,%edx
mov    %rdi,%rbx
mov    $0x0,%esi
mov    $0x28,%edi
callq  185f <WPACKET_start_sub_packet+0x1f>
test   %rax,%rax
je     1898 <WPACKET_start_sub_packet+0x58>
mov    0x28(%rbx),%rdx
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
movq   $0x0,0x10(%rax)
movq   $0x0,0x8(%rax)
mov    %rdx,0x18(%rax)
mov    $0x1,%eax
pop    %rbx
retq   
xchg   %ax,%ax
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
callq  189d <WPACKET_start_sub_packet+0x5d>
mov    $0x0,%edx
mov    $0x163,%esi
mov    $0x0,%edi
callq  18b1 <WPACKET_start_sub_packet+0x71>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  18c4 <WPACKET_start_sub_packet+0x84>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

00000000000018d0 <WPACKET_put_bytes__>:
cmp    $0x4,%rdx
jbe    18e0 <WPACKET_put_bytes__+0x10>
xor    %eax,%eax
retq   
nopl   0x0(%rax)
cmpq   $0x0,0x28(%rdi)
je     18d6 <WPACKET_put_bytes__+0x6>
test   %rdx,%rdx
je     18d6 <WPACKET_put_bytes__+0x6>
mov    0x18(%rdi),%rcx
mov    0x20(%rdi),%rax
sub    %rcx,%rax
cmp    %rax,%rdx
ja     18d6 <WPACKET_put_bytes__+0x6>
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
mov    (%rdi),%rdi
mov    %rdx,%rbx
mov    %esi,%r12d
test   %rdi,%rdi
je     1a10 <WPACKET_put_bytes__+0x140>
mov    (%rdi),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
cmp    %rdx,%rbx
jbe    1980 <WPACKET_put_bytes__+0xb0>
cmp    %rax,%rbx
mov    $0xffffffffffffffff,%rsi
cmovae %rbx,%rax
test   %rax,%rax
js     194a <WPACKET_put_bytes__+0x7a>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  194f <WPACKET_put_bytes__+0x7f>
test   %rax,%rax
je     1975 <WPACKET_put_bytes__+0xa5>
mov    0x8(%rbp),%rax
test   %rax,%rax
je     1a30 <WPACKET_put_bytes__+0x160>
mov    0x18(%rbp),%rcx
jmp    198d <WPACKET_put_bytes__+0xbd>
nopw   0x0(%rax,%rax,1)
test   %rdx,%rdx
je     19e9 <WPACKET_put_bytes__+0x119>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
mov    0x8(%rbp),%rax
test   %rax,%rax
je     1a3d <WPACKET_put_bytes__+0x16d>
testb  $0x1,0x30(%rbp)
mov    0x10(%rbp),%rdx
jne    19f8 <WPACKET_put_bytes__+0x128>
add    %rdx,%rax
add    %rbx,%rcx
add    %rbx,%rdx
test   %rax,%rax
mov    %rcx,0x18(%rbp)
mov    %rdx,0x10(%rbp)
mov    %r12d,%ecx
je     19e9 <WPACKET_put_bytes__+0x119>
lea    -0x1(%rbx),%rsi
mov    %rcx,%rdx
shr    $0x8,%rdx
add    %rsi,%rax
test   %rsi,%rsi
mov    %r12b,(%rax)
je     1970 <WPACKET_put_bytes__+0xa0>
mov    %dl,-0x1(%rax)
mov    %rcx,%rdx
shr    $0x10,%rdx
cmp    $0x2,%rbx
je     1970 <WPACKET_put_bytes__+0xa0>
shr    $0x18,%rcx
cmp    $0x3,%rbx
mov    %dl,-0x2(%rax)
mov    %rcx,%rdx
je     1970 <WPACKET_put_bytes__+0xa0>
mov    %cl,-0x3(%rax)
pop    %rbx
mov    $0x1,%eax
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax,%rax,1)
sub    %rdx,%rax
add    0x20(%rbp),%rax
je     1a23 <WPACKET_put_bytes__+0x153>
sub    %rbx,%rax
jmp    199a <WPACKET_put_bytes__+0xca>
nopw   %cs:0x0(%rax,%rax,1)
mov    0x8(%rbp),%rax
test   %rax,%rax
jne    198d <WPACKET_put_bytes__+0xbd>
testb  $0x1,0x30(%rbp)
je     1a50 <WPACKET_put_bytes__+0x180>
add    %rbx,%rcx
add    %rbx,0x10(%rbp)
mov    %rcx,0x18(%rbp)
jmp    19e9 <WPACKET_put_bytes__+0x119>
mov    0x0(%rbp),%rdi
mov    0x18(%rbp),%rcx
test   %rdi,%rdi
je     1a1d <WPACKET_put_bytes__+0x14d>
mov    0x8(%rdi),%rax
test   %rax,%rax
jne    198d <WPACKET_put_bytes__+0xbd>
testb  $0x1,0x30(%rbp)
jne    1a23 <WPACKET_put_bytes__+0x153>
add    %rbx,%rcx
add    0x10(%rbp),%rbx
mov    %rcx,0x18(%rbp)
mov    %rbx,0x10(%rbp)
jmp    19e9 <WPACKET_put_bytes__+0x119>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001a70 <WPACKET_set_max_size>:
mov    0x28(%rdi),%rdx
test   %rdx,%rdx
jne    1a83 <WPACKET_set_max_size+0x13>
jmp    1ab0 <WPACKET_set_max_size+0x40>
nopl   0x0(%rax,%rax,1)
mov    %rax,%rdx
mov    (%rdx),%rax
test   %rax,%rax
jne    1a80 <WPACKET_set_max_size+0x10>
mov    0x10(%rdx),%rcx
lea    -0x1(%rcx),%rax
cmp    $0x6,%rax
jbe    1ab8 <WPACKET_set_max_size+0x48>
xor    %eax,%eax
cmp    0x18(%rdi),%rsi
jb     1ab2 <WPACKET_set_max_size+0x42>
mov    %rsi,0x20(%rdi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
repz retq 
nopl   0x0(%rax)
shl    $0x3,%ecx
mov    $0x1,%edx
shl    %cl,%rdx
add    %rax,%rdx
xor    %eax,%eax
cmp    %rdx,%rsi
jbe    1a99 <WPACKET_set_max_size+0x29>
repz retq 
nop

0000000000001ad0 <WPACKET_memset>:
test   %rdx,%rdx
jne    1ae0 <WPACKET_memset+0x10>
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
cmpq   $0x0,0x28(%rdi)
je     1b78 <WPACKET_memset+0xa8>
mov    0x18(%rdi),%rax
mov    0x20(%rdi),%rcx
sub    %rax,%rcx
cmp    %rcx,%rdx
ja     1b78 <WPACKET_memset+0xa8>
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %esi,%ebp
sub    $0x18,%rsp
mov    (%rdi),%rdi
test   %rdi,%rdi
je     1be0 <WPACKET_memset+0x110>
mov    (%rdi),%rcx
mov    %rcx,%rsi
sub    %rax,%rsi
cmp    %rsi,%rdx
jbe    1b80 <WPACKET_memset+0xb0>
cmp    %rcx,%rdx
mov    $0xffffffffffffffff,%rsi
cmovae %rdx,%rcx
test   %rcx,%rcx
js     1b47 <WPACKET_memset+0x77>
lea    (%rcx,%rcx,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
mov    %rdx,0x8(%rsp)
callq  1b51 <WPACKET_memset+0x81>
test   %rax,%rax
je     1c10 <WPACKET_memset+0x140>
mov    0x8(%rbx),%rcx
mov    0x8(%rsp),%rdx
test   %rcx,%rcx
je     1c14 <WPACKET_memset+0x144>
mov    0x18(%rbx),%rax
jmp    1b8d <WPACKET_memset+0xbd>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x8(%rbx),%rcx
test   %rcx,%rcx
je     1c20 <WPACKET_memset+0x150>
testb  $0x1,0x30(%rbx)
mov    0x10(%rbx),%rsi
jne    1bc8 <WPACKET_memset+0xf8>
lea    (%rcx,%rsi,1),%rdi
add    %rdx,%rax
add    %rdx,%rsi
test   %rdi,%rdi
mov    %rax,0x18(%rbx)
mov    %rsi,0x10(%rbx)
je     1c00 <WPACKET_memset+0x130>
mov    %ebp,%esi
callq  1bb5 <WPACKET_memset+0xe5>
mov    $0x1,%eax
add    $0x18,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
sub    %rsi,%rcx
mov    %rcx,%rdi
add    0x20(%rbx),%rdi
je     1bef <WPACKET_memset+0x11f>
sub    %rdx,%rdi
jmp    1b9b <WPACKET_memset+0xcb>
nopl   0x0(%rax)
mov    0x8(%rbx),%rcx
test   %rcx,%rcx
jne    1b8d <WPACKET_memset+0xbd>
testb  $0x1,0x30(%rbx)
je     1c33 <WPACKET_memset+0x163>
add    %rdx,0x10(%rbx)
add    %rdx,%rax
mov    %rax,0x18(%rbx)
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmp    1bba <WPACKET_memset+0xea>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    1bba <WPACKET_memset+0xea>
mov    (%rbx),%rdi
mov    0x18(%rbx),%rax
test   %rdi,%rdi
je     1be9 <WPACKET_memset+0x119>
mov    0x8(%rdi),%rcx
test   %rcx,%rcx
jne    1b8d <WPACKET_memset+0xbd>
testb  $0x1,0x30(%rbx)
jne    1bef <WPACKET_memset+0x11f>
add    %rdx,%rax
add    0x10(%rbx),%rdx
mov    %rax,0x18(%rbx)
mov    %rdx,0x10(%rbx)
jmp    1c00 <WPACKET_memset+0x130>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000001c50 <WPACKET_memcpy>:
test   %rdx,%rdx
jne    1c60 <WPACKET_memcpy+0x10>
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
cmpq   $0x0,0x28(%rdi)
je     1cf8 <WPACKET_memcpy+0xa8>
mov    0x18(%rdi),%rax
mov    0x20(%rdi),%rcx
sub    %rax,%rcx
cmp    %rcx,%rdx
ja     1cf8 <WPACKET_memcpy+0xa8>
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rbp
sub    $0x18,%rsp
mov    (%rdi),%rdi
test   %rdi,%rdi
je     1d60 <WPACKET_memcpy+0x110>
mov    (%rdi),%rcx
mov    %rcx,%rsi
sub    %rax,%rsi
cmp    %rsi,%rdx
jbe    1d00 <WPACKET_memcpy+0xb0>
cmp    %rcx,%rdx
mov    $0xffffffffffffffff,%rsi
cmovae %rdx,%rcx
test   %rcx,%rcx
js     1cc8 <WPACKET_memcpy+0x78>
lea    (%rcx,%rcx,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
mov    %rdx,0x8(%rsp)
callq  1cd2 <WPACKET_memcpy+0x82>
test   %rax,%rax
je     1d90 <WPACKET_memcpy+0x140>
mov    0x8(%rbx),%rcx
mov    0x8(%rsp),%rdx
test   %rcx,%rcx
je     1d94 <WPACKET_memcpy+0x144>
mov    0x18(%rbx),%rax
jmp    1d0d <WPACKET_memcpy+0xbd>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x8(%rbx),%rcx
test   %rcx,%rcx
je     1da0 <WPACKET_memcpy+0x150>
testb  $0x1,0x30(%rbx)
mov    0x10(%rbx),%rsi
jne    1d48 <WPACKET_memcpy+0xf8>
lea    (%rcx,%rsi,1),%rdi
add    %rdx,%rax
add    %rdx,%rsi
test   %rdi,%rdi
mov    %rax,0x18(%rbx)
mov    %rsi,0x10(%rbx)
je     1d80 <WPACKET_memcpy+0x130>
mov    %rbp,%rsi
callq  1d36 <WPACKET_memcpy+0xe6>
mov    $0x1,%eax
add    $0x18,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
sub    %rsi,%rcx
mov    %rcx,%rdi
add    0x20(%rbx),%rdi
je     1d6f <WPACKET_memcpy+0x11f>
sub    %rdx,%rdi
jmp    1d1b <WPACKET_memcpy+0xcb>
nopl   0x0(%rax)
mov    0x8(%rbx),%rcx
test   %rcx,%rcx
jne    1d0d <WPACKET_memcpy+0xbd>
testb  $0x1,0x30(%rbx)
je     1db3 <WPACKET_memcpy+0x163>
add    %rdx,0x10(%rbx)
add    %rdx,%rax
mov    %rax,0x18(%rbx)
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmp    1d3b <WPACKET_memcpy+0xeb>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    1d3b <WPACKET_memcpy+0xeb>
mov    (%rbx),%rdi
mov    0x18(%rbx),%rax
test   %rdi,%rdi
je     1d69 <WPACKET_memcpy+0x119>
mov    0x8(%rdi),%rcx
test   %rcx,%rcx
jne    1d0d <WPACKET_memcpy+0xbd>
testb  $0x1,0x30(%rbx)
jne    1d6f <WPACKET_memcpy+0x11f>
add    %rdx,%rax
add    0x10(%rbx),%rdx
mov    %rax,0x18(%rbx)
mov    %rdx,0x10(%rbx)
jmp    1d80 <WPACKET_memcpy+0x130>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000001dd0 <WPACKET_sub_memcpy__>:
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x10,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
cmpq   $0x0,0x28(%rdi)
je     1e88 <WPACKET_sub_memcpy__+0xb8>
test   %rcx,%rcx
mov    %rdi,%rbx
mov    %rsi,%r13
mov    %rdx,%r12
mov    %rcx,%rbp
je     1eb0 <WPACKET_sub_memcpy__+0xe0>
testb  $0x1,0x30(%rdi)
jne    1e88 <WPACKET_sub_memcpy__+0xb8>
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  1e26 <WPACKET_sub_memcpy__+0x56>
test   %rax,%rax
je     1f60 <WPACKET_sub_memcpy__+0x190>
mov    0x28(%rbx),%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
mov    %rsp,%r14
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
mov    %rbp,0x10(%rax)
lea    0x0(%rbp,%rdx,1),%rcx
mov    %rdx,0x8(%rax)
mov    %rsp,%rdx
mov    %rcx,0x18(%rax)
callq  1e60 <WPACKET_sub_memcpy__+0x90>
test   %eax,%eax
je     1e8a <WPACKET_sub_memcpy__+0xba>
add    %rbp,0x18(%rbx)
add    %rbp,0x10(%rbx)
test   %r12,%r12
jne    1f20 <WPACKET_sub_memcpy__+0x150>
mov    0x28(%rbx),%rsi
test   %rsi,%rsi
jne    1f96 <WPACKET_sub_memcpy__+0x1c6>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    1f91 <WPACKET_sub_memcpy__+0x1c1>
add    $0x10,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    $0x162,%edx
mov    $0x0,%esi
mov    $0x28,%edi
callq  1ec4 <WPACKET_sub_memcpy__+0xf4>
test   %rax,%rax
je     1f60 <WPACKET_sub_memcpy__+0x190>
mov    0x28(%rbx),%rdx
mov    0x18(%rbx),%rcx
test   %r12,%r12
mov    %rax,%rsi
mov    %rsp,%r14
mov    %rdx,(%rax)
mov    %rax,0x28(%rbx)
mov    %rcx,0x18(%rax)
movq   $0x0,0x10(%rax)
movq   $0x0,0x8(%rax)
jne    1f20 <WPACKET_sub_memcpy__+0x150>
test   %rdx,%rdx
je     1e88 <WPACKET_sub_memcpy__+0xb8>
mov    $0x1,%edx
mov    %rbx,%rdi
callq  1c0 <wpacket_intern_close>
test   %eax,%eax
setne  %al
movzbl %al,%eax
jmpq   1e8a <WPACKET_sub_memcpy__+0xba>
nopw   0x0(%rax,%rax,1)
mov    %r14,%rdx
mov    %r12,%rsi
mov    %rbx,%rdi
callq  1f2e <WPACKET_sub_memcpy__+0x15e>
test   %eax,%eax
je     1e8a <WPACKET_sub_memcpy__+0xba>
mov    (%rsp),%rdi
add    %r12,0x18(%rbx)
add    %r12,0x10(%rbx)
test   %rdi,%rdi
je     1e75 <WPACKET_sub_memcpy__+0xa5>
mov    %r12,%rdx
mov    %r13,%rsi
callq  1f56 <WPACKET_sub_memcpy__+0x186>
jmpq   1e75 <WPACKET_sub_memcpy__+0xa5>
nopl   0x0(%rax,%rax,1)
callq  1f65 <WPACKET_sub_memcpy__+0x195>
mov    $0x0,%edx
mov    $0x163,%esi
mov    $0x0,%edi
callq  1f79 <WPACKET_sub_memcpy__+0x1a9>
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
xor    %eax,%eax
callq  1f8c <WPACKET_sub_memcpy__+0x1bc>
jmpq   1e88 <WPACKET_sub_memcpy__+0xb8>
callq  1f96 <WPACKET_sub_memcpy__+0x1c6>
mov    (%rsi),%rdx
jmpq   1efb <WPACKET_sub_memcpy__+0x12b>
xchg   %ax,%ax

0000000000001fa0 <WPACKET_get_total_written>:
test   %rsi,%rsi
je     1fb8 <WPACKET_get_total_written+0x18>
mov    0x18(%rdi),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000001fc0 <WPACKET_get_length>:
test   %rsi,%rsi
mov    0x28(%rdi),%rdx
je     1fe0 <WPACKET_get_length+0x20>
test   %rdx,%rdx
je     1fe0 <WPACKET_get_length+0x20>
mov    0x18(%rdi),%rax
sub    0x18(%rdx),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nop
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000001ff0 <WPACKET_get_curr>:
mov    0x8(%rdi),%rax
test   %rax,%rax
je     2018 <WPACKET_get_curr+0x28>
testb  $0x1,0x30(%rdi)
jne    2008 <WPACKET_get_curr+0x18>
add    0x10(%rdi),%rax
retq   
nopl   0x0(%rax)
sub    0x10(%rdi),%rax
add    0x20(%rdi),%rax
retq   
nopl   0x0(%rax)
mov    (%rdi),%rax
test   %rax,%rax
je     2029 <WPACKET_get_curr+0x39>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    1ff9 <WPACKET_get_curr+0x9>
xor    %eax,%eax
retq   
nopl   0x0(%rax)

0000000000002030 <WPACKET_is_null_buf>:
xor    %eax,%eax
cmpq   $0x0,(%rdi)
je     2040 <WPACKET_is_null_buf+0x10>
repz retq 
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
cmpq   $0x0,0x8(%rdi)
sete   %al
retq   
nopl   0x0(%rax,%rax,1)

0000000000002050 <WPACKET_cleanup>:
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x8,%rsp
mov    0x28(%rdi),%rdi
test   %rdi,%rdi
je     2082 <WPACKET_cleanup+0x32>
nopw   0x0(%rax,%rax,1)
mov    (%rdi),%rbx
mov    $0x1fd,%edx
mov    $0x0,%esi
callq  207a <WPACKET_cleanup+0x2a>
test   %rbx,%rbx
mov    %rbx,%rdi
jne    2068 <WPACKET_cleanup+0x18>
movq   $0x0,0x28(%rbp)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
