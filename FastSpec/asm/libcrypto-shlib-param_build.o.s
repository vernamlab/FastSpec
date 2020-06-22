
openssl_crypto_dump/libcrypto-shlib-param_build.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OSSL_PARAM_BLD_new>:
push   %rbx
lea    0x0(%rip),%rsi        # 8 <OSSL_PARAM_BLD_new+0x8>
mov    $0x6a,%edx
mov    $0x18,%edi
callq  17 <OSSL_PARAM_BLD_new+0x17>
test   %rax,%rax
mov    %rax,%rbx
je     2d <OSSL_PARAM_BLD_new+0x2d>
callq  24 <OSSL_PARAM_BLD_new+0x24>
test   %rax,%rax
mov    %rax,0x10(%rbx)
je     32 <OSSL_PARAM_BLD_new+0x32>
mov    %rbx,%rax
pop    %rbx
retq   
lea    0x0(%rip),%rsi        # 39 <OSSL_PARAM_BLD_new+0x39>
mov    %rbx,%rdi
mov    $0x6f,%edx
xor    %ebx,%ebx
callq  48 <OSSL_PARAM_BLD_new+0x48>
jmp    2d <OSSL_PARAM_BLD_new+0x2d>
nopw   0x0(%rax,%rax,1)

0000000000000050 <OSSL_PARAM_BLD_free>:
test   %rdi,%rdi
je     c0 <OSSL_PARAM_BLD_free+0x70>
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
mov    0x10(%rdi),%rdi
xor    %ebx,%ebx
callq  67 <OSSL_PARAM_BLD_free+0x17>
test   %eax,%eax
mov    %eax,%r12d
jle    95 <OSSL_PARAM_BLD_free+0x45>
xchg   %ax,%ax
mov    0x10(%rbp),%rdi
add    $0x1,%ebx
callq  7c <OSSL_PARAM_BLD_free+0x2c>
lea    0x0(%rip),%rsi        # 83 <OSSL_PARAM_BLD_free+0x33>
mov    $0x7b,%edx
mov    %rax,%rdi
callq  90 <OSSL_PARAM_BLD_free+0x40>
cmp    %ebx,%r12d
jne    70 <OSSL_PARAM_BLD_free+0x20>
mov    0x10(%rbp),%rdi
callq  9e <OSSL_PARAM_BLD_free+0x4e>
pop    %rbx
mov    %rbp,%rdi
lea    0x0(%rip),%rsi        # a9 <OSSL_PARAM_BLD_free+0x59>
mov    $0x84,%edx
pop    %rbp
pop    %r12
jmpq   b6 <OSSL_PARAM_BLD_free+0x66>
nopw   %cs:0x0(%rax,%rax,1)
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000000d0 <OSSL_PARAM_BLD_push_int>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # e0 <OSSL_PARAM_BLD_push_int+0x10>
mov    %rdi,%rbp
mov    %edx,%r13d
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  f9 <OSSL_PARAM_BLD_push_int+0x29>
test   %rax,%rax
je     168 <OSSL_PARAM_BLD_push_int+0x98>
mov    %r12,(%rax)
movl   $0x1,0x8(%rax)
mov    %rax,%rsi
movq   $0x4,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  133 <OSSL_PARAM_BLD_push_int+0x63>
test   %eax,%eax
jle    150 <OSSL_PARAM_BLD_push_int+0x80>
mov    %r13d,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 157 <OSSL_PARAM_BLD_push_int+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  164 <OSSL_PARAM_BLD_push_int+0x94>
xor    %eax,%eax
jmp    140 <OSSL_PARAM_BLD_push_int+0x70>
callq  16d <OSSL_PARAM_BLD_push_int+0x9d>
lea    0x0(%rip),%rdx        # 174 <OSSL_PARAM_BLD_push_int+0xa4>
lea    0x0(%rip),%rdi        # 17b <OSSL_PARAM_BLD_push_int+0xab>
mov    $0x47,%esi
callq  185 <OSSL_PARAM_BLD_push_int+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  198 <OSSL_PARAM_BLD_push_int+0xc8>
xor    %eax,%eax
jmp    140 <OSSL_PARAM_BLD_push_int+0x70>
nopl   0x0(%rax)

00000000000001a0 <OSSL_PARAM_BLD_push_uint>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 1b0 <OSSL_PARAM_BLD_push_uint+0x10>
mov    %rdi,%rbp
mov    %edx,%r13d
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  1c9 <OSSL_PARAM_BLD_push_uint+0x29>
test   %rax,%rax
je     238 <OSSL_PARAM_BLD_push_uint+0x98>
mov    %r12,(%rax)
movl   $0x2,0x8(%rax)
mov    %rax,%rsi
movq   $0x4,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  203 <OSSL_PARAM_BLD_push_uint+0x63>
test   %eax,%eax
jle    220 <OSSL_PARAM_BLD_push_uint+0x80>
mov    %r13d,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 227 <OSSL_PARAM_BLD_push_uint+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  234 <OSSL_PARAM_BLD_push_uint+0x94>
xor    %eax,%eax
jmp    210 <OSSL_PARAM_BLD_push_uint+0x70>
callq  23d <OSSL_PARAM_BLD_push_uint+0x9d>
lea    0x0(%rip),%rdx        # 244 <OSSL_PARAM_BLD_push_uint+0xa4>
lea    0x0(%rip),%rdi        # 24b <OSSL_PARAM_BLD_push_uint+0xab>
mov    $0x47,%esi
callq  255 <OSSL_PARAM_BLD_push_uint+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  268 <OSSL_PARAM_BLD_push_uint+0xc8>
xor    %eax,%eax
jmp    210 <OSSL_PARAM_BLD_push_uint+0x70>
nopl   0x0(%rax)

