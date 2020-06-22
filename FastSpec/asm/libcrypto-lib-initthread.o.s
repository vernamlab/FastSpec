
openssl_crypto_dump/libcrypto-lib-initthread.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <create_global_tevent_register_ossl_>:
push   %rbx
lea    0x0(%rip),%rsi        # 8 <create_global_tevent_register_ossl_+0x8>
mov    $0x37,%edx
mov    $0x10,%edi
callq  17 <create_global_tevent_register_ossl_+0x17>
mov    %rax,%rbx
mov    %rax,0x0(%rip)        # 21 <create_global_tevent_register_ossl_+0x21>
xor    %eax,%eax
test   %rbx,%rbx
je     5b <create_global_tevent_register_ossl_+0x5b>
callq  2d <create_global_tevent_register_ossl_+0x2d>
mov    %rax,(%rbx)
mov    0x0(%rip),%rbx        # 37 <create_global_tevent_register_ossl_+0x37>
callq  3c <create_global_tevent_register_ossl_+0x3c>
mov    0x0(%rip),%rdx        # 43 <create_global_tevent_register_ossl_+0x43>
mov    %rax,0x8(%rbx)
mov    (%rdx),%rdi
test   %rdi,%rdi
je     68 <create_global_tevent_register_ossl_+0x68>
cmpq   $0x0,0x8(%rdx)
mov    $0x1,%eax
je     68 <create_global_tevent_register_ossl_+0x68>
mov    %eax,0x0(%rip)        # 61 <create_global_tevent_register_ossl_+0x61>
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
callq  6d <create_global_tevent_register_ossl_+0x6d>
mov    0x0(%rip),%rax        # 74 <create_global_tevent_register_ossl_+0x74>
mov    0x8(%rax),%rdi
callq  7d <create_global_tevent_register_ossl_+0x7d>
mov    0x0(%rip),%rdi        # 84 <create_global_tevent_register_ossl_+0x84>
lea    0x0(%rip),%rsi        # 8b <create_global_tevent_register_ossl_+0x8b>
mov    $0x40,%edx
callq  95 <create_global_tevent_register_ossl_+0x95>
xor    %eax,%eax
movq   $0x0,0x0(%rip)        # a2 <create_global_tevent_register_ossl_+0xa2>
mov    %eax,0x0(%rip)        # a8 <create_global_tevent_register_ossl_+0xa8>
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)

00000000000000b0 <init_thread_destructor>:
test   %rdi,%rdi
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
je     f7 <init_thread_destructor+0x47>
mov    (%rdi),%rbx
test   %rbx,%rbx
je     f7 <init_thread_destructor+0x47>
nopl   0x0(%rax)
mov    0x8(%rbx),%rdi
callq  *0x10(%rbx)
mov    0x18(%rbx),%rax
lea    0x0(%rip),%rsi        # da <init_thread_destructor+0x2a>
mov    %rbx,%rdi
mov    $0x142,%edx
mov    %rax,0x0(%rbp)
mov    0x18(%rbx),%r12
callq  ef <init_thread_destructor+0x3f>
test   %r12,%r12
mov    %r12,%rbx
jne    c8 <init_thread_destructor+0x18>
lea    -0xfe(%rip),%rsi        # 0 <create_global_tevent_register_ossl_>
lea    0x0(%rip),%rdi        # 105 <init_thread_destructor+0x55>
callq  10a <init_thread_destructor+0x5a>
test   %eax,%eax
je     162 <init_thread_destructor+0xb2>
mov    0x0(%rip),%eax        # 114 <init_thread_destructor+0x64>
test   %eax,%eax
je     162 <init_thread_destructor+0xb2>
mov    0x0(%rip),%r12        # 11f <init_thread_destructor+0x6f>
test   %r12,%r12
je     162 <init_thread_destructor+0xb2>
mov    0x8(%r12),%rdi
xor    %ebx,%ebx
callq  130 <init_thread_destructor+0x80>
jmp    14b <init_thread_destructor+0x9b>
nopw   0x0(%rax,%rax,1)
mov    (%r12),%rdi
mov    %ebx,%esi
callq  143 <init_thread_destructor+0x93>
cmp    %rax,%rbp
je     180 <init_thread_destructor+0xd0>
add    $0x1,%ebx
mov    (%r12),%rdi
callq  154 <init_thread_destructor+0xa4>
cmp    %eax,%ebx
jl     138 <init_thread_destructor+0x88>
mov    0x8(%r12),%rdi
callq  162 <init_thread_destructor+0xb2>
pop    %rbx
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # 16d <init_thread_destructor+0xbd>
mov    $0xc0,%edx
pop    %rbp
pop    %r12
jmpq   17a <init_thread_destructor+0xca>
nopw   0x0(%rax,%rax,1)
mov    (%r12),%rdi
mov    %ebx,%esi
callq  18b <init_thread_destructor+0xdb>
mov    0x8(%r12),%rdi
callq  195 <init_thread_destructor+0xe5>
jmp    162 <init_thread_destructor+0xb2>
nopw   0x0(%rax,%rax,1)

