
openssl_crypto_dump/libssl-lib-packet.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <WPACKET_init_der>:
test   %rsi,%rsi
je     60 <WPACKET_init_der+0x60>
test   %rdx,%rdx
je     60 <WPACKET_init_der+0x60>
push   %rbx
orb    $0x1,0x30(%rdi)
mov    %rdi,%rbx
mov    %rsi,0x8(%rdi)
lea    0x0(%rip),%rsi        # 1d <WPACKET_init_der+0x1d>
mov    %rdx,0x20(%rdi)
movq   $0x0,(%rdi)
movq   $0x0,0x10(%rdi)
mov    $0x6b,%edx
movq   $0x0,0x18(%rdi)
mov    $0x28,%edi
callq  47 <WPACKET_init_der+0x47>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     68 <WPACKET_init_der+0x68>
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
callq  6d <WPACKET_init_der+0x6d>
lea    0x0(%rip),%rdx        # 74 <WPACKET_init_der+0x74>
lea    0x0(%rip),%rdi        # 7b <WPACKET_init_der+0x7b>
mov    $0x6c,%esi
callq  85 <WPACKET_init_der+0x85>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  98 <WPACKET_init_der+0x98>
xor    %eax,%eax
pop    %rbx
retq   
nopl   0x0(%rax)