0000000000000270 <OSSL_PARAM_BLD_push_long>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 280 <OSSL_PARAM_BLD_push_long+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  299 <OSSL_PARAM_BLD_push_long+0x29>
test   %rax,%rax
je     308 <OSSL_PARAM_BLD_push_long+0x98>
mov    %r12,(%rax)
movl   $0x1,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  2d3 <OSSL_PARAM_BLD_push_long+0x63>
test   %eax,%eax
jle    2f0 <OSSL_PARAM_BLD_push_long+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 2f7 <OSSL_PARAM_BLD_push_long+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  304 <OSSL_PARAM_BLD_push_long+0x94>
xor    %eax,%eax
jmp    2e0 <OSSL_PARAM_BLD_push_long+0x70>
callq  30d <OSSL_PARAM_BLD_push_long+0x9d>
lea    0x0(%rip),%rdx        # 314 <OSSL_PARAM_BLD_push_long+0xa4>
lea    0x0(%rip),%rdi        # 31b <OSSL_PARAM_BLD_push_long+0xab>
mov    $0x47,%esi
callq  325 <OSSL_PARAM_BLD_push_long+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  338 <OSSL_PARAM_BLD_push_long+0xc8>
xor    %eax,%eax
jmp    2e0 <OSSL_PARAM_BLD_push_long+0x70>
nopl   0x0(%rax)

0000000000000340 <OSSL_PARAM_BLD_push_ulong>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 350 <OSSL_PARAM_BLD_push_ulong+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  369 <OSSL_PARAM_BLD_push_ulong+0x29>
test   %rax,%rax
je     3d8 <OSSL_PARAM_BLD_push_ulong+0x98>
mov    %r12,(%rax)
movl   $0x2,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  3a3 <OSSL_PARAM_BLD_push_ulong+0x63>
test   %eax,%eax
jle    3c0 <OSSL_PARAM_BLD_push_ulong+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 3c7 <OSSL_PARAM_BLD_push_ulong+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  3d4 <OSSL_PARAM_BLD_push_ulong+0x94>
xor    %eax,%eax
jmp    3b0 <OSSL_PARAM_BLD_push_ulong+0x70>
callq  3dd <OSSL_PARAM_BLD_push_ulong+0x9d>
lea    0x0(%rip),%rdx        # 3e4 <OSSL_PARAM_BLD_push_ulong+0xa4>
lea    0x0(%rip),%rdi        # 3eb <OSSL_PARAM_BLD_push_ulong+0xab>
mov    $0x47,%esi
callq  3f5 <OSSL_PARAM_BLD_push_ulong+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  408 <OSSL_PARAM_BLD_push_ulong+0xc8>
xor    %eax,%eax
jmp    3b0 <OSSL_PARAM_BLD_push_ulong+0x70>
nopl   0x0(%rax)

0000000000000410 <OSSL_PARAM_BLD_push_int32>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 420 <OSSL_PARAM_BLD_push_int32+0x10>
mov    %rdi,%rbp
mov    %edx,%r13d
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  439 <OSSL_PARAM_BLD_push_int32+0x29>
test   %rax,%rax
je     4a8 <OSSL_PARAM_BLD_push_int32+0x98>
mov    %r12,(%rax)
movl   $0x1,0x8(%rax)
mov    %rax,%rsi
movq   $0x4,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  473 <OSSL_PARAM_BLD_push_int32+0x63>
test   %eax,%eax
jle    490 <OSSL_PARAM_BLD_push_int32+0x80>
mov    %r13d,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 497 <OSSL_PARAM_BLD_push_int32+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  4a4 <OSSL_PARAM_BLD_push_int32+0x94>
xor    %eax,%eax
jmp    480 <OSSL_PARAM_BLD_push_int32+0x70>
callq  4ad <OSSL_PARAM_BLD_push_int32+0x9d>
lea    0x0(%rip),%rdx        # 4b4 <OSSL_PARAM_BLD_push_int32+0xa4>
lea    0x0(%rip),%rdi        # 4bb <OSSL_PARAM_BLD_push_int32+0xab>
mov    $0x47,%esi
callq  4c5 <OSSL_PARAM_BLD_push_int32+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  4d8 <OSSL_PARAM_BLD_push_int32+0xc8>
xor    %eax,%eax
jmp    480 <OSSL_PARAM_BLD_push_int32+0x70>
nopl   0x0(%rax)

00000000000004e0 <OSSL_PARAM_BLD_push_uint32>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 4f0 <OSSL_PARAM_BLD_push_uint32+0x10>
mov    %rdi,%rbp
mov    %edx,%r13d
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  509 <OSSL_PARAM_BLD_push_uint32+0x29>
test   %rax,%rax
je     578 <OSSL_PARAM_BLD_push_uint32+0x98>
mov    %r12,(%rax)
movl   $0x2,0x8(%rax)
mov    %rax,%rsi
movq   $0x4,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  543 <OSSL_PARAM_BLD_push_uint32+0x63>
test   %eax,%eax
jle    560 <OSSL_PARAM_BLD_push_uint32+0x80>
mov    %r13d,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 567 <OSSL_PARAM_BLD_push_uint32+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  574 <OSSL_PARAM_BLD_push_uint32+0x94>
xor    %eax,%eax
jmp    550 <OSSL_PARAM_BLD_push_uint32+0x70>
callq  57d <OSSL_PARAM_BLD_push_uint32+0x9d>
lea    0x0(%rip),%rdx        # 584 <OSSL_PARAM_BLD_push_uint32+0xa4>
lea    0x0(%rip),%rdi        # 58b <OSSL_PARAM_BLD_push_uint32+0xab>
mov    $0x47,%esi
callq  595 <OSSL_PARAM_BLD_push_uint32+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  5a8 <OSSL_PARAM_BLD_push_uint32+0xc8>
xor    %eax,%eax
jmp    550 <OSSL_PARAM_BLD_push_uint32+0x70>
nopl   0x0(%rax)