00000000000001a0 <ossl_init_thread>:
lea    -0xf7(%rip),%rsi        # b0 <init_thread_destructor>
lea    0x0(%rip),%rdi        # 1ae <ossl_init_thread+0xe>
sub    $0x8,%rsp
callq  1b7 <ossl_init_thread+0x17>
test   %eax,%eax
setne  %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000001d0 <ossl_cleanup_thread>:
push   %r13
push   %r12
lea    -0x1db(%rip),%rsi        # 0 <create_global_tevent_register_ossl_>
push   %rbp
push   %rbx
lea    0x0(%rip),%rdi        # 1e4 <ossl_cleanup_thread+0x14>
sub    $0x8,%rsp
callq  1ed <ossl_cleanup_thread+0x1d>
test   %eax,%eax
je     2b1 <ossl_cleanup_thread+0xe1>
mov    0x0(%rip),%eax        # 1fb <ossl_cleanup_thread+0x2b>
test   %eax,%eax
je     2b1 <ossl_cleanup_thread+0xe1>
mov    0x0(%rip),%r13        # 20a <ossl_cleanup_thread+0x3a>
test   %r13,%r13
je     2b1 <ossl_cleanup_thread+0xe1>
mov    0x0(%r13),%rdi
xor    %r12d,%r12d
callq  21f <ossl_cleanup_thread+0x4f>
cmp    %eax,%r12d
jge    28b <ossl_cleanup_thread+0xbb>
nopl   0x0(%rax)
mov    0x0(%r13),%rdi
mov    %r12d,%esi
callq  234 <ossl_cleanup_thread+0x64>
mov    (%rax),%rdi
mov    %rax,%rbp
test   %rdi,%rdi
je     265 <ossl_cleanup_thread+0x95>
nop
mov    0x18(%rdi),%rax
lea    0x0(%rip),%rsi        # 24b <ossl_cleanup_thread+0x7b>
mov    $0x19a,%edx
mov    %rax,0x0(%rbp)
mov    0x18(%rdi),%rbx
callq  25d <ossl_cleanup_thread+0x8d>
test   %rbx,%rbx
mov    %rbx,%rdi
jne    240 <ossl_cleanup_thread+0x70>
lea    0x0(%rip),%rsi        # 26c <ossl_cleanup_thread+0x9c>
mov    $0x1a1,%edx
mov    %rbp,%rdi
add    $0x1,%r12d
callq  27d <ossl_cleanup_thread+0xad>
mov    0x0(%r13),%rdi
callq  286 <ossl_cleanup_thread+0xb6>
cmp    %eax,%r12d
jl     228 <ossl_cleanup_thread+0x58>
mov    0x8(%r13),%rdi
callq  294 <ossl_cleanup_thread+0xc4>
mov    0x0(%r13),%rdi
callq  29d <ossl_cleanup_thread+0xcd>
lea    0x0(%rip),%rsi        # 2a4 <ossl_cleanup_thread+0xd4>
mov    $0x1a6,%edx
mov    %r13,%rdi
callq  2b1 <ossl_cleanup_thread+0xe1>
lea    0x0(%rip),%rdi        # 2b8 <ossl_cleanup_thread+0xe8>
callq  2bd <ossl_cleanup_thread+0xed>
movq   $0xffffffffffffffff,0x0(%rip)        # 2c8 <ossl_cleanup_thread+0xf8>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000002e0 <OPENSSL_thread_stop>:
cmpq   $0xffffffffffffffff,0x0(%rip)        # 2e8 <OPENSSL_thread_stop+0x8>
je     3d8 <OPENSSL_thread_stop+0xf8>
push   %r12
lea    0x0(%rip),%rdi        # 2f7 <OPENSSL_thread_stop+0x17>
push   %rbp
push   %rbx
callq  2fe <OPENSSL_thread_stop+0x1e>
lea    0x0(%rip),%rdi        # 305 <OPENSSL_thread_stop+0x25>
mov    %rax,%rbp
xor    %esi,%esi
callq  30f <OPENSSL_thread_stop+0x2f>
test   %rbp,%rbp
je     34f <OPENSSL_thread_stop+0x6f>
mov    0x0(%rbp),%rbx
test   %rbx,%rbx
je     34f <OPENSSL_thread_stop+0x6f>
nopl   (%rax)
mov    0x8(%rbx),%rdi
callq  *0x10(%rbx)
mov    0x18(%rbx),%rax
lea    0x0(%rip),%rsi        # 332 <OPENSSL_thread_stop+0x52>
mov    %rbx,%rdi
mov    $0x142,%edx
mov    %rax,0x0(%rbp)
mov    0x18(%rbx),%r12
callq  347 <OPENSSL_thread_stop+0x67>
test   %r12,%r12
mov    %r12,%rbx
jne    320 <OPENSSL_thread_stop+0x40>
lea    -0x356(%rip),%rsi        # 0 <create_global_tevent_register_ossl_>
lea    0x0(%rip),%rdi        # 35d <OPENSSL_thread_stop+0x7d>
callq  362 <OPENSSL_thread_stop+0x82>
test   %eax,%eax
je     3ba <OPENSSL_thread_stop+0xda>
mov    0x0(%rip),%eax        # 36c <OPENSSL_thread_stop+0x8c>
test   %eax,%eax
je     3ba <OPENSSL_thread_stop+0xda>
mov    0x0(%rip),%r12        # 377 <OPENSSL_thread_stop+0x97>
test   %r12,%r12
je     3ba <OPENSSL_thread_stop+0xda>
mov    0x8(%r12),%rdi
xor    %ebx,%ebx
callq  388 <OPENSSL_thread_stop+0xa8>
jmp    3a3 <OPENSSL_thread_stop+0xc3>
nopw   0x0(%rax,%rax,1)
mov    (%r12),%rdi
mov    %ebx,%esi
callq  39b <OPENSSL_thread_stop+0xbb>
cmp    %rax,%rbp
je     3e0 <OPENSSL_thread_stop+0x100>
add    $0x1,%ebx
mov    (%r12),%rdi
callq  3ac <OPENSSL_thread_stop+0xcc>
cmp    %eax,%ebx
jl     390 <OPENSSL_thread_stop+0xb0>
mov    0x8(%r12),%rdi
callq  3ba <OPENSSL_thread_stop+0xda>
pop    %rbx
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # 3c5 <OPENSSL_thread_stop+0xe5>
mov    $0xe6,%edx
pop    %rbp
pop    %r12
jmpq   3d2 <OPENSSL_thread_stop+0xf2>
nopw   0x0(%rax,%rax,1)
repz retq 
nopw   0x0(%rax,%rax,1)
mov    (%r12),%rdi
mov    %ebx,%esi
callq  3eb <OPENSSL_thread_stop+0x10b>
mov    0x8(%r12),%rdi
callq  3f5 <OPENSSL_thread_stop+0x115>
jmp    3ba <OPENSSL_thread_stop+0xda>
nopw   0x0(%rax,%rax,1)