00000000000000a0 <WPACKET_init_null>:
lea    -0x1(%rsi),%rdx
push   %rbx
mov    $0xffffffffffffffff,%rax
mov    %rdi,%rbx
movq   $0x0,0x8(%rdi)
movq   $0x0,(%rdi)
cmp    $0x6,%rdx
ja     d6 <WPACKET_init_null+0x36>
lea    0x0(,%rsi,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rdx,%rax
andb   $0xfe,0x30(%rbx)
lea    0x0(%rip),%rsi        # e1 <WPACKET_init_null+0x41>
mov    $0x6b,%edx
mov    %rax,0x20(%rbx)
movq   $0x0,0x10(%rbx)
mov    $0x28,%edi
movq   $0x0,0x18(%rbx)
callq  104 <WPACKET_init_null+0x64>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     120 <WPACKET_init_null+0x80>
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)
callq  125 <WPACKET_init_null+0x85>
lea    0x0(%rip),%rdx        # 12c <WPACKET_init_null+0x8c>
lea    0x0(%rip),%rdi        # 133 <WPACKET_init_null+0x93>
mov    $0x6c,%esi
callq  13d <WPACKET_init_null+0x9d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  150 <WPACKET_init_null+0xb0>
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000160 <WPACKET_init_null_der>:
push   %rbx
orb    $0x1,0x30(%rdi)
lea    0x0(%rip),%rsi        # 16c <WPACKET_init_null_der+0xc>
mov    %rdi,%rbx
movq   $0x0,0x8(%rdi)
movq   $0x0,(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
movq   $0x0,0x10(%rdi)
mov    $0x6b,%edx
movq   $0x0,0x18(%rdi)
mov    $0x28,%edi
callq  1a5 <WPACKET_init_null_der+0x45>
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
mov    $0x1,%eax
test   %rdx,%rdx
je     1c0 <WPACKET_init_null_der+0x60>
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
callq  1c5 <WPACKET_init_null_der+0x65>
lea    0x0(%rip),%rdx        # 1cc <WPACKET_init_null_der+0x6c>
lea    0x0(%rip),%rdi        # 1d3 <WPACKET_init_null_der+0x73>
mov    $0x6c,%esi
callq  1dd <WPACKET_init_null_der+0x7d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  1f0 <WPACKET_init_null_der+0x90>
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000200 <WPACKET_set_flags>:
mov    0x28(%rdi),%rax
test   %rax,%rax
je     218 <WPACKET_set_flags+0x18>
mov    %esi,0x20(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000000220 <WPACKET_set_max_size>:
mov    0x28(%rdi),%rdx
test   %rdx,%rdx
jne    233 <WPACKET_set_max_size+0x13>
jmp    260 <WPACKET_set_max_size+0x40>
nopl   0x0(%rax,%rax,1)
mov    %rax,%rdx
mov    (%rdx),%rax
test   %rax,%rax
jne    230 <WPACKET_set_max_size+0x10>
mov    0x10(%rdx),%rcx
lea    -0x1(%rcx),%rax
cmp    $0x6,%rax
jbe    268 <WPACKET_set_max_size+0x48>
xor    %eax,%eax
cmp    0x18(%rdi),%rsi
jb     262 <WPACKET_set_max_size+0x42>
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
jbe    249 <WPACKET_set_max_size+0x29>
repz retq 
nop

0000000000000280 <WPACKET_get_total_written>:
test   %rsi,%rsi
je     298 <WPACKET_get_total_written+0x18>
mov    0x18(%rdi),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)

00000000000002a0 <WPACKET_get_length>:
test   %rsi,%rsi
mov    0x28(%rdi),%rdx
je     2c0 <WPACKET_get_length+0x20>
test   %rdx,%rdx
je     2c0 <WPACKET_get_length+0x20>
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

00000000000002d0 <WPACKET_get_curr>:
mov    0x8(%rdi),%rax
test   %rax,%rax
je     2f8 <WPACKET_get_curr+0x28>
testb  $0x1,0x30(%rdi)
jne    2e8 <WPACKET_get_curr+0x18>
add    0x10(%rdi),%rax
retq   
nopl   0x0(%rax)
sub    0x10(%rdi),%rax
add    0x20(%rdi),%rax
retq   
nopl   0x0(%rax)
mov    (%rdi),%rax
test   %rax,%rax
je     309 <WPACKET_get_curr+0x39>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    2d9 <WPACKET_get_curr+0x9>
xor    %eax,%eax
retq   
nopl   0x0(%rax)

0000000000000310 <WPACKET_reserve_bytes>:
cmpq   $0x0,0x28(%rdi)
je     388 <WPACKET_reserve_bytes+0x78>
test   %rsi,%rsi
je     388 <WPACKET_reserve_bytes+0x78>
mov    0x18(%rdi),%rcx
mov    0x20(%rdi),%rax
sub    %rcx,%rax
cmp    %rax,%rsi
ja     388 <WPACKET_reserve_bytes+0x78>
push   %r12
push   %rbp
mov    %rdx,%r12
push   %rbx
mov    %rdi,%rbx
mov    (%rdi),%rdi
mov    %rsi,%rbp
test   %rdi,%rdi
je     390 <WPACKET_reserve_bytes+0x80>
mov    (%rdi),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
cmp    %rdx,%rsi
jbe    390 <WPACKET_reserve_bytes+0x80>
cmp    %rax,%rsi
cmovae %rsi,%rax
mov    $0xffffffffffffffff,%rsi
test   %rax,%rax
js     376 <WPACKET_reserve_bytes+0x66>
lea    (%rax,%rax,1),%rsi
mov    $0x100,%eax
cmp    $0xff,%rsi
cmovbe %rax,%rsi
callq  37b <WPACKET_reserve_bytes+0x6b>
test   %rax,%rax
jne    390 <WPACKET_reserve_bytes+0x80>
xor    %eax,%eax
jmp    3b8 <WPACKET_reserve_bytes+0xa8>
nopl   0x0(%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
test   %r12,%r12
je     3b3 <WPACKET_reserve_bytes+0xa3>
mov    %rbx,%rdi
callq  39d <WPACKET_reserve_bytes+0x8d>
test   %rax,%rax
mov    %rax,(%r12)
je     3b3 <WPACKET_reserve_bytes+0xa3>
testb  $0x1,0x30(%rbx)
je     3b3 <WPACKET_reserve_bytes+0xa3>
sub    %rbp,%rax
mov    %rax,(%r12)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   (%rax)

00000000000003c0 <WPACKET_allocate_bytes>:
push   %rbp
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
sub    $0x8,%rsp
callq  3d1 <WPACKET_allocate_bytes+0x11>
test   %eax,%eax
je     3e2 <WPACKET_allocate_bytes+0x22>
add    %rbp,0x18(%rbx)
add    %rbp,0x10(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)

00000000000003f0 <WPACKET_start_sub_packet_len__>:
push   %rbp
push   %rbx
sub    $0x18,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
cmpq   $0x0,0x28(%rdi)
je     520 <WPACKET_start_sub_packet_len__+0x130>
test   %rsi,%rsi
mov    %rdi,%rbx
mov    %rsi,%rbp
je     498 <WPACKET_start_sub_packet_len__+0xa8>
testb  $0x1,0x30(%rdi)
jne    477 <WPACKET_start_sub_packet_len__+0x87>
lea    0x0(%rip),%rsi        # 429 <WPACKET_start_sub_packet_len__+0x39>
mov    $0x162,%edx
mov    $0x28,%edi
callq  438 <WPACKET_start_sub_packet_len__+0x48>
test   %rax,%rax
je     4e0 <WPACKET_start_sub_packet_len__+0xf0>
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
callq  46f <WPACKET_start_sub_packet_len__+0x7f>
test   %eax,%eax
setne  %al
movzbl %al,%eax
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    527 <WPACKET_start_sub_packet_len__+0x137>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 49f <WPACKET_start_sub_packet_len__+0xaf>
mov    $0x162,%edx
mov    $0x28,%edi
callq  4ae <WPACKET_start_sub_packet_len__+0xbe>
test   %rax,%rax
je     4e0 <WPACKET_start_sub_packet_len__+0xf0>
mov    0x28(%rbx),%rdx
mov    %rdx,(%rax)
mov    0x18(%rbx),%rdx
mov    %rax,0x28(%rbx)
movq   $0x0,0x10(%rax)
movq   $0x0,0x8(%rax)
mov    %rdx,0x18(%rax)
mov    $0x1,%eax
jmp    477 <WPACKET_start_sub_packet_len__+0x87>
nopl   (%rax)
callq  4e5 <WPACKET_start_sub_packet_len__+0xf5>
lea    0x0(%rip),%rdx        # 4ec <WPACKET_start_sub_packet_len__+0xfc>
lea    0x0(%rip),%rdi        # 4f3 <WPACKET_start_sub_packet_len__+0x103>
mov    $0x163,%esi
callq  4fd <WPACKET_start_sub_packet_len__+0x10d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  510 <WPACKET_start_sub_packet_len__+0x120>
xor    %eax,%eax
jmpq   477 <WPACKET_start_sub_packet_len__+0x87>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
jmpq   477 <WPACKET_start_sub_packet_len__+0x87>
callq  52c <WPACKET_start_sub_packet_len__+0x13c>
nopl   0x0(%rax)

0000000000000530 <WPACKET_start_sub_packet>:
xor    %esi,%esi
jmpq   537 <WPACKET_start_sub_packet+0x7>
nopw   0x0(%rax,%rax,1)

0000000000000540 <WPACKET_put_bytes__>:
push   %rbp
push   %rbx
sub    $0x18,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
cmp    $0x4,%rdx
jbe    578 <WPACKET_put_bytes__+0x38>
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    5e4 <WPACKET_put_bytes__+0xa4>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
mov    %rdx,%rbx
mov    %esi,%ebp
mov    %rsp,%rdx
mov    %rbx,%rsi
callq  588 <WPACKET_put_bytes__+0x48>
test   %eax,%eax
je     5dd <WPACKET_put_bytes__+0x9d>
mov    (%rsp),%rdx
mov    %ebp,%eax
test   %rdx,%rdx
je     5cc <WPACKET_put_bytes__+0x8c>
lea    -0x1(%rbx),%rcx
add    %rcx,%rdx
test   %rbx,%rbx
je     5d8 <WPACKET_put_bytes__+0x98>
shr    $0x8,%rax
test   %rcx,%rcx
mov    %bpl,(%rdx)
je     5d8 <WPACKET_put_bytes__+0x98>
mov    %al,-0x1(%rdx)
shr    $0x8,%rax
cmp    $0x2,%rbx
je     5d8 <WPACKET_put_bytes__+0x98>
mov    %al,-0x2(%rdx)
shr    $0x8,%rax
cmp    $0x3,%rbx
je     5d8 <WPACKET_put_bytes__+0x98>
mov    %al,-0x3(%rdx)
mov    $0x1,%eax
jmp    55c <WPACKET_put_bytes__+0x1c>
nopl   0x0(%rax,%rax,1)
test   %rax,%rax
je     5cc <WPACKET_put_bytes__+0x8c>
xor    %eax,%eax
jmpq   55c <WPACKET_put_bytes__+0x1c>
callq  5e9 <WPACKET_put_bytes__+0xa9>
nopl   0x0(%rax)

00000000000005f0 <WPACKET_fill_lengths>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
mov    0x28(%rdi),%rbp
test   %rbp,%rbp
je     664 <WPACKET_fill_lengths+0x74>
mov    %rdi,%r13
nopw   %cs:0x0(%rax,%rax,1)
mov    0x18(%r13),%rax
mov    %rax,%rbx
sub    0x18(%rbp),%rbx
jne    62a <WPACKET_fill_lengths+0x3a>
mov    0x20(%rbp),%edx
test   $0x1,%dl
jne    664 <WPACKET_fill_lengths+0x74>
and    $0x2,%edx
jne    664 <WPACKET_fill_lengths+0x74>
mov    0x10(%rbp),%rdx
test   %rdx,%rdx
je     6b0 <WPACKET_fill_lengths+0xc0>
mov    0x8(%r13),%rax
test   %rax,%rax
je     678 <WPACKET_fill_lengths+0x88>
add    0x8(%rbp),%rax
je     690 <WPACKET_fill_lengths+0xa0>
lea    -0x1(%rax,%rdx,1),%rax
mov    %rax,%rcx
sub    %rdx,%rcx
mov    %rcx,%rdx
mov    %bl,(%rax)
sub    $0x1,%rax
shr    $0x8,%rbx
cmp    %rdx,%rax
jne    650 <WPACKET_fill_lengths+0x60>
test   %rbx,%rbx
je     690 <WPACKET_fill_lengths+0xa0>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
mov    0x0(%r13),%rax
test   %rax,%rax
je     690 <WPACKET_fill_lengths+0xa0>
mov    0x8(%rax),%rax
test   %rax,%rax
jne    63c <WPACKET_fill_lengths+0x4c>
nopw   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rbp
test   %rbp,%rbp
jne    610 <WPACKET_fill_lengths+0x20>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
testb  $0x1,0x30(%r13)
je     690 <WPACKET_fill_lengths+0xa0>
mov    0x0(%rbp),%rdx
test   %rdx,%rdx
je     69d <WPACKET_fill_lengths+0xad>
test   %rbx,%rbx
je     740 <WPACKET_fill_lengths+0x150>
mov    %rbx,%rax
mov    $0x1,%r12d
shr    $0x8,%rax
test   %rax,%rax
je     6ed <WPACKET_fill_lengths+0xfd>
nopw   0x0(%rax,%rax,1)
shr    $0x8,%rax
add    $0x1,%r12
test   %rax,%rax
jne    6e0 <WPACKET_fill_lengths+0xf0>
mov    %r12,%rdx
mov    %ebx,%esi
mov    %r13,%rdi
callq  6fa <WPACKET_fill_lengths+0x10a>
test   %eax,%eax
je     664 <WPACKET_fill_lengths+0x74>
cmp    $0x7f,%rbx
jbe    690 <WPACKET_fill_lengths+0xa0>
mov    %r12,%rsi
mov    $0x1,%edx
mov    %r13,%rdi
or     $0x80,%sil
callq  71c <WPACKET_fill_lengths+0x12c>
test   %eax,%eax
je     664 <WPACKET_fill_lengths+0x74>
mov    0x0(%rbp),%rbp
test   %rbp,%rbp
jne    610 <WPACKET_fill_lengths+0x20>
jmpq   69d <WPACKET_fill_lengths+0xad>
nopw   %cs:0x0(%rax,%rax,1)
testb  $0x2,0x20(%rbp)
jne    770 <WPACKET_fill_lengths+0x180>
xor    %esi,%esi
mov    $0x1,%edx
mov    %r13,%rdi
callq  755 <WPACKET_fill_lengths+0x165>
test   %eax,%eax
je     664 <WPACKET_fill_lengths+0x74>
mov    0x0(%rbp),%rbp
test   %rbp,%rbp
jne    610 <WPACKET_fill_lengths+0x20>
jmpq   69d <WPACKET_fill_lengths+0xad>
nop
mov    %rdx,%rbp
jmpq   614 <WPACKET_fill_lengths+0x24>
nopl   0x0(%rax,%rax,1)

0000000000000780 <WPACKET_close>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
mov    0x28(%rdi),%rbp
test   %rbp,%rbp
je     7f4 <WPACKET_close+0x74>
mov    0x0(%rbp),%rax
test   %rax,%rax
je     7f4 <WPACKET_close+0x74>
mov    0x18(%rdi),%rdx
mov    %rdi,%r12
mov    %rdx,%rbx
sub    0x18(%rbp),%rbx
je     808 <WPACKET_close+0x88>
mov    0x10(%rbp),%rcx
test   %rcx,%rcx
je     890 <WPACKET_close+0x110>
mov    0x8(%r12),%rdx
test   %rdx,%rdx
je     908 <WPACKET_close+0x188>
add    0x8(%rbp),%rdx
je     864 <WPACKET_close+0xe4>
lea    -0x1(%rdx,%rcx,1),%rax
mov    %rax,%rdx
sub    %rcx,%rdx
nopl   0x0(%rax)
mov    %bl,(%rax)
sub    $0x1,%rax
shr    $0x8,%rbx
cmp    %rdx,%rax
jne    7e0 <WPACKET_close+0x60>
test   %rbx,%rbx
je     860 <WPACKET_close+0xe0>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax)
mov    0x20(%rbp),%ecx
test   $0x1,%cl
jne    7f4 <WPACKET_close+0x74>
test   $0x2,%cl
je     7ac <WPACKET_close+0x2c>
mov    0x10(%rbp),%rdi
mov    0x10(%r12),%rsi
sub    %rdi,%rsi
cmp    0x8(%rbp),%rsi
je     930 <WPACKET_close+0x1b0>
testb  $0x1,0x30(%r12)
movq   $0x0,0x8(%rbp)
movq   $0x0,0x10(%rbp)
je     864 <WPACKET_close+0xe4>
and    $0x2,%ecx
jne    864 <WPACKET_close+0xe4>
xor    %esi,%esi
mov    $0x1,%edx
mov    %r12,%rdi
callq  857 <WPACKET_close+0xd7>
test   %eax,%eax
je     7f4 <WPACKET_close+0x74>
nopl   0x0(%rax,%rax,1)
mov    0x0(%rbp),%rax
lea    0x0(%rip),%rsi        # 86b <WPACKET_close+0xeb>
mov    %rax,0x28(%r12)
mov    %rbp,%rdi
mov    $0x120,%edx
callq  87d <WPACKET_close+0xfd>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
testb  $0x1,0x30(%r12)
je     864 <WPACKET_close+0xe4>
test   %rbx,%rbx
je     942 <WPACKET_close+0x1c2>
mov    %rbx,%rax
mov    $0x1,%r13d
shr    $0x8,%rax
test   %rax,%rax
je     8c5 <WPACKET_close+0x145>
nopl   0x0(%rax,%rax,1)
shr    $0x8,%rax
add    $0x1,%r13
test   %rax,%rax
jne    8b8 <WPACKET_close+0x138>
mov    %r13,%rdx
mov    %ebx,%esi
mov    %r12,%rdi
callq  8d2 <WPACKET_close+0x152>
test   %eax,%eax
je     7f4 <WPACKET_close+0x74>
cmp    $0x7f,%rbx
jbe    860 <WPACKET_close+0xe0>
mov    %r13,%rsi
mov    $0x1,%edx
mov    %r12,%rdi
or     $0x80,%sil
callq  8f4 <WPACKET_close+0x174>
test   %eax,%eax
jne    860 <WPACKET_close+0xe0>
jmpq   7f4 <WPACKET_close+0x74>
nopl   0x0(%rax)
mov    (%r12),%rdx
test   %rdx,%rdx
je     864 <WPACKET_close+0xe4>
mov    0x8(%rdx),%rdx
test   %rdx,%rdx
je     864 <WPACKET_close+0xe4>
jmpq   7c7 <WPACKET_close+0x47>
nopw   0x0(%rax,%rax,1)
sub    %rdi,%rdx
mov    %rsi,0x10(%r12)
mov    %rdx,0x18(%r12)
jmpq   82b <WPACKET_close+0xab>
mov    0x20(%rbp),%ecx
jmpq   843 <WPACKET_close+0xc3>
nopw   0x0(%rax,%rax,1)

0000000000000950 <WPACKET_finish>:
push   %rbx
mov    0x28(%rdi),%rax
test   %rax,%rax
je     962 <WPACKET_finish+0x12>
mov    (%rax),%rdx
test   %rdx,%rdx
je     970 <WPACKET_finish+0x20>
xor    %eax,%eax
pop    %rbx
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    0x18(%rdi),%rsi
mov    %rsi,%rcx
sub    0x18(%rax),%rcx
jne    9f8 <WPACKET_finish+0xa8>
mov    0x20(%rax),%r8d
test   $0x1,%r8b
jne    962 <WPACKET_finish+0x12>
and    $0x2,%r8d
je     9f8 <WPACKET_finish+0xa8>
mov    0x10(%rax),%r8
mov    0x10(%rdi),%rcx
sub    %r8,%rcx
cmp    0x8(%rax),%rcx
je     a60 <WPACKET_finish+0x110>
movq   $0x0,0x8(%rax)
movq   $0x0,0x10(%rax)
lea    0x0(%rip),%rsi        # 9b9 <WPACKET_finish+0x69>
mov    %rdi,%rbx
mov    %rdx,0x28(%rdi)
mov    %rax,%rdi
mov    $0x120,%edx
callq  9cd <WPACKET_finish+0x7d>
mov    0x28(%rbx),%rdi
lea    0x0(%rip),%rsi        # 9d8 <WPACKET_finish+0x88>
mov    $0x14e,%edx
callq  9e2 <WPACKET_finish+0x92>
movq   $0x0,0x28(%rbx)
mov    $0x1,%eax
pop    %rbx
retq   
nopl   0x0(%rax)
mov    0x10(%rax),%r8
test   %r8,%r8
je     9b2 <WPACKET_finish+0x62>
mov    0x8(%rdi),%rsi
test   %rsi,%rsi
je     a40 <WPACKET_finish+0xf0>
add    0x8(%rax),%rsi
je     9b2 <WPACKET_finish+0x62>
lea    -0x1(%rsi,%r8,1),%rdx
mov    %rdx,%rsi
sub    %r8,%rsi
nopl   0x0(%rax,%rax,1)
mov    %cl,(%rdx)
sub    $0x1,%rdx
shr    $0x8,%rcx
cmp    %rdx,%rsi
jne    a20 <WPACKET_finish+0xd0>
test   %rcx,%rcx
jne    962 <WPACKET_finish+0x12>
mov    (%rax),%rdx
jmpq   9b2 <WPACKET_finish+0x62>
mov    (%rdi),%rsi
test   %rsi,%rsi
je     9b2 <WPACKET_finish+0x62>
mov    0x8(%rsi),%rsi
test   %rsi,%rsi
je     9b2 <WPACKET_finish+0x62>
jmp    a0a <WPACKET_finish+0xba>
nopl   0x0(%rax,%rax,1)
sub    %r8,%rsi
mov    %rcx,0x10(%rdi)
mov    %rsi,0x18(%rdi)
jmpq   9a2 <WPACKET_finish+0x52>

0000000000000a70 <WPACKET_sub_allocate_bytes__>:
push   %r12
push   %rbp
mov    %rsi,%rbp
push   %rbx
mov    %rcx,%rsi
mov    %rdi,%rbx
mov    %rdx,%r12
callq  a85 <WPACKET_sub_allocate_bytes__+0x15>
test   %eax,%eax
jne    a90 <WPACKET_sub_allocate_bytes__+0x20>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
retq   
mov    %r12,%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  a9e <WPACKET_sub_allocate_bytes__+0x2e>
test   %eax,%eax
je     a89 <WPACKET_sub_allocate_bytes__+0x19>
mov    %rbx,%rdi
callq  aaa <WPACKET_sub_allocate_bytes__+0x3a>
test   %eax,%eax
setne  %al
pop    %rbx
movzbl %al,%eax
pop    %rbp
pop    %r12
retq   
nopw   0x0(%rax,%rax,1)

0000000000000ac0 <WPACKET_memset>:
push   %rbp
push   %rbx
sub    $0x18,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
test   %rdx,%rdx
jne    b00 <WPACKET_memset+0x40>
mov    $0x1,%eax
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    b29 <WPACKET_memset+0x69>
add    $0x18,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
mov    %rdx,%rbx
mov    %esi,%ebp
mov    %rsp,%rdx
mov    %rbx,%rsi
callq  b10 <WPACKET_memset+0x50>
test   %eax,%eax
je     ae0 <WPACKET_memset+0x20>
mov    (%rsp),%rdi
test   %rdi,%rdi
je     adb <WPACKET_memset+0x1b>
mov    %rbx,%rdx
mov    %ebp,%esi
callq  b27 <WPACKET_memset+0x67>
jmp    adb <WPACKET_memset+0x1b>
callq  b2e <WPACKET_memset+0x6e>
xchg   %ax,%ax

0000000000000b30 <WPACKET_memcpy>:
push   %r12
push   %rbp
push   %rbx
mov    $0x1,%ebx
sub    $0x10,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
test   %rdx,%rdx
jne    b70 <WPACKET_memcpy+0x40>
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
mov    %ebx,%eax
jne    ba2 <WPACKET_memcpy+0x72>
add    $0x10,%rsp
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   (%rax)
mov    %rdx,%rbp
mov    %rsi,%r12
mov    %rsp,%rdx
mov    %rbp,%rsi
callq  b81 <WPACKET_memcpy+0x51>
test   %eax,%eax
mov    %eax,%ebx
je     b52 <WPACKET_memcpy+0x22>
mov    (%rsp),%rdi
mov    $0x1,%ebx
test   %rdi,%rdi
je     b52 <WPACKET_memcpy+0x22>
mov    %rbp,%rdx
mov    %r12,%rsi
callq  ba0 <WPACKET_memcpy+0x70>
jmp    b52 <WPACKET_memcpy+0x22>
callq  ba7 <WPACKET_memcpy+0x77>
nopw   0x0(%rax,%rax,1)

0000000000000bb0 <WPACKET_sub_memcpy__>:
push   %r12
push   %rbp
mov    %rsi,%rbp
push   %rbx
mov    %rcx,%rsi
mov    %rdi,%rbx
mov    %rdx,%r12
callq  bc5 <WPACKET_sub_memcpy__+0x15>
test   %eax,%eax
jne    bd0 <WPACKET_sub_memcpy__+0x20>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
retq   
mov    %r12,%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  bde <WPACKET_sub_memcpy__+0x2e>
test   %eax,%eax
je     bc9 <WPACKET_sub_memcpy__+0x19>
mov    %rbx,%rdi
callq  bea <WPACKET_sub_memcpy__+0x3a>
test   %eax,%eax
setne  %al
pop    %rbx
movzbl %al,%eax
pop    %rbp
pop    %r12
retq   
nopw   0x0(%rax,%rax,1)

0000000000000c00 <WPACKET_init_len>:
push   %rbp
push   %rbx
sub    $0x28,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x18(%rsp)
xor    %eax,%eax
test   %rsi,%rsi
je     cf0 <WPACKET_init_len+0xf0>
mov    %rdx,%rbp
lea    -0x1(%rdx),%rdx
mov    %rdi,%rbx
movq   $0x0,0x8(%rdi)
mov    %rsi,(%rdi)
mov    $0xffffffffffffffff,%rax
cmp    $0x6,%rdx
jbe    ca8 <WPACKET_init_len+0xa8>
andb   $0xfe,0x30(%rbx)
lea    0x0(%rip),%rsi        # c4c <WPACKET_init_len+0x4c>
mov    $0x6b,%edx
mov    %rax,0x20(%rbx)
movq   $0x0,0x10(%rbx)
mov    $0x28,%edi
movq   $0x0,0x18(%rbx)
callq  c6f <WPACKET_init_len+0x6f>
test   %rax,%rax
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
je     d28 <WPACKET_init_len+0x128>
test   %rbp,%rbp
mov    $0x1,%eax
jne    cc0 <WPACKET_init_len+0xc0>
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    d5f <WPACKET_init_len+0x15f>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
lea    0x0(,%rbp,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rdx,%rax
jmp    c41 <WPACKET_init_len+0x41>
nopl   0x0(%rax)
mov    %rbp,0x18(%rdx)
mov    %rbp,0x10(%rdx)
lea    0x10(%rsp),%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  cd8 <WPACKET_init_len+0xd8>
test   %eax,%eax
je     cf8 <WPACKET_init_len+0xf8>
mov    0x28(%rbx),%rax
movq   $0x0,0x8(%rax)
mov    $0x1,%eax
jmp    c89 <WPACKET_init_len+0x89>
nop
xor    %eax,%eax
jmp    c89 <WPACKET_init_len+0x89>
nopl   0x0(%rax)
mov    0x28(%rbx),%rdi
lea    0x0(%rip),%rsi        # d03 <WPACKET_init_len+0x103>
mov    $0x77,%edx
mov    %eax,0xc(%rsp)
callq  d11 <WPACKET_init_len+0x111>
movq   $0x0,0x28(%rbx)
mov    0xc(%rsp),%eax
jmpq   c89 <WPACKET_init_len+0x89>
nopw   0x0(%rax,%rax,1)
callq  d2d <WPACKET_init_len+0x12d>
lea    0x0(%rip),%rdx        # d34 <WPACKET_init_len+0x134>
lea    0x0(%rip),%rdi        # d3b <WPACKET_init_len+0x13b>
mov    $0x6c,%esi
callq  d45 <WPACKET_init_len+0x145>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  d58 <WPACKET_init_len+0x158>
xor    %eax,%eax
jmpq   c89 <WPACKET_init_len+0x89>
callq  d64 <WPACKET_init_len+0x164>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000d70 <WPACKET_init>:
xor    %edx,%edx
jmpq   d77 <WPACKET_init+0x7>
nopw   0x0(%rax,%rax,1)

0000000000000d80 <WPACKET_init_static_len>:
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
ja     dbf <WPACKET_init_static_len+0x3f>
lea    0x0(,%rcx,8),%ecx
mov    $0x1,%eax
shl    %cl,%rax
add    %rdi,%rax
test   %rsi,%rsi
je     e60 <WPACKET_init_static_len+0xe0>
test   %rdx,%rdx
je     e60 <WPACKET_init_static_len+0xe0>
cmp    %rax,%rdx
mov    %rsi,0x8(%rbx)
lea    0x0(%rip),%rsi        # ddf <WPACKET_init_static_len+0x5f>
cmova  %rax,%rdx
andb   $0xfe,0x30(%rbx)
movq   $0x0,(%rbx)
mov    %rdx,0x20(%rbx)
movq   $0x0,0x10(%rbx)
mov    $0x6b,%edx
movq   $0x0,0x18(%rbx)
mov    $0x28,%edi
callq  e11 <WPACKET_init_static_len+0x91>
test   %rax,%rax
mov    %rax,%rdx
mov    %rax,0x28(%rbx)
je     eb0 <WPACKET_init_static_len+0x130>
test   %rbp,%rbp
mov    $0x1,%eax
je     e62 <WPACKET_init_static_len+0xe2>
mov    %rbp,0x18(%rdx)
mov    %rbp,0x10(%rdx)
lea    0x10(%rsp),%rdx
mov    %rbp,%rsi
mov    %rbx,%rdi
callq  e43 <WPACKET_init_static_len+0xc3>
test   %eax,%eax
je     e80 <WPACKET_init_static_len+0x100>
mov    0x28(%rbx),%rax
movq   $0x0,0x8(%rax)
mov    $0x1,%eax
jmp    e62 <WPACKET_init_static_len+0xe2>
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
mov    0x18(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    ee7 <WPACKET_init_static_len+0x167>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
mov    0x28(%rbx),%rdi
lea    0x0(%rip),%rsi        # e8b <WPACKET_init_static_len+0x10b>
mov    $0x77,%edx
mov    %eax,0xc(%rsp)
callq  e99 <WPACKET_init_static_len+0x119>
movq   $0x0,0x28(%rbx)
mov    0xc(%rsp),%eax
jmp    e62 <WPACKET_init_static_len+0xe2>
nopw   0x0(%rax,%rax,1)
callq  eb5 <WPACKET_init_static_len+0x135>
lea    0x0(%rip),%rdx        # ebc <WPACKET_init_static_len+0x13c>
lea    0x0(%rip),%rdi        # ec3 <WPACKET_init_static_len+0x143>
mov    $0x6c,%esi
callq  ecd <WPACKET_init_static_len+0x14d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0x14,%edi
callq  ee0 <WPACKET_init_static_len+0x160>
xor    %eax,%eax
jmpq   e62 <WPACKET_init_static_len+0xe2>
callq  eec <WPACKET_init_static_len+0x16c>
nopl   0x0(%rax)

0000000000000ef0 <WPACKET_sub_reserve_bytes__>:
push   %rbp
push   %rbx
sub    $0x8,%rsp
testb  $0x1,0x30(%rdi)
je     f10 <WPACKET_sub_reserve_bytes__+0x20>
test   %rcx,%rcx
je     f10 <WPACKET_sub_reserve_bytes__+0x20>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
add    %rcx,%rsi
mov    %rcx,%rbx
mov    %rdx,%rbp
callq  f1e <WPACKET_sub_reserve_bytes__+0x2e>
test   %eax,%eax
je     f01 <WPACKET_sub_reserve_bytes__+0x11>
mov    0x0(%rbp),%rcx
test   %rcx,%rcx
je     f40 <WPACKET_sub_reserve_bytes__+0x50>
add    %rbx,%rcx
mov    $0x1,%eax
mov    %rcx,0x0(%rbp)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
mov    $0x1,%eax
jmp    f03 <WPACKET_sub_reserve_bytes__+0x13>
nopw   0x0(%rax,%rax,1)

0000000000000f50 <WPACKET_is_null_buf>:
xor    %eax,%eax
cmpq   $0x0,(%rdi)
je     f60 <WPACKET_is_null_buf+0x10>
repz retq 
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
cmpq   $0x0,0x8(%rdi)
sete   %al
retq   
nopl   0x0(%rax,%rax,1)

0000000000000f70 <WPACKET_cleanup>:
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x8,%rsp
mov    0x28(%rdi),%rdi
test   %rdi,%rdi
je     fa4 <WPACKET_cleanup+0x34>
nopw   0x0(%rax,%rax,1)
mov    (%rdi),%rbx
lea    0x0(%rip),%rsi        # f92 <WPACKET_cleanup+0x22>
mov    $0x1fd,%edx
callq  f9c <WPACKET_cleanup+0x2c>
test   %rbx,%rbx
mov    %rbx,%rdi
jne    f88 <WPACKET_cleanup+0x18>
movq   $0x0,0x28(%rbp)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