00000000000005b0 <OSSL_PARAM_BLD_push_int64>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 5c0 <OSSL_PARAM_BLD_push_int64+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  5d9 <OSSL_PARAM_BLD_push_int64+0x29>
test   %rax,%rax
je     648 <OSSL_PARAM_BLD_push_int64+0x98>
mov    %r12,(%rax)
movl   $0x1,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  613 <OSSL_PARAM_BLD_push_int64+0x63>
test   %eax,%eax
jle    630 <OSSL_PARAM_BLD_push_int64+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 637 <OSSL_PARAM_BLD_push_int64+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  644 <OSSL_PARAM_BLD_push_int64+0x94>
xor    %eax,%eax
jmp    620 <OSSL_PARAM_BLD_push_int64+0x70>
callq  64d <OSSL_PARAM_BLD_push_int64+0x9d>
lea    0x0(%rip),%rdx        # 654 <OSSL_PARAM_BLD_push_int64+0xa4>
lea    0x0(%rip),%rdi        # 65b <OSSL_PARAM_BLD_push_int64+0xab>
mov    $0x47,%esi
callq  665 <OSSL_PARAM_BLD_push_int64+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  678 <OSSL_PARAM_BLD_push_int64+0xc8>
xor    %eax,%eax
jmp    620 <OSSL_PARAM_BLD_push_int64+0x70>
nopl   0x0(%rax)

0000000000000680 <OSSL_PARAM_BLD_push_uint64>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 690 <OSSL_PARAM_BLD_push_uint64+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  6a9 <OSSL_PARAM_BLD_push_uint64+0x29>
test   %rax,%rax
je     718 <OSSL_PARAM_BLD_push_uint64+0x98>
mov    %r12,(%rax)
movl   $0x2,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  6e3 <OSSL_PARAM_BLD_push_uint64+0x63>
test   %eax,%eax
jle    700 <OSSL_PARAM_BLD_push_uint64+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 707 <OSSL_PARAM_BLD_push_uint64+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  714 <OSSL_PARAM_BLD_push_uint64+0x94>
xor    %eax,%eax
jmp    6f0 <OSSL_PARAM_BLD_push_uint64+0x70>
callq  71d <OSSL_PARAM_BLD_push_uint64+0x9d>
lea    0x0(%rip),%rdx        # 724 <OSSL_PARAM_BLD_push_uint64+0xa4>
lea    0x0(%rip),%rdi        # 72b <OSSL_PARAM_BLD_push_uint64+0xab>
mov    $0x47,%esi
callq  735 <OSSL_PARAM_BLD_push_uint64+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  748 <OSSL_PARAM_BLD_push_uint64+0xc8>
xor    %eax,%eax
jmp    6f0 <OSSL_PARAM_BLD_push_uint64+0x70>
nopl   0x0(%rax)

0000000000000750 <OSSL_PARAM_BLD_push_size_t>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 760 <OSSL_PARAM_BLD_push_size_t+0x10>
mov    %rdi,%rbp
mov    %rdx,%r13
mov    $0x38,%edi
sub    $0x8,%rsp
mov    $0x44,%edx
callq  779 <OSSL_PARAM_BLD_push_size_t+0x29>
test   %rax,%rax
je     7e8 <OSSL_PARAM_BLD_push_size_t+0x98>
mov    %r12,(%rax)
movl   $0x2,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  7b3 <OSSL_PARAM_BLD_push_size_t+0x63>
test   %eax,%eax
jle    7d0 <OSSL_PARAM_BLD_push_size_t+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 7d7 <OSSL_PARAM_BLD_push_size_t+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  7e4 <OSSL_PARAM_BLD_push_size_t+0x94>
xor    %eax,%eax
jmp    7c0 <OSSL_PARAM_BLD_push_size_t+0x70>
callq  7ed <OSSL_PARAM_BLD_push_size_t+0x9d>
lea    0x0(%rip),%rdx        # 7f4 <OSSL_PARAM_BLD_push_size_t+0xa4>
lea    0x0(%rip),%rdi        # 7fb <OSSL_PARAM_BLD_push_size_t+0xab>
mov    $0x47,%esi
callq  805 <OSSL_PARAM_BLD_push_size_t+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  818 <OSSL_PARAM_BLD_push_size_t+0xc8>
xor    %eax,%eax
jmp    7c0 <OSSL_PARAM_BLD_push_size_t+0x70>
nopl   0x0(%rax)

0000000000000820 <OSSL_PARAM_BLD_push_double>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 830 <OSSL_PARAM_BLD_push_double+0x10>
mov    %rdi,%rbp
mov    $0x44,%edx
mov    $0x38,%edi
sub    $0x8,%rsp
movq   %xmm0,%r13
callq  84b <OSSL_PARAM_BLD_push_double+0x2b>
test   %rax,%rax
je     8b8 <OSSL_PARAM_BLD_push_double+0x98>
mov    %r12,(%rax)
movl   $0x3,0x8(%rax)
mov    %rax,%rsi
movq   $0x8,0x10(%rax)
movq   $0x1,0x18(%rax)
mov    %rax,%rbx
movl   $0x0,0xc(%rax)
addq   $0x1,0x0(%rbp)
mov    0x10(%rbp),%rdi
callq  885 <OSSL_PARAM_BLD_push_double+0x65>
test   %eax,%eax
jle    8a0 <OSSL_PARAM_BLD_push_double+0x80>
mov    %r13,0x30(%rbx)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
lea    0x0(%rip),%rsi        # 8a7 <OSSL_PARAM_BLD_push_double+0x87>
mov    $0x53,%edx
mov    %rbx,%rdi
callq  8b4 <OSSL_PARAM_BLD_push_double+0x94>
xor    %eax,%eax
jmp    892 <OSSL_PARAM_BLD_push_double+0x72>
callq  8bd <OSSL_PARAM_BLD_push_double+0x9d>
lea    0x0(%rip),%rdx        # 8c4 <OSSL_PARAM_BLD_push_double+0xa4>
lea    0x0(%rip),%rdi        # 8cb <OSSL_PARAM_BLD_push_double+0xab>
mov    $0x47,%esi
callq  8d5 <OSSL_PARAM_BLD_push_double+0xb5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  8e8 <OSSL_PARAM_BLD_push_double+0xc8>
xor    %eax,%eax
jmp    892 <OSSL_PARAM_BLD_push_double+0x72>
nopl   0x0(%rax)