0000000000000400 <ossl_ctx_thread_stop>:
cmpq   $0xffffffffffffffff,0x0(%rip)        # 408 <ossl_ctx_thread_stop+0x8>
je     478 <ossl_ctx_thread_stop+0x78>
push   %r14
push   %r13
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
lea    0x0(%rip),%rdi        # 41c <ossl_ctx_thread_stop+0x1c>
callq  421 <ossl_ctx_thread_stop+0x21>
test   %rax,%rax
mov    %rax,%r13
je     470 <ossl_ctx_thread_stop+0x70>
mov    (%rax),%rbx
test   %rbx,%rbx
je     470 <ossl_ctx_thread_stop+0x70>
xor    %r12d,%r12d
test   %rbp,%rbp
jne    48c <ossl_ctx_thread_stop+0x8c>
nopl   0x0(%rax)
mov    0x8(%rbx),%rdi
callq  *0x10(%rbx)
mov    0x18(%rbx),%rax
lea    0x0(%rip),%rsi        # 452 <ossl_ctx_thread_stop+0x52>
mov    %rbx,%rdi
mov    $0x142,%edx
mov    %rax,0x0(%r13)
mov    0x18(%rbx),%rbp
callq  467 <ossl_ctx_thread_stop+0x67>
test   %rbp,%rbp
mov    %rbp,%rbx
jne    440 <ossl_ctx_thread_stop+0x40>
nop
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
repz retq 
nopw   0x0(%rax,%rax,1)
mov    %rbx,%r12
mov    0x18(%rbx),%rbx
test   %rbx,%rbx
je     470 <ossl_ctx_thread_stop+0x70>
cmp    0x8(%rbx),%rbp
jne    480 <ossl_ctx_thread_stop+0x80>
mov    %rbp,%rdi
callq  *0x10(%rbx)
test   %r12,%r12
mov    0x18(%rbx),%rax
je     4c8 <ossl_ctx_thread_stop+0xc8>
mov    %rax,0x18(%r12)
mov    0x18(%rbx),%r14
lea    0x0(%rip),%rsi        # 4b1 <ossl_ctx_thread_stop+0xb1>
mov    %rbx,%rdi
mov    $0x142,%edx
callq  4be <ossl_ctx_thread_stop+0xbe>
mov    %r14,%rbx
jmp    487 <ossl_ctx_thread_stop+0x87>
nopl   0x0(%rax,%rax,1)
mov    %rax,0x0(%r13)
jmp    4a6 <ossl_ctx_thread_stop+0xa6>
xchg   %ax,%ax