00000000000008f0 <OSSL_PARAM_BLD_push_BN_pad>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rsi,%r13
push   %rbp
push   %rbx
mov    %rdi,%r12
mov    %rdx,%rbp
mov    %rcx,%rbx
sub    $0x8,%rsp
test   %rdx,%rdx
je     a20 <OSSL_PARAM_BLD_push_BN_pad+0x130>
mov    %rdx,%rdi
callq  91b <OSSL_PARAM_BLD_push_BN_pad+0x2b>
lea    0xe(%rax),%edx
add    $0x7,%eax
cmovs  %edx,%eax
sar    $0x3,%eax
test   %eax,%eax
js     a30 <OSSL_PARAM_BLD_push_BN_pad+0x140>
cltq   
cmp    %rbx,%rax
ja     9d0 <OSSL_PARAM_BLD_push_BN_pad+0xe0>
mov    $0x8,%esi
mov    %rbp,%rdi
xor    %r15d,%r15d
callq  94a <OSSL_PARAM_BLD_push_BN_pad+0x5a>
cmp    $0x8,%eax
sete   %r15b
lea    0x0(%rip),%rsi        # 958 <OSSL_PARAM_BLD_push_BN_pad+0x68>
mov    $0x44,%edx
mov    $0x38,%edi
callq  967 <OSSL_PARAM_BLD_push_BN_pad+0x77>
test   %rax,%rax
mov    %rax,%r14
je     a8b <OSSL_PARAM_BLD_push_BN_pad+0x19b>
movslq %ebx,%rbx
mov    %r13,(%rax)
movl   $0x2,0x8(%rax)
mov    %rbx,0x10(%rax)
add    $0x7,%rbx
mov    %r15d,0xc(%rax)
shr    $0x3,%rbx
test   %r15d,%r15d
mov    %rbx,0x18(%rax)
je     a18 <OSSL_PARAM_BLD_push_BN_pad+0x128>
add    %rbx,0x8(%r12)
mov    0x10(%r12),%rdi
mov    %r14,%rsi
callq  9ab <OSSL_PARAM_BLD_push_BN_pad+0xbb>
test   %eax,%eax
jle    a70 <OSSL_PARAM_BLD_push_BN_pad+0x180>
mov    %rbp,0x20(%r14)
mov    $0x1,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
callq  9d5 <OSSL_PARAM_BLD_push_BN_pad+0xe5>
lea    0x0(%rip),%rdx        # 9dc <OSSL_PARAM_BLD_push_BN_pad+0xec>
lea    0x0(%rip),%rdi        # 9e3 <OSSL_PARAM_BLD_push_BN_pad+0xf3>
mov    $0xdb,%esi
callq  9ed <OSSL_PARAM_BLD_push_BN_pad+0xfd>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x74,%esi
mov    $0xf,%edi
callq  a00 <OSSL_PARAM_BLD_push_BN_pad+0x110>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
add    %rbx,(%r12)
jmp    99e <OSSL_PARAM_BLD_push_BN_pad+0xae>
xchg   %ax,%ax
xor    %r15d,%r15d
jmpq   951 <OSSL_PARAM_BLD_push_BN_pad+0x61>
nopl   0x0(%rax,%rax,1)
callq  a35 <OSSL_PARAM_BLD_push_BN_pad+0x145>
lea    0x0(%rip),%rdx        # a3c <OSSL_PARAM_BLD_push_BN_pad+0x14c>
lea    0x0(%rip),%rdi        # a43 <OSSL_PARAM_BLD_push_BN_pad+0x153>
mov    $0xd7,%esi
callq  a4d <OSSL_PARAM_BLD_push_BN_pad+0x15d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x73,%esi
mov    $0xf,%edi
callq  a60 <OSSL_PARAM_BLD_push_BN_pad+0x170>
xor    %eax,%eax
jmpq   9bc <OSSL_PARAM_BLD_push_BN_pad+0xcc>
nopw   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # a77 <OSSL_PARAM_BLD_push_BN_pad+0x187>
mov    $0x53,%edx
mov    %r14,%rdi
callq  a84 <OSSL_PARAM_BLD_push_BN_pad+0x194>
xor    %eax,%eax
jmpq   9bc <OSSL_PARAM_BLD_push_BN_pad+0xcc>
callq  a90 <OSSL_PARAM_BLD_push_BN_pad+0x1a0>
lea    0x0(%rip),%rdx        # a97 <OSSL_PARAM_BLD_push_BN_pad+0x1a7>
lea    0x0(%rip),%rdi        # a9e <OSSL_PARAM_BLD_push_BN_pad+0x1ae>
mov    $0x47,%esi
callq  aa8 <OSSL_PARAM_BLD_push_BN_pad+0x1b8>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  abb <OSSL_PARAM_BLD_push_BN_pad+0x1cb>
xor    %eax,%eax
jmpq   9bc <OSSL_PARAM_BLD_push_BN_pad+0xcc>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000ad0 <OSSL_PARAM_BLD_push_BN>:
xor    %ecx,%ecx
test   %rdx,%rdx
push   %r12
mov    %rsi,%r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
mov    %rdx,%rbx
je     afd <OSSL_PARAM_BLD_push_BN+0x2d>
mov    %rdx,%rdi
callq  aec <OSSL_PARAM_BLD_push_BN+0x1c>
lea    0xe(%rax),%edi
add    $0x7,%eax
mov    %eax,%ecx
cmovs  %edi,%ecx
sar    $0x3,%ecx
movslq %ecx,%rcx
mov    %rbx,%rdx
mov    %r12,%rsi
mov    %rbp,%rdi
pop    %rbx
pop    %rbp
pop    %r12
jmpq   b0f <OSSL_PARAM_BLD_push_BN+0x3f>
nop

0000000000000b10 <OSSL_PARAM_BLD_push_utf8_string>:
test   %rcx,%rcx
push   %r14
mov    %rsi,%r14
push   %r13
mov    %rdi,%r13
push   %r12
push   %rbp
mov    %rdx,%rbp
push   %rbx
jne    ba0 <OSSL_PARAM_BLD_push_utf8_string+0x90>
mov    %rdx,%rdi
callq  b2e <OSSL_PARAM_BLD_push_utf8_string+0x1e>
lea    0x1(%rax),%rbx
lea    0x0(%rip),%rsi        # b39 <OSSL_PARAM_BLD_push_utf8_string+0x29>
mov    $0x44,%edx
mov    $0x38,%edi
callq  b48 <OSSL_PARAM_BLD_push_utf8_string+0x38>
test   %rax,%rax
mov    %rax,%r12
je     c08 <OSSL_PARAM_BLD_push_utf8_string+0xf8>
movslq %ebx,%rbx
mov    %r14,(%rax)
movl   $0x4,0x8(%rax)
mov    %rbx,0x10(%rax)
add    $0x7,%rbx
movl   $0x0,0xc(%rax)
shr    $0x3,%rbx
mov    0x10(%r13),%rdi
mov    %rax,%rsi
mov    %rbx,0x18(%rax)
add    %rbx,0x0(%r13)
callq  b88 <OSSL_PARAM_BLD_push_utf8_string+0x78>
test   %eax,%eax
jle    bf0 <OSSL_PARAM_BLD_push_utf8_string+0xe0>
mov    %rbp,0x28(%r12)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nop
cmp    $0x7fffffff,%rcx
mov    %rcx,%rbx
jbe    b32 <OSSL_PARAM_BLD_push_utf8_string+0x22>
callq  bb1 <OSSL_PARAM_BLD_push_utf8_string+0xa1>
lea    0x0(%rip),%rdx        # bb8 <OSSL_PARAM_BLD_push_utf8_string+0xa8>
lea    0x0(%rip),%rdi        # bbf <OSSL_PARAM_BLD_push_utf8_string+0xaf>
mov    $0xf1,%esi
callq  bc9 <OSSL_PARAM_BLD_push_utf8_string+0xb9>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x70,%esi
mov    $0xf,%edi
callq  bdc <OSSL_PARAM_BLD_push_utf8_string+0xcc>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # bf7 <OSSL_PARAM_BLD_push_utf8_string+0xe7>
mov    $0x53,%edx
mov    %r12,%rdi
callq  c04 <OSSL_PARAM_BLD_push_utf8_string+0xf4>
xor    %eax,%eax
jmp    b96 <OSSL_PARAM_BLD_push_utf8_string+0x86>
callq  c0d <OSSL_PARAM_BLD_push_utf8_string+0xfd>
lea    0x0(%rip),%rdx        # c14 <OSSL_PARAM_BLD_push_utf8_string+0x104>
lea    0x0(%rip),%rdi        # c1b <OSSL_PARAM_BLD_push_utf8_string+0x10b>
mov    $0x47,%esi
callq  c25 <OSSL_PARAM_BLD_push_utf8_string+0x115>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  c38 <OSSL_PARAM_BLD_push_utf8_string+0x128>
xor    %eax,%eax
jmpq   b96 <OSSL_PARAM_BLD_push_utf8_string+0x86>
nop

0000000000000c40 <OSSL_PARAM_BLD_push_utf8_ptr>:
test   %rcx,%rcx
push   %r14
mov    %rsi,%r14
push   %r13
mov    %rdi,%r13
push   %r12
push   %rbp
mov    %rdx,%rbp
push   %rbx
jne    cd0 <OSSL_PARAM_BLD_push_utf8_ptr+0x90>
mov    %rdx,%rdi
callq  c5e <OSSL_PARAM_BLD_push_utf8_ptr+0x1e>
lea    0x1(%rax),%rbx
lea    0x0(%rip),%rsi        # c69 <OSSL_PARAM_BLD_push_utf8_ptr+0x29>
mov    $0x44,%edx
mov    $0x38,%edi
callq  c78 <OSSL_PARAM_BLD_push_utf8_ptr+0x38>
test   %rax,%rax
mov    %rax,%r12
je     d38 <OSSL_PARAM_BLD_push_utf8_ptr+0xf8>
movslq %ebx,%rbx
mov    %r14,(%rax)
movl   $0x6,0x8(%rax)
mov    %rbx,0x10(%rax)
add    $0x7,%rbx
movl   $0x0,0xc(%rax)
shr    $0x3,%rbx
mov    0x10(%r13),%rdi
mov    %rax,%rsi
mov    %rbx,0x18(%rax)
add    %rbx,0x0(%r13)
callq  cb8 <OSSL_PARAM_BLD_push_utf8_ptr+0x78>
test   %eax,%eax
jle    d20 <OSSL_PARAM_BLD_push_utf8_ptr+0xe0>
mov    %rbp,0x28(%r12)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nop
cmp    $0x7fffffff,%rcx
mov    %rcx,%rbx
jbe    c62 <OSSL_PARAM_BLD_push_utf8_ptr+0x22>
callq  ce1 <OSSL_PARAM_BLD_push_utf8_ptr+0xa1>
lea    0x0(%rip),%rdx        # ce8 <OSSL_PARAM_BLD_push_utf8_ptr+0xa8>
lea    0x0(%rip),%rdi        # cef <OSSL_PARAM_BLD_push_utf8_ptr+0xaf>
mov    $0x104,%esi
callq  cf9 <OSSL_PARAM_BLD_push_utf8_ptr+0xb9>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x70,%esi
mov    $0xf,%edi
callq  d0c <OSSL_PARAM_BLD_push_utf8_ptr+0xcc>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # d27 <OSSL_PARAM_BLD_push_utf8_ptr+0xe7>
mov    $0x53,%edx
mov    %r12,%rdi
callq  d34 <OSSL_PARAM_BLD_push_utf8_ptr+0xf4>
xor    %eax,%eax
jmp    cc6 <OSSL_PARAM_BLD_push_utf8_ptr+0x86>
callq  d3d <OSSL_PARAM_BLD_push_utf8_ptr+0xfd>
lea    0x0(%rip),%rdx        # d44 <OSSL_PARAM_BLD_push_utf8_ptr+0x104>
lea    0x0(%rip),%rdi        # d4b <OSSL_PARAM_BLD_push_utf8_ptr+0x10b>
mov    $0x47,%esi
callq  d55 <OSSL_PARAM_BLD_push_utf8_ptr+0x115>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  d68 <OSSL_PARAM_BLD_push_utf8_ptr+0x128>
xor    %eax,%eax
jmpq   cc6 <OSSL_PARAM_BLD_push_utf8_ptr+0x86>
nop