00000000000004d0 <OPENSSL_thread_stop_ex>:
sub    $0x8,%rsp
callq  4d9 <OPENSSL_thread_stop_ex+0x9>
add    $0x8,%rsp
mov    %rax,%rdi
jmpq   4e5 <OPENSSL_thread_stop_ex+0x15>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000004f0 <ossl_init_thread_start>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %rdi,%rbp
lea    0x0(%rip),%rdi        # 507 <ossl_init_thread_start+0x17>
mov    %rsi,%r12
sub    $0x8,%rsp
callq  513 <ossl_init_thread_start+0x23>
test   %rax,%rax
mov    %rax,%rbx
je     568 <ossl_init_thread_start+0x78>
lea    0x0(%rip),%rsi        # 522 <ossl_init_thread_start+0x32>
mov    $0x170,%edx
mov    $0x20,%edi
callq  531 <ossl_init_thread_start+0x41>
test   %rax,%rax
je     628 <ossl_init_thread_start+0x138>
mov    %r13,0x10(%rax)
mov    %r12,0x8(%rax)
mov    %rbp,(%rax)
mov    (%rbx),%rdx
mov    %rdx,0x18(%rax)
mov    %rax,(%rbx)
add    $0x8,%rsp
pop    %rbx
mov    $0x1,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 56f <ossl_init_thread_start+0x7f>
mov    $0x60,%edx
mov    $0x8,%edi
callq  57e <ossl_init_thread_start+0x8e>
test   %rax,%rax
mov    %rax,%rbx
je     628 <ossl_init_thread_start+0x138>
lea    0x0(%rip),%rdi        # 591 <ossl_init_thread_start+0xa1>
mov    %rax,%rsi
callq  599 <ossl_init_thread_start+0xa9>
test   %eax,%eax
je     639 <ossl_init_thread_start+0x149>
lea    -0x5a8(%rip),%rsi        # 0 <create_global_tevent_register_ossl_>
lea    0x0(%rip),%rdi        # 5af <ossl_init_thread_start+0xbf>
callq  5b4 <ossl_init_thread_start+0xc4>
test   %eax,%eax
je     600 <ossl_init_thread_start+0x110>
mov    0x0(%rip),%eax        # 5be <ossl_init_thread_start+0xce>
test   %eax,%eax
je     600 <ossl_init_thread_start+0x110>
mov    0x0(%rip),%r14        # 5c9 <ossl_init_thread_start+0xd9>
test   %r14,%r14
je     600 <ossl_init_thread_start+0x110>
mov    0x8(%r14),%rdi
callq  5d7 <ossl_init_thread_start+0xe7>
mov    (%r14),%rdi
mov    %rbx,%rsi
callq  5e2 <ossl_init_thread_start+0xf2>
mov    0x8(%r14),%rdi
mov    %eax,%r15d
callq  5ee <ossl_init_thread_start+0xfe>
test   %r15d,%r15d
jne    51b <ossl_init_thread_start+0x2b>
nopw   0x0(%rax,%rax,1)
lea    0x0(%rip),%rdi        # 607 <ossl_init_thread_start+0x117>
xor    %esi,%esi
callq  60e <ossl_init_thread_start+0x11e>
lea    0x0(%rip),%rsi        # 615 <ossl_init_thread_start+0x125>
mov    $0x6b,%edx
mov    %rbx,%rdi
callq  622 <ossl_init_thread_start+0x132>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
lea    0x0(%rip),%rsi        # 640 <ossl_init_thread_start+0x150>
mov    $0x64,%edx
mov    %rbx,%rdi
callq  64d <ossl_init_thread_start+0x15d>
xor    %eax,%eax
jmp    62a <ossl_init_thread_start+0x13a>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000660 <ossl_init_thread_deregister>:
push   %r15
push   %r14
lea    -0x66b(%rip),%rsi        # 0 <create_global_tevent_register_ossl_>
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbp
lea    0x0(%rip),%rdi        # 67b <ossl_init_thread_deregister+0x1b>
sub    $0x8,%rsp
callq  684 <ossl_init_thread_deregister+0x24>
test   %eax,%eax
je     708 <ossl_init_thread_deregister+0xa8>
mov    0x0(%rip),%eax        # 692 <ossl_init_thread_deregister+0x32>
test   %eax,%eax
je     708 <ossl_init_thread_deregister+0xa8>
mov    0x0(%rip),%r14        # 69d <ossl_init_thread_deregister+0x3d>
test   %r14,%r14
je     755 <ossl_init_thread_deregister+0xf5>
mov    0x8(%r14),%rdi
xor    %r12d,%r12d
callq  6b2 <ossl_init_thread_deregister+0x52>
mov    (%r14),%rdi
callq  6ba <ossl_init_thread_deregister+0x5a>
cmp    %eax,%r12d
jge    6fa <ossl_init_thread_deregister+0x9a>
nop
mov    (%r14),%rdi
mov    %r12d,%esi
xor    %ebx,%ebx
callq  6cd <ossl_init_thread_deregister+0x6d>
mov    (%rax),%rdi
mov    %rax,%r15
test   %rdi,%rdi
je     6e9 <ossl_init_thread_deregister+0x89>
cmp    (%rdi),%rbp
je     720 <ossl_init_thread_deregister+0xc0>
mov    %rdi,%rbx
mov    0x18(%rdi),%rdi
test   %rdi,%rdi
jne    6d8 <ossl_init_thread_deregister+0x78>
mov    (%r14),%rdi
add    $0x1,%r12d
callq  6f5 <ossl_init_thread_deregister+0x95>
cmp    %eax,%r12d
jl     6c0 <ossl_init_thread_deregister+0x60>
mov    0x8(%r14),%rdi
callq  703 <ossl_init_thread_deregister+0xa3>
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopw   0x0(%rax,%rax,1)
test   %rbx,%rbx
mov    0x18(%rdi),%rax
je     750 <ossl_init_thread_deregister+0xf0>
mov    %rax,0x18(%rbx)
mov    0x18(%rdi),%r13
lea    0x0(%rip),%rsi        # 738 <ossl_init_thread_deregister+0xd8>
mov    $0x19a,%edx
callq  742 <ossl_init_thread_deregister+0xe2>
mov    %r13,%rdi
jmp    6d3 <ossl_init_thread_deregister+0x73>
nopw   0x0(%rax,%rax,1)
mov    %rax,(%r15)
jmp    72d <ossl_init_thread_deregister+0xcd>
xor    %eax,%eax
jmp    708 <ossl_init_thread_deregister+0xa8>