0000000000000d70 <OSSL_PARAM_BLD_push_octet_string>:
cmp    $0x7fffffff,%rcx
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
ja     e00 <OSSL_PARAM_BLD_push_octet_string+0x90>
mov    %rsi,%r14
lea    0x0(%rip),%rsi        # d8b <OSSL_PARAM_BLD_push_octet_string+0x1b>
mov    %rdi,%r12
mov    %rdx,%r13
mov    $0x38,%edi
mov    $0x44,%edx
mov    %rcx,%rbx
callq  da3 <OSSL_PARAM_BLD_push_octet_string+0x33>
test   %rax,%rax
mov    %rax,%rbp
je     e53 <OSSL_PARAM_BLD_push_octet_string+0xe3>
mov    %rbx,0x10(%rax)
add    $0x7,%rbx
mov    %r14,(%rax)
shr    $0x3,%rbx
movl   $0x5,0x8(%rax)
movl   $0x0,0xc(%rax)
mov    %rbx,0x18(%rax)
add    %rbx,(%r12)
mov    %rax,%rsi
mov    0x10(%r12),%rdi
callq  de1 <OSSL_PARAM_BLD_push_octet_string+0x71>
test   %eax,%eax
jle    e3b <OSSL_PARAM_BLD_push_octet_string+0xcb>
mov    %r13,0x28(%rbp)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
callq  e05 <OSSL_PARAM_BLD_push_octet_string+0x95>
lea    0x0(%rip),%rdx        # e0c <OSSL_PARAM_BLD_push_octet_string+0x9c>
lea    0x0(%rip),%rdi        # e13 <OSSL_PARAM_BLD_push_octet_string+0xa3>
mov    $0x115,%esi
callq  e1d <OSSL_PARAM_BLD_push_octet_string+0xad>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x70,%esi
mov    $0xf,%edi
callq  e30 <OSSL_PARAM_BLD_push_octet_string+0xc0>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
lea    0x0(%rip),%rsi        # e42 <OSSL_PARAM_BLD_push_octet_string+0xd2>
mov    $0x53,%edx
mov    %rbp,%rdi
callq  e4f <OSSL_PARAM_BLD_push_octet_string+0xdf>
xor    %eax,%eax
jmp    dee <OSSL_PARAM_BLD_push_octet_string+0x7e>
callq  e58 <OSSL_PARAM_BLD_push_octet_string+0xe8>
lea    0x0(%rip),%rdx        # e5f <OSSL_PARAM_BLD_push_octet_string+0xef>
lea    0x0(%rip),%rdi        # e66 <OSSL_PARAM_BLD_push_octet_string+0xf6>
mov    $0x47,%esi
callq  e70 <OSSL_PARAM_BLD_push_octet_string+0x100>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  e83 <OSSL_PARAM_BLD_push_octet_string+0x113>
xor    %eax,%eax
jmpq   dee <OSSL_PARAM_BLD_push_octet_string+0x7e>
nopw   0x0(%rax,%rax,1)

0000000000000e90 <OSSL_PARAM_BLD_push_octet_ptr>:
cmp    $0x7fffffff,%rcx
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
ja     f20 <OSSL_PARAM_BLD_push_octet_ptr+0x90>
mov    %rsi,%r14
lea    0x0(%rip),%rsi        # eab <OSSL_PARAM_BLD_push_octet_ptr+0x1b>
mov    %rdi,%r12
mov    %rdx,%r13
mov    $0x38,%edi
mov    $0x44,%edx
mov    %rcx,%rbx
callq  ec3 <OSSL_PARAM_BLD_push_octet_ptr+0x33>
test   %rax,%rax
mov    %rax,%rbp
je     f73 <OSSL_PARAM_BLD_push_octet_ptr+0xe3>
mov    %rbx,0x10(%rax)
add    $0x7,%rbx
mov    %r14,(%rax)
shr    $0x3,%rbx
movl   $0x7,0x8(%rax)
movl   $0x0,0xc(%rax)
mov    %rbx,0x18(%rax)
add    %rbx,(%r12)
mov    %rax,%rsi
mov    0x10(%r12),%rdi
callq  f01 <OSSL_PARAM_BLD_push_octet_ptr+0x71>
test   %eax,%eax
jle    f5b <OSSL_PARAM_BLD_push_octet_ptr+0xcb>
mov    %r13,0x28(%rbp)
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
callq  f25 <OSSL_PARAM_BLD_push_octet_ptr+0x95>
lea    0x0(%rip),%rdx        # f2c <OSSL_PARAM_BLD_push_octet_ptr+0x9c>
lea    0x0(%rip),%rdi        # f33 <OSSL_PARAM_BLD_push_octet_ptr+0xa3>
mov    $0x126,%esi
callq  f3d <OSSL_PARAM_BLD_push_octet_ptr+0xad>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x70,%esi
mov    $0xf,%edi
callq  f50 <OSSL_PARAM_BLD_push_octet_ptr+0xc0>
pop    %rbx
xor    %eax,%eax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
lea    0x0(%rip),%rsi        # f62 <OSSL_PARAM_BLD_push_octet_ptr+0xd2>
mov    $0x53,%edx
mov    %rbp,%rdi
callq  f6f <OSSL_PARAM_BLD_push_octet_ptr+0xdf>
xor    %eax,%eax
jmp    f0e <OSSL_PARAM_BLD_push_octet_ptr+0x7e>
callq  f78 <OSSL_PARAM_BLD_push_octet_ptr+0xe8>
lea    0x0(%rip),%rdx        # f7f <OSSL_PARAM_BLD_push_octet_ptr+0xef>
lea    0x0(%rip),%rdi        # f86 <OSSL_PARAM_BLD_push_octet_ptr+0xf6>
mov    $0x47,%esi
callq  f90 <OSSL_PARAM_BLD_push_octet_ptr+0x100>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  fa3 <OSSL_PARAM_BLD_push_octet_ptr+0x113>
xor    %eax,%eax
jmpq   f0e <OSSL_PARAM_BLD_push_octet_ptr+0x7e>
nopw   0x0(%rax,%rax,1)

0000000000000fb0 <OSSL_PARAM_BLD_to_param>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x68,%rsp
mov    0x10(%rdi),%rdi
mov    %fs:0x28,%rax
mov    %rax,0x58(%rsp)
xor    %eax,%eax
callq  fda <OSSL_PARAM_BLD_to_param+0x2a>
add    $0x1,%eax
cltq   
lea    (%rax,%rax,4),%rax
lea    0x7(,%rax,8),%rbx
mov    0x8(%rbp),%rax
shr    $0x3,%rbx
mov    %rbx,%rdi
add    0x0(%rbp),%rdi
shl    $0x3,%rax
test   %rax,%rax
mov    %rax,0x18(%rsp)
lea    0x0(,%rdi,8),%r12
je     1230 <OSSL_PARAM_BLD_to_param+0x280>
lea    0x0(%rip),%rsi        # 101b <OSSL_PARAM_BLD_to_param+0x6b>
mov    $0x16a,%edx
mov    %rax,%rdi
callq  1028 <OSSL_PARAM_BLD_to_param+0x78>
test   %rax,%rax
mov    %rax,0x10(%rsp)
je     1245 <OSSL_PARAM_BLD_to_param+0x295>
lea    0x0(%rip),%rsi        # 103d <OSSL_PARAM_BLD_to_param+0x8d>
mov    $0x171,%edx
mov    %r12,%rdi
callq  104a <OSSL_PARAM_BLD_to_param+0x9a>
test   %rax,%rax
mov    %rax,0x8(%rsp)
je     127c <OSSL_PARAM_BLD_to_param+0x2cc>
mov    0x10(%rbp),%rdi
mov    %rax,%r15
lea    (%rax,%rbx,8),%r12
callq  1068 <OSSL_PARAM_BLD_to_param+0xb8>
movslq %eax,%r14
test   %r14d,%r14d
jle    123e <OSSL_PARAM_BLD_to_param+0x28e>
mov    0x10(%rsp),%r13
xor    %ebx,%ebx
jmp    10a9 <OSSL_PARAM_BLD_to_param+0xf9>
nopl   (%rax)
mov    %r13,%r8
lea    0x0(%r13,%rdi,8),%r13
mov    %r8,0x10(%r15)
mov    0x20(%rax),%rdi
test   %rdi,%rdi
je     10f0 <OSSL_PARAM_BLD_to_param+0x140>
mov    %r8,%rsi
callq  109d <OSSL_PARAM_BLD_to_param+0xed>
add    $0x1,%ebx
add    $0x28,%r15
cmp    %ebx,%r14d
je     1120 <OSSL_PARAM_BLD_to_param+0x170>
mov    0x10(%rbp),%rdi
mov    %ebx,%esi
callq  10b4 <OSSL_PARAM_BLD_to_param+0x104>
mov    0x8(%rax),%esi
mov    (%rax),%rdx
mov    %esi,0x8(%r15)
mov    0xc(%rax),%ecx
mov    %rdx,(%r15)
mov    0x10(%rax),%rdx
movq   $0xffffffffffffffff,0x20(%r15)
test   %ecx,%ecx
mov    %rdx,0x18(%r15)
mov    0x18(%rax),%rdi
jne    1080 <OSSL_PARAM_BLD_to_param+0xd0>
mov    %r12,%r8
lea    (%r12,%rdi,8),%r12
mov    %r8,0x10(%r15)
mov    0x20(%rax),%rdi
test   %rdi,%rdi
jne    1095 <OSSL_PARAM_BLD_to_param+0xe5>
lea    -0x6(%rsi),%edi
cmp    $0x1,%edi
jbe    11f0 <OSSL_PARAM_BLD_to_param+0x240>
sub    $0x4,%esi
cmp    $0x1,%esi
jbe    1200 <OSSL_PARAM_BLD_to_param+0x250>
cmp    $0x8,%rdx
ja     1220 <OSSL_PARAM_BLD_to_param+0x270>
test   %rdx,%rdx
je     109d <OSSL_PARAM_BLD_to_param+0xed>
lea    0x30(%rax),%rsi
jmpq   1209 <OSSL_PARAM_BLD_to_param+0x259>
lea    (%r14,%r14,4),%rbx
shl    $0x3,%rbx
lea    0x20(%rsp),%rdi
add    0x8(%rsp),%rbx
callq  1137 <OSSL_PARAM_BLD_to_param+0x187>
mov    0x20(%rsp),%rax
mov    %rax,(%rbx)
mov    0x28(%rsp),%rax
mov    %rax,0x8(%rbx)
mov    0x30(%rsp),%rax
mov    %rax,0x10(%rbx)
mov    0x38(%rsp),%rax
mov    %rax,0x18(%rbx)
mov    0x40(%rsp),%rax
movl   $0x7f,0x8(%rbx)
mov    %rax,0x20(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x18(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x10(%rbx)
mov    0x10(%rbp),%rdi
movq   $0x0,0x0(%rbp)
movq   $0x0,0x8(%rbp)
callq  1195 <OSSL_PARAM_BLD_to_param+0x1e5>
test   %eax,%eax
mov    %eax,%r12d
jle    11c5 <OSSL_PARAM_BLD_to_param+0x215>
xor    %ebx,%ebx
xchg   %ax,%ax
mov    0x10(%rbp),%rdi
add    $0x1,%ebx
callq  11ac <OSSL_PARAM_BLD_to_param+0x1fc>
lea    0x0(%rip),%rsi        # 11b3 <OSSL_PARAM_BLD_to_param+0x203>
mov    $0x7b,%edx
mov    %rax,%rdi
callq  11c0 <OSSL_PARAM_BLD_to_param+0x210>
cmp    %ebx,%r12d
jne    11a0 <OSSL_PARAM_BLD_to_param+0x1f0>
mov    0x8(%rsp),%rax
mov    0x58(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    12c9 <OSSL_PARAM_BLD_to_param+0x319>
add    $0x68,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   (%rax)
mov    0x28(%rax),%rax
mov    %rax,(%r8)
jmpq   109d <OSSL_PARAM_BLD_to_param+0xed>
nopl   0x0(%rax)
mov    0x28(%rax),%rsi
test   %rsi,%rsi
je     1220 <OSSL_PARAM_BLD_to_param+0x270>
mov    %r8,%rdi
callq  1211 <OSSL_PARAM_BLD_to_param+0x261>
jmpq   109d <OSSL_PARAM_BLD_to_param+0xed>
nopw   %cs:0x0(%rax,%rax,1)
xor    %esi,%esi
mov    %r8,%rdi
callq  122a <OSSL_PARAM_BLD_to_param+0x27a>
jmpq   109d <OSSL_PARAM_BLD_to_param+0xed>
nop
movq   $0x0,0x10(%rsp)
jmpq   1036 <OSSL_PARAM_BLD_to_param+0x86>
xor    %ebx,%ebx
jmpq   1128 <OSSL_PARAM_BLD_to_param+0x178>
callq  124a <OSSL_PARAM_BLD_to_param+0x29a>
lea    0x0(%rip),%rdx        # 1251 <OSSL_PARAM_BLD_to_param+0x2a1>
lea    0x0(%rip),%rdi        # 1258 <OSSL_PARAM_BLD_to_param+0x2a8>
mov    $0x16d,%esi
callq  1262 <OSSL_PARAM_BLD_to_param+0x2b2>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x6f,%esi
mov    $0xf,%edi
callq  1275 <OSSL_PARAM_BLD_to_param+0x2c5>
xor    %eax,%eax
jmpq   11ca <OSSL_PARAM_BLD_to_param+0x21a>
callq  1281 <OSSL_PARAM_BLD_to_param+0x2d1>
lea    0x0(%rip),%rdx        # 1288 <OSSL_PARAM_BLD_to_param+0x2d8>
lea    0x0(%rip),%rdi        # 128f <OSSL_PARAM_BLD_to_param+0x2df>
mov    $0x173,%esi
callq  1299 <OSSL_PARAM_BLD_to_param+0x2e9>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  12ac <OSSL_PARAM_BLD_to_param+0x2fc>
mov    0x10(%rsp),%rdi
lea    0x0(%rip),%rsi        # 12b8 <OSSL_PARAM_BLD_to_param+0x308>
mov    $0x174,%edx
callq  12c2 <OSSL_PARAM_BLD_to_param+0x312>
xor    %eax,%eax
jmpq   11ca <OSSL_PARAM_BLD_to_param+0x21a>
callq  12ce <OSSL_PARAM_BLD_to_param+0x31e>
xchg   %ax,%ax

00000000000012d0 <OSSL_PARAM_BLD_free_params>:
test   %rdi,%rdi
push   %rbx
je     1330 <OSSL_PARAM_BLD_free_params+0x60>
cmpq   $0x0,(%rdi)
mov    %rdi,%rax
je     12ea <OSSL_PARAM_BLD_free_params+0x1a>
nop
add    $0x28,%rax
cmpq   $0x0,(%rax)
jne    12e0 <OSSL_PARAM_BLD_free_params+0x10>
cmpl   $0x7f,0x8(%rax)
mov    %rdi,%rbx
je     1310 <OSSL_PARAM_BLD_free_params+0x40>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # 12fd <OSSL_PARAM_BLD_free_params+0x2d>
mov    $0x18d,%edx
pop    %rbx
jmpq   1308 <OSSL_PARAM_BLD_free_params+0x38>
nopl   0x0(%rax,%rax,1)
mov    0x18(%rax),%rsi
mov    0x10(%rax),%rdi
lea    0x0(%rip),%rdx        # 131f <OSSL_PARAM_BLD_free_params+0x4f>
mov    $0x18c,%ecx
callq  1329 <OSSL_PARAM_BLD_free_params+0x59>
jmp    12f3 <OSSL_PARAM_BLD_free_params+0x23>
nopl   0x0(%rax,%rax,1)
pop    %rbx
retq   
