
openssl_crypto_dump/libcrypto-shlib-params.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OSSL_PARAM_locate>:
test   %rdi,%rdi
je     51 <OSSL_PARAM_locate+0x51>
push   %rbp
push   %rbx
mov    %rsi,%rbp
sub    $0x8,%rsp
test   %rsi,%rsi
je     48 <OSSL_PARAM_locate+0x48>
mov    (%rdi),%rsi
mov    %rdi,%rbx
test   %rsi,%rsi
jne    2c <OSSL_PARAM_locate+0x2c>
jmp    48 <OSSL_PARAM_locate+0x48>
add    $0x28,%rbx
mov    (%rbx),%rsi
test   %rsi,%rsi
je     48 <OSSL_PARAM_locate+0x48>
mov    %rbp,%rdi
callq  34 <OSSL_PARAM_locate+0x34>
test   %eax,%eax
jne    20 <OSSL_PARAM_locate+0x20>
add    $0x8,%rsp
mov    %rbx,%rax
pop    %rbx
pop    %rbp
retq   
nopw   0x0(%rax,%rax,1)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
xor    %eax,%eax
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000060 <OSSL_PARAM_locate_const>:
jmpq   65 <OSSL_PARAM_locate_const+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000070 <OSSL_PARAM_modified>:
test   %rdi,%rdi
je     80 <OSSL_PARAM_modified+0x10>
xor    %eax,%eax
cmpq   $0xffffffffffffffff,0x20(%rdi)
setne  %al
retq   
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000090 <OSSL_PARAM_set_all_unmodified>:
test   %rdi,%rdi
jne    ac <OSSL_PARAM_set_all_unmodified+0x1c>
jmp    b2 <OSSL_PARAM_set_all_unmodified+0x22>
nopw   0x0(%rax,%rax,1)
add    $0x28,%rdi
movq   $0xffffffffffffffff,-0x8(%rdi)
cmpq   $0x0,(%rdi)
jne    a0 <OSSL_PARAM_set_all_unmodified+0x10>
repz retq 
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000000c0 <OSSL_PARAM_construct_int>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x1,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x4,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000000f0 <OSSL_PARAM_construct_uint>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x4,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000120 <OSSL_PARAM_construct_long>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x1,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000150 <OSSL_PARAM_construct_ulong>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000180 <OSSL_PARAM_get_int32>:
test   %rsi,%rsi
je     1b8 <OSSL_PARAM_get_int32+0x38>
test   %rdi,%rdi
je     1b8 <OSSL_PARAM_get_int32+0x38>
mov    0x8(%rdi),%edx
cmp    $0x1,%edx
je     1c0 <OSSL_PARAM_get_int32+0x40>
cmp    $0x2,%edx
je     1a0 <OSSL_PARAM_get_int32+0x20>
xor    %eax,%eax
cmp    $0x3,%edx
je     1f8 <OSSL_PARAM_get_int32+0x78>
repz retq 
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     270 <OSSL_PARAM_get_int32+0xf0>
cmp    $0x8,%rax
je     250 <OSSL_PARAM_get_int32+0xd0>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     240 <OSSL_PARAM_get_int32+0xc0>
cmp    $0x8,%rax
jne    1b8 <OSSL_PARAM_get_int32+0x38>
mov    0x10(%rdi),%rax
mov    $0x80000000,%edx
mov    $0xffffffff,%edi
mov    (%rax),%rcx
xor    %eax,%eax
add    %rcx,%rdx
cmp    %rdi,%rdx
ja     19e <OSSL_PARAM_get_int32+0x1e>
mov    %ecx,(%rsi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
cmpq   $0x8,0x18(%rdi)
jne    19e <OSSL_PARAM_get_int32+0x1e>
mov    0x10(%rdi),%rdx
movsd  (%rdx),%xmm0
ucomisd 0x0(%rip),%xmm0        # 20f <OSSL_PARAM_get_int32+0x8f>
jb     19e <OSSL_PARAM_get_int32+0x1e>
movsd  0x0(%rip),%xmm1        # 219 <OSSL_PARAM_get_int32+0x99>
ucomisd %xmm0,%xmm1
jb     19e <OSSL_PARAM_get_int32+0x1e>
cvttsd2si %xmm0,%eax
pxor   %xmm1,%xmm1
cvtsi2sd %eax,%xmm1
ucomisd %xmm1,%xmm0
jp     1b8 <OSSL_PARAM_get_int32+0x38>
jne    1b8 <OSSL_PARAM_get_int32+0x38>
mov    %eax,(%rsi)
mov    $0x1,%eax
retq   
nop
mov    0x10(%rdi),%rax
mov    (%rax),%eax
mov    %eax,(%rsi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
mov    0x10(%rdi),%rax
mov    (%rax),%rdx
xor    %eax,%eax
cmp    $0x7fffffff,%rdx
ja     19e <OSSL_PARAM_get_int32+0x1e>
mov    %edx,(%rsi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
mov    0x10(%rdi),%rax
mov    (%rax),%edx
xor    %eax,%eax
test   %edx,%edx
jns    266 <OSSL_PARAM_get_int32+0xe6>
jmpq   19e <OSSL_PARAM_get_int32+0x1e>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000290 <OSSL_PARAM_get_int>:
jmpq   295 <OSSL_PARAM_get_int+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000002a0 <OSSL_PARAM_set_int32>:
test   %rdi,%rdi
je     2bf <OSSL_PARAM_set_int32+0x1f>
mov    0x8(%rdi),%eax
movq   $0x0,0x20(%rdi)
cmp    $0x1,%eax
je     2cc <OSSL_PARAM_set_int32+0x2c>
cmp    $0x2,%eax
je     2c8 <OSSL_PARAM_set_int32+0x28>
cmp    $0x3,%eax
je     308 <OSSL_PARAM_set_int32+0x68>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
test   %esi,%esi
js     2bf <OSSL_PARAM_set_int32+0x1f>
mov    0x10(%rdi),%rax
movq   $0x4,0x20(%rdi)
test   %rax,%rax
je     32c <OSSL_PARAM_set_int32+0x8c>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     338 <OSSL_PARAM_set_int32+0x98>
cmp    $0x8,%rdx
jne    2bf <OSSL_PARAM_set_int32+0x1f>
movslq %esi,%rsi
movq   $0x8,0x20(%rdi)
mov    %rsi,(%rax)
mov    $0x1,%eax
retq   
nopl   0x0(%rax)
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     32c <OSSL_PARAM_set_int32+0x8c>
cmpq   $0x8,0x18(%rdi)
jne    2bf <OSSL_PARAM_set_int32+0x1f>
pxor   %xmm0,%xmm0
cvtsi2sd %esi,%xmm0
movsd  %xmm0,(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    %esi,(%rax)
mov    $0x1,%eax
retq   

0000000000000340 <OSSL_PARAM_set_int>:
jmpq   345 <OSSL_PARAM_set_int+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000350 <OSSL_PARAM_construct_int32>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x1,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x4,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000380 <OSSL_PARAM_get_uint32>:
test   %rsi,%rsi
je     3e7 <OSSL_PARAM_get_uint32+0x67>
test   %rdi,%rdi
je     3e7 <OSSL_PARAM_get_uint32+0x67>
mov    0x8(%rdi),%edx
cmp    $0x2,%edx
je     3f0 <OSSL_PARAM_get_uint32+0x70>
cmp    $0x1,%edx
je     420 <OSSL_PARAM_get_uint32+0xa0>
xor    %eax,%eax
cmp    $0x3,%edx
je     3a8 <OSSL_PARAM_get_uint32+0x28>
repz retq 
nopl   0x0(%rax)
cmpq   $0x8,0x18(%rdi)
jne    3a2 <OSSL_PARAM_get_uint32+0x22>
mov    0x10(%rdi),%rdx
movsd  (%rdx),%xmm0
ucomisd 0x0(%rip),%xmm0        # 3bf <OSSL_PARAM_get_uint32+0x3f>
jb     3a2 <OSSL_PARAM_get_uint32+0x22>
movsd  0x0(%rip),%xmm1        # 3c9 <OSSL_PARAM_get_uint32+0x49>
ucomisd %xmm0,%xmm1
jb     3a2 <OSSL_PARAM_get_uint32+0x22>
cvttsd2si %xmm0,%rdx
pxor   %xmm1,%xmm1
mov    %edx,%eax
cvtsi2sd %rax,%xmm1
ucomisd %xmm1,%xmm0
jp     3e7 <OSSL_PARAM_get_uint32+0x67>
je     413 <OSSL_PARAM_get_uint32+0x93>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     440 <OSSL_PARAM_get_uint32+0xc0>
cmp    $0x8,%rax
jne    3e7 <OSSL_PARAM_get_uint32+0x67>
mov    0x10(%rdi),%rax
mov    $0xffffffff,%ecx
mov    (%rax),%rdx
xor    %eax,%eax
cmp    %rcx,%rdx
ja     3a2 <OSSL_PARAM_get_uint32+0x22>
mov    %edx,(%rsi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
jne    3fa <OSSL_PARAM_get_uint32+0x7a>
mov    0x10(%rdi),%rax
mov    (%rax),%edx
xor    %eax,%eax
test   %edx,%edx
jns    413 <OSSL_PARAM_get_uint32+0x93>
jmpq   3a2 <OSSL_PARAM_get_uint32+0x22>
nopl   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
mov    (%rax),%eax
mov    %eax,(%rsi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax

0000000000000450 <OSSL_PARAM_get_uint>:
jmpq   455 <OSSL_PARAM_get_uint+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000460 <OSSL_PARAM_set_uint32>:
test   %rdi,%rdi
je     47f <OSSL_PARAM_set_uint32+0x1f>
mov    0x8(%rdi),%eax
movq   $0x0,0x20(%rdi)
cmp    $0x2,%eax
je     488 <OSSL_PARAM_set_uint32+0x28>
cmp    $0x1,%eax
je     4c0 <OSSL_PARAM_set_uint32+0x60>
cmp    $0x3,%eax
je     4f0 <OSSL_PARAM_set_uint32+0x90>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movq   $0x4,0x20(%rdi)
test   %rax,%rax
je     4b6 <OSSL_PARAM_set_uint32+0x56>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     4df <OSSL_PARAM_set_uint32+0x7f>
cmp    $0x8,%rdx
jne    47f <OSSL_PARAM_set_uint32+0x1f>
mov    %esi,%ecx
movq   $0x8,0x20(%rdi)
mov    %rcx,(%rax)
mov    $0x1,%eax
retq   
nopl   0x0(%rax)
mov    0x10(%rdi),%rax
movq   $0x4,0x20(%rdi)
test   %rax,%rax
je     4b6 <OSSL_PARAM_set_uint32+0x56>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
jne    4a3 <OSSL_PARAM_set_uint32+0x43>
test   %esi,%esi
js     47f <OSSL_PARAM_set_uint32+0x1f>
mov    %esi,(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     4b6 <OSSL_PARAM_set_uint32+0x56>
cmpq   $0x8,0x18(%rdi)
jne    47f <OSSL_PARAM_set_uint32+0x1f>
pxor   %xmm0,%xmm0
mov    %esi,%esi
cvtsi2sd %rsi,%xmm0
movsd  %xmm0,(%rax)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000530 <OSSL_PARAM_set_uint>:
jmpq   535 <OSSL_PARAM_set_uint+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000540 <OSSL_PARAM_construct_uint32>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x4,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000570 <OSSL_PARAM_get_int64>:
test   %rsi,%rsi
je     5a8 <OSSL_PARAM_get_int64+0x38>
test   %rdi,%rdi
je     5a8 <OSSL_PARAM_get_int64+0x38>
mov    0x8(%rdi),%edx
cmp    $0x1,%edx
je     5b0 <OSSL_PARAM_get_int64+0x40>
cmp    $0x2,%edx
je     590 <OSSL_PARAM_get_int64+0x20>
xor    %eax,%eax
cmp    $0x3,%edx
je     5d0 <OSSL_PARAM_get_int64+0x60>
repz retq 
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     650 <OSSL_PARAM_get_int64+0xe0>
cmp    $0x8,%rax
je     630 <OSSL_PARAM_get_int64+0xc0>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     620 <OSSL_PARAM_get_int64+0xb0>
cmp    $0x8,%rax
jne    5a8 <OSSL_PARAM_get_int64+0x38>
mov    0x10(%rdi),%rax
mov    (%rax),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
cmpq   $0x8,0x18(%rdi)
jne    58e <OSSL_PARAM_get_int64+0x1e>
mov    0x10(%rdi),%rdx
movsd  (%rdx),%xmm0
ucomisd 0x0(%rip),%xmm0        # 5e7 <OSSL_PARAM_get_int64+0x77>
jb     58e <OSSL_PARAM_get_int64+0x1e>
movsd  0x0(%rip),%xmm1        # 5f1 <OSSL_PARAM_get_int64+0x81>
ucomisd %xmm0,%xmm1
jb     58e <OSSL_PARAM_get_int64+0x1e>
cvttsd2si %xmm0,%rax
pxor   %xmm1,%xmm1
cvtsi2sd %rax,%xmm1
ucomisd %xmm1,%xmm0
jp     5a8 <OSSL_PARAM_get_int64+0x38>
jne    5a8 <OSSL_PARAM_get_int64+0x38>
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movslq (%rax),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
mov    0x10(%rdi),%rax
mov    (%rax),%rdx
xor    %eax,%eax
test   %rdx,%rdx
js     58e <OSSL_PARAM_get_int64+0x1e>
mov    %rdx,(%rsi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
mov    (%rax),%eax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nop

0000000000000660 <OSSL_PARAM_get_long>:
jmpq   665 <OSSL_PARAM_get_long+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000670 <OSSL_PARAM_set_int64>:
test   %rdi,%rdi
je     693 <OSSL_PARAM_set_int64+0x23>
mov    0x8(%rdi),%eax
movq   $0x0,0x20(%rdi)
cmp    $0x1,%eax
je     6a0 <OSSL_PARAM_set_int64+0x30>
cmp    $0x2,%eax
je     718 <OSSL_PARAM_set_int64+0xa8>
cmp    $0x3,%eax
je     6d0 <OSSL_PARAM_set_int64+0x60>
xor    %eax,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     6c8 <OSSL_PARAM_set_int64+0x58>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     760 <OSSL_PARAM_set_int64+0xf0>
cmp    $0x8,%rdx
jne    693 <OSSL_PARAM_set_int64+0x23>
mov    %rsi,(%rax)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
mov    0x10(%rdi),%rdx
movq   $0x8,0x20(%rdi)
test   %rdx,%rdx
je     6c8 <OSSL_PARAM_set_int64+0x58>
cmpq   $0x8,0x18(%rdi)
jne    693 <OSSL_PARAM_set_int64+0x23>
mov    %rsi,%rcx
sar    $0x3f,%rcx
mov    %rcx,%rax
xor    %rsi,%rax
sub    %rcx,%rax
shr    $0x35,%rax
test   %rax,%rax
jne    693 <OSSL_PARAM_set_int64+0x23>
pxor   %xmm0,%xmm0
mov    $0x1,%eax
cvtsi2sd %rsi,%xmm0
movsd  %xmm0,(%rdx)
retq   
nopl   0x0(%rax)
test   %rsi,%rsi
js     693 <OSSL_PARAM_set_int64+0x23>
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     6c8 <OSSL_PARAM_set_int64+0x58>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
jne    6bf <OSSL_PARAM_set_int64+0x4f>
mov    $0xffffffff,%edx
cmp    %rdx,%rsi
jg     693 <OSSL_PARAM_set_int64+0x23>
movq   $0x4,0x20(%rdi)
mov    %esi,(%rax)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
mov    $0x80000000,%edx
mov    $0xffffffff,%ecx
add    %rsi,%rdx
cmp    %rcx,%rdx
ja     693 <OSSL_PARAM_set_int64+0x23>
jmp    74e <OSSL_PARAM_set_int64+0xde>
nopl   0x0(%rax,%rax,1)

0000000000000780 <OSSL_PARAM_set_long>:
jmpq   785 <OSSL_PARAM_set_long+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000790 <OSSL_PARAM_construct_int64>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x1,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000007c0 <OSSL_PARAM_get_uint64>:
test   %rsi,%rsi
je     7f8 <OSSL_PARAM_get_uint64+0x38>
test   %rdi,%rdi
je     7f8 <OSSL_PARAM_get_uint64+0x38>
mov    0x8(%rdi),%edx
cmp    $0x2,%edx
je     800 <OSSL_PARAM_get_uint64+0x40>
cmp    $0x1,%edx
je     7e0 <OSSL_PARAM_get_uint64+0x20>
xor    %eax,%eax
cmp    $0x3,%edx
je     820 <OSSL_PARAM_get_uint64+0x60>
repz retq 
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     8b0 <OSSL_PARAM_get_uint64+0xf0>
cmp    $0x8,%rax
je     890 <OSSL_PARAM_get_uint64+0xd0>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     878 <OSSL_PARAM_get_uint64+0xb8>
cmp    $0x8,%rax
jne    7f8 <OSSL_PARAM_get_uint64+0x38>
mov    0x10(%rdi),%rax
mov    (%rax),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
cmpq   $0x8,0x18(%rdi)
jne    7de <OSSL_PARAM_get_uint64+0x1e>
mov    0x10(%rdi),%rdx
movsd  (%rdx),%xmm0
ucomisd 0x0(%rip),%xmm0        # 837 <OSSL_PARAM_get_uint64+0x77>
jb     7de <OSSL_PARAM_get_uint64+0x1e>
movsd  0x0(%rip),%xmm1        # 841 <OSSL_PARAM_get_uint64+0x81>
ucomisd %xmm0,%xmm1
jb     7de <OSSL_PARAM_get_uint64+0x1e>
ucomisd %xmm1,%xmm0
jae    8c8 <OSSL_PARAM_get_uint64+0x108>
cvttsd2si %xmm0,%rax
test   %rax,%rax
js     8e7 <OSSL_PARAM_get_uint64+0x127>
pxor   %xmm1,%xmm1
cvtsi2sd %rax,%xmm1
ucomisd %xmm1,%xmm0
jp     7f8 <OSSL_PARAM_get_uint64+0x38>
jne    7f8 <OSSL_PARAM_get_uint64+0x38>
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopl   (%rax)
mov    0x10(%rdi),%rax
mov    (%rax),%eax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
mov    (%rax),%rdx
xor    %eax,%eax
test   %rdx,%rdx
js     7de <OSSL_PARAM_get_uint64+0x1e>
mov    %rdx,(%rsi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movslq (%rax),%rdx
xor    %eax,%eax
test   %edx,%edx
jns    8a2 <OSSL_PARAM_get_uint64+0xe2>
jmpq   7de <OSSL_PARAM_get_uint64+0x1e>
nopw   0x0(%rax,%rax,1)
movapd %xmm0,%xmm2
movabs $0x8000000000000000,%rdx
subsd  %xmm1,%xmm2
cvttsd2si %xmm2,%rax
xor    %rdx,%rax
jmpq   852 <OSSL_PARAM_get_uint64+0x92>
mov    %rax,%rdx
mov    %rax,%rcx
pxor   %xmm1,%xmm1
shr    %rdx
and    $0x1,%ecx
or     %rcx,%rdx
cvtsi2sd %rdx,%xmm1
addsd  %xmm1,%xmm1
jmpq   864 <OSSL_PARAM_get_uint64+0xa4>
nopl   0x0(%rax,%rax,1)

0000000000000910 <OSSL_PARAM_get_ulong>:
jmpq   915 <OSSL_PARAM_get_ulong+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000920 <OSSL_PARAM_set_uint64>:
test   %rdi,%rdi
je     93f <OSSL_PARAM_set_uint64+0x1f>
mov    0x8(%rdi),%eax
movq   $0x0,0x20(%rdi)
cmp    $0x2,%eax
je     948 <OSSL_PARAM_set_uint64+0x28>
cmp    $0x1,%eax
je     980 <OSSL_PARAM_set_uint64+0x60>
cmp    $0x3,%eax
je     9b0 <OSSL_PARAM_set_uint64+0x90>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     9a9 <OSSL_PARAM_set_uint64+0x89>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     9f0 <OSSL_PARAM_set_uint64+0xd0>
cmp    $0x8,%rdx
jne    93f <OSSL_PARAM_set_uint64+0x1f>
mov    %rsi,(%rax)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    0x10(%rdi),%rdx
movq   $0x8,0x20(%rdi)
test   %rdx,%rdx
je     9a9 <OSSL_PARAM_set_uint64+0x89>
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     a10 <OSSL_PARAM_set_uint64+0xf0>
cmp    $0x8,%rax
jne    93f <OSSL_PARAM_set_uint64+0x1f>
test   %rsi,%rsi
js     93f <OSSL_PARAM_set_uint64+0x1f>
mov    %rsi,(%rdx)
mov    $0x1,%eax
retq   
nop
cmpq   $0x8,0x18(%rdi)
movq   $0x8,0x20(%rdi)
jne    93f <OSSL_PARAM_set_uint64+0x1f>
mov    %rsi,%rax
shr    $0x35,%rax
test   %rax,%rax
jne    93f <OSSL_PARAM_set_uint64+0x1f>
pxor   %xmm0,%xmm0
mov    0x10(%rdi),%rax
cvtsi2sd %rsi,%xmm0
movsd  %xmm0,(%rax)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
mov    $0xffffffff,%edx
cmp    %rdx,%rsi
ja     93f <OSSL_PARAM_set_uint64+0x1f>
movq   $0x4,0x20(%rdi)
mov    %esi,(%rax)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
cmp    $0x7fffffff,%rsi
ja     93f <OSSL_PARAM_set_uint64+0x1f>
movq   $0x4,0x20(%rdi)
mov    $0x1,%eax
mov    %esi,(%rdx)
retq   
nopl   (%rax)

0000000000000a30 <OSSL_PARAM_set_ulong>:
jmpq   a35 <OSSL_PARAM_set_ulong+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000a40 <OSSL_PARAM_construct_uint64>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000a70 <OSSL_PARAM_get_size_t>:
jmpq   a75 <OSSL_PARAM_get_size_t+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000a80 <OSSL_PARAM_set_size_t>:
jmpq   a85 <OSSL_PARAM_set_size_t+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000a90 <OSSL_PARAM_construct_size_t>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000ac0 <OSSL_PARAM_get_BN>:
test   %rsi,%rsi
je     ad0 <OSSL_PARAM_get_BN+0x10>
test   %rdi,%rdi
je     ad0 <OSSL_PARAM_get_BN+0x10>
cmpl   $0x2,0x8(%rdi)
je     ad8 <OSSL_PARAM_get_BN+0x18>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
push   %rbx
mov    %rsi,%rbx
mov    0x18(%rdi),%rsi
mov    (%rbx),%rdx
mov    0x10(%rdi),%rdi
callq  aec <OSSL_PARAM_get_BN+0x2c>
test   %rax,%rax
je     b00 <OSSL_PARAM_get_BN+0x40>
mov    %rax,(%rbx)
mov    $0x1,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000b10 <OSSL_PARAM_set_BN>:
test   %rdi,%rdi
je     b28 <OSSL_PARAM_set_BN+0x18>
test   %rsi,%rsi
movq   $0x0,0x20(%rdi)
je     b28 <OSSL_PARAM_set_BN+0x18>
cmpl   $0x2,0x8(%rdi)
je     b30 <OSSL_PARAM_set_BN+0x20>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rdi
mov    %rsi,%rbp
sub    $0x8,%rsp
callq  b44 <OSSL_PARAM_set_BN+0x34>
test   %eax,%eax
je     b58 <OSSL_PARAM_set_BN+0x48>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)
mov    %rbp,%rdi
callq  b60 <OSSL_PARAM_set_BN+0x50>
lea    0xe(%rax),%edx
mov    0x10(%rbx),%rsi
add    $0x7,%eax
cmovs  %edx,%eax
sar    $0x3,%eax
test   %rsi,%rsi
cltq   
mov    %rax,0x20(%rbx)
je     b97 <OSSL_PARAM_set_BN+0x87>
mov    0x18(%rbx),%rdx
cmp    %rdx,%rax
ja     b48 <OSSL_PARAM_set_BN+0x38>
mov    %rdx,0x20(%rbx)
mov    %rbp,%rdi
callq  b90 <OSSL_PARAM_set_BN+0x80>
not    %eax
shr    $0x1f,%eax
jmp    b4a <OSSL_PARAM_set_BN+0x3a>
mov    $0x1,%eax
jmp    b4a <OSSL_PARAM_set_BN+0x3a>
xchg   %ax,%ax

0000000000000ba0 <OSSL_PARAM_construct_BN>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x2,0x8(%rdi)
mov    %rdx,0x10(%rdi)
mov    %rcx,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
xchg   %ax,%ax

0000000000000bc0 <OSSL_PARAM_get_double>:
test   %rsi,%rsi
je     bf4 <OSSL_PARAM_get_double+0x34>
test   %rdi,%rdi
je     bf4 <OSSL_PARAM_get_double+0x34>
mov    0x8(%rdi),%edx
cmp    $0x3,%edx
je     c00 <OSSL_PARAM_get_double+0x40>
cmp    $0x2,%edx
je     be0 <OSSL_PARAM_get_double+0x20>
xor    %eax,%eax
cmp    $0x1,%edx
je     c20 <OSSL_PARAM_get_double+0x60>
repz retq 
mov    0x18(%rdi),%rax
cmp    $0x4,%rax
je     ca8 <OSSL_PARAM_get_double+0xe8>
cmp    $0x8,%rax
je     c70 <OSSL_PARAM_get_double+0xb0>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
cmpq   $0x8,0x18(%rdi)
jne    bf4 <OSSL_PARAM_get_double+0x34>
mov    0x10(%rdi),%rax
movsd  (%rax),%xmm0
mov    $0x1,%eax
movsd  %xmm0,(%rsi)
retq   
nopl   0x0(%rax)
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     cc8 <OSSL_PARAM_get_double+0x108>
cmp    $0x8,%rdx
jne    ca0 <OSSL_PARAM_get_double+0xe0>
mov    0x10(%rdi),%rdx
mov    (%rdx),%rdx
mov    %rdx,%rdi
sar    $0x3f,%rdi
mov    %rdi,%rcx
xor    %rdx,%rcx
sub    %rdi,%rcx
shr    $0x35,%rcx
test   %rcx,%rcx
jne    bde <OSSL_PARAM_get_double+0x1e>
pxor   %xmm0,%xmm0
mov    $0x1,%eax
cvtsi2sd %rdx,%xmm0
addsd  0x0(%rip),%xmm0        # c6a <OSSL_PARAM_get_double+0xaa>
movsd  %xmm0,(%rsi)
retq   
nop
mov    0x10(%rdi),%rax
mov    (%rax),%rdx
xor    %eax,%eax
mov    %rdx,%rcx
shr    $0x35,%rcx
test   %rcx,%rcx
jne    bde <OSSL_PARAM_get_double+0x1e>
pxor   %xmm0,%xmm0
mov    $0x1,%eax
cvtsi2sd %rdx,%xmm0
movsd  %xmm0,(%rsi)
retq   
nopl   0x0(%rax)
repz retq 
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
pxor   %xmm0,%xmm0
mov    (%rax),%eax
cvtsi2sd %rax,%xmm0
mov    $0x1,%eax
movsd  %xmm0,(%rsi)
retq   
nopl   0x0(%rax)
mov    0x10(%rdi),%rax
pxor   %xmm0,%xmm0
cvtsi2sdl (%rax),%xmm0
mov    $0x1,%eax
movsd  %xmm0,(%rsi)
retq   
xchg   %ax,%ax

0000000000000ce0 <OSSL_PARAM_set_double>:
test   %rdi,%rdi
je     dc2 <OSSL_PARAM_set_double+0xe2>
mov    0x8(%rdi),%eax
movq   $0x0,0x20(%rdi)
cmp    $0x3,%eax
je     dc8 <OSSL_PARAM_set_double+0xe8>
cmp    $0x2,%eax
je     d70 <OSSL_PARAM_set_double+0x90>
cmp    $0x1,%eax
jne    dc2 <OSSL_PARAM_set_double+0xe2>
cvttsd2si %xmm0,%rax
pxor   %xmm1,%xmm1
cvtsi2sd %rax,%xmm1
ucomisd %xmm1,%xmm0
jp     dc2 <OSSL_PARAM_set_double+0xe2>
jne    dc2 <OSSL_PARAM_set_double+0xe2>
mov    0x10(%rdi),%rcx
movq   $0x8,0x20(%rdi)
test   %rcx,%rcx
je     d69 <OSSL_PARAM_set_double+0x89>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     e30 <OSSL_PARAM_set_double+0x150>
cmp    $0x8,%rdx
jne    dc2 <OSSL_PARAM_set_double+0xe2>
ucomisd 0x0(%rip),%xmm0        # d56 <OSSL_PARAM_set_double+0x76>
jb     dc2 <OSSL_PARAM_set_double+0xe2>
movsd  0x0(%rip),%xmm1        # d60 <OSSL_PARAM_set_double+0x80>
ucomisd %xmm0,%xmm1
jb     dc2 <OSSL_PARAM_set_double+0xe2>
mov    %rax,(%rcx)
mov    $0x1,%eax
retq   
nop
movsd  0x0(%rip),%xmm1        # d78 <OSSL_PARAM_set_double+0x98>
ucomisd %xmm1,%xmm0
jae    df0 <OSSL_PARAM_set_double+0x110>
cvttsd2si %xmm0,%rax
test   %rax,%rax
js     e60 <OSSL_PARAM_set_double+0x180>
pxor   %xmm1,%xmm1
cvtsi2sd %rax,%xmm1
ucomisd %xmm1,%xmm0
jp     dc2 <OSSL_PARAM_set_double+0xe2>
jne    dc2 <OSSL_PARAM_set_double+0xe2>
mov    0x10(%rdi),%rcx
movq   $0x8,0x20(%rdi)
test   %rcx,%rcx
je     d69 <OSSL_PARAM_set_double+0x89>
mov    0x18(%rdi),%rdx
cmp    $0x4,%rdx
je     e88 <OSSL_PARAM_set_double+0x1a8>
cmp    $0x8,%rdx
je     e10 <OSSL_PARAM_set_double+0x130>
xor    %eax,%eax
retq   
nopl   (%rax)
mov    0x10(%rdi),%rax
movq   $0x8,0x20(%rdi)
test   %rax,%rax
je     d69 <OSSL_PARAM_set_double+0x89>
cmpq   $0x8,0x18(%rdi)
jne    dc2 <OSSL_PARAM_set_double+0xe2>
movsd  %xmm0,(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
movapd %xmm0,%xmm2
movabs $0x8000000000000000,%rdx
subsd  %xmm1,%xmm2
cvttsd2si %xmm2,%rax
xor    %rdx,%rax
jmpq   d83 <OSSL_PARAM_set_double+0xa3>
nop
ucomisd 0x0(%rip),%xmm0        # e18 <OSSL_PARAM_set_double+0x138>
jb     dc2 <OSSL_PARAM_set_double+0xe2>
movsd  0x0(%rip),%xmm1        # e22 <OSSL_PARAM_set_double+0x142>
ucomisd %xmm0,%xmm1
jb     dc2 <OSSL_PARAM_set_double+0xe2>
jmpq   d66 <OSSL_PARAM_set_double+0x86>
nopl   (%rax)
ucomisd 0x0(%rip),%xmm0        # e38 <OSSL_PARAM_set_double+0x158>
jb     dc2 <OSSL_PARAM_set_double+0xe2>
movsd  0x0(%rip),%xmm1        # e42 <OSSL_PARAM_set_double+0x162>
ucomisd %xmm0,%xmm1
jb     dc2 <OSSL_PARAM_set_double+0xe2>
cvttsd2si %xmm0,%eax
movq   $0x4,0x20(%rdi)
mov    %eax,(%rcx)
mov    $0x1,%eax
retq   
mov    %rax,%rdx
mov    %rax,%rcx
pxor   %xmm1,%xmm1
shr    %rdx
and    $0x1,%ecx
or     %rcx,%rdx
cvtsi2sd %rdx,%xmm1
addsd  %xmm1,%xmm1
jmpq   d95 <OSSL_PARAM_set_double+0xb5>
nopl   0x0(%rax)
ucomisd 0x0(%rip),%xmm0        # e90 <OSSL_PARAM_set_double+0x1b0>
jb     dc2 <OSSL_PARAM_set_double+0xe2>
movsd  0x0(%rip),%xmm1        # e9e <OSSL_PARAM_set_double+0x1be>
ucomisd %xmm0,%xmm1
jb     dc2 <OSSL_PARAM_set_double+0xe2>
cvttsd2si %xmm0,%rax
movq   $0x4,0x20(%rdi)
mov    %eax,(%rcx)
mov    $0x1,%eax
retq   
nopl   (%rax)

0000000000000ec0 <OSSL_PARAM_construct_double>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x3,0x8(%rdi)
mov    %rdx,0x10(%rdi)
movq   $0x8,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000ef0 <OSSL_PARAM_get_utf8_string>:
test   %rsi,%rsi
je     f00 <OSSL_PARAM_get_utf8_string+0x10>
test   %rdi,%rdi
je     f00 <OSSL_PARAM_get_utf8_string+0x10>
cmpl   $0x4,0x8(%rdi)
je     f08 <OSSL_PARAM_get_utf8_string+0x18>
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
test   %rax,%rax
je     f00 <OSSL_PARAM_get_utf8_string+0x10>
push   %r12
push   %rbp
mov    %rsi,%rbp
push   %rbx
mov    %rdi,%rbx
mov    0x18(%rdi),%r12
mov    (%rsi),%rdi
test   %rdi,%rdi
je     f50 <OSSL_PARAM_get_utf8_string+0x60>
cmp    %r12,%rdx
jae    f38 <OSSL_PARAM_get_utf8_string+0x48>
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdx
mov    %rax,%rsi
callq  f43 <OSSL_PARAM_get_utf8_string+0x53>
mov    $0x1,%eax
jmp    f2e <OSSL_PARAM_get_utf8_string+0x3e>
nopw   0x0(%rax,%rax,1)
test   %r12,%r12
mov    $0x31e,%edx
lea    0x0(%rip),%rsi        # f5f <OSSL_PARAM_get_utf8_string+0x6f>
jne    f80 <OSSL_PARAM_get_utf8_string+0x90>
mov    $0x1,%edi
callq  f6b <OSSL_PARAM_get_utf8_string+0x7b>
test   %rax,%rax
je     f2c <OSSL_PARAM_get_utf8_string+0x3c>
mov    %rax,0x0(%rbp)
mov    $0x1,%eax
jmp    f2e <OSSL_PARAM_get_utf8_string+0x3e>
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdi
callq  f88 <OSSL_PARAM_get_utf8_string+0x98>
test   %rax,%rax
je     f2c <OSSL_PARAM_get_utf8_string+0x3c>
mov    %rax,0x0(%rbp)
mov    0x10(%rbx),%rsi
mov    %r12,%rdx
mov    %rax,%rdi
callq  fa0 <OSSL_PARAM_get_utf8_string+0xb0>
mov    $0x1,%eax
jmp    f2e <OSSL_PARAM_get_utf8_string+0x3e>
nopw   0x0(%rax,%rax,1)

0000000000000fb0 <OSSL_PARAM_get_octet_string>:
test   %rsi,%rsi
sete   %r8b
test   %rcx,%rcx
sete   %al
test   %al,%r8b
jne    fcd <OSSL_PARAM_get_octet_string+0x1d>
test   %rdi,%rdi
je     fcd <OSSL_PARAM_get_octet_string+0x1d>
cmpl   $0x5,0x8(%rdi)
je     fd0 <OSSL_PARAM_get_octet_string+0x20>
xor    %eax,%eax
retq   
test   %rcx,%rcx
push   %r12
push   %rbp
push   %rbx
mov    0x18(%rdi),%r12
je     fe0 <OSSL_PARAM_get_octet_string+0x30>
mov    %r12,(%rcx)
mov    0x10(%rdi),%rax
test   %rax,%rax
je     1001 <OSSL_PARAM_get_octet_string+0x51>
test   %rsi,%rsi
je     101b <OSSL_PARAM_get_octet_string+0x6b>
mov    %rdi,%rbx
mov    (%rsi),%rdi
mov    %rsi,%rbp
test   %rdi,%rdi
je     1028 <OSSL_PARAM_get_octet_string+0x78>
cmp    %r12,%rdx
jae    1010 <OSSL_PARAM_get_octet_string+0x60>
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax,%rax,1)
mov    %r12,%rdx
mov    %rax,%rsi
callq  101b <OSSL_PARAM_get_octet_string+0x6b>
mov    $0x1,%eax
jmp    1003 <OSSL_PARAM_get_octet_string+0x53>
nopw   0x0(%rax,%rax,1)
test   %r12,%r12
mov    $0x31e,%edx
lea    0x0(%rip),%rsi        # 1037 <OSSL_PARAM_get_octet_string+0x87>
jne    1050 <OSSL_PARAM_get_octet_string+0xa0>
mov    $0x1,%edi
callq  1043 <OSSL_PARAM_get_octet_string+0x93>
test   %rax,%rax
je     1001 <OSSL_PARAM_get_octet_string+0x51>
mov    %rax,0x0(%rbp)
jmp    101b <OSSL_PARAM_get_octet_string+0x6b>
xchg   %ax,%ax
mov    %r12,%rdi
callq  1058 <OSSL_PARAM_get_octet_string+0xa8>
test   %rax,%rax
je     1001 <OSSL_PARAM_get_octet_string+0x51>
mov    %rax,0x0(%rbp)
mov    0x10(%rbx),%rsi
mov    %r12,%rdx
mov    %rax,%rdi
callq  1070 <OSSL_PARAM_get_octet_string+0xc0>
mov    $0x1,%eax
jmp    1003 <OSSL_PARAM_get_octet_string+0x53>
nopw   0x0(%rax,%rax,1)

0000000000001080 <OSSL_PARAM_set_utf8_string>:
test   %rdi,%rdi
je     10e8 <OSSL_PARAM_set_utf8_string+0x68>
test   %rsi,%rsi
movq   $0x0,0x20(%rdi)
je     10e8 <OSSL_PARAM_set_utf8_string+0x68>
push   %rbp
push   %rbx
mov    %rdi,%rbx
mov    %rsi,%rdi
mov    %rsi,%rbp
sub    $0x8,%rsp
callq  10a6 <OSSL_PARAM_set_utf8_string+0x26>
mov    0x10(%rbx),%rdi
lea    0x1(%rax),%rdx
mov    %rdx,0x20(%rbx)
test   %rdi,%rdi
je     10f0 <OSSL_PARAM_set_utf8_string+0x70>
cmpl   $0x4,0x8(%rbx)
je     10d0 <OSSL_PARAM_set_utf8_string+0x50>
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   %cs:0x0(%rax,%rax,1)
cmp    0x18(%rbx),%rdx
ja     10bd <OSSL_PARAM_set_utf8_string+0x3d>
mov    %rbp,%rsi
callq  10de <OSSL_PARAM_set_utf8_string+0x5e>
mov    $0x1,%eax
jmp    10bf <OSSL_PARAM_set_utf8_string+0x3f>
nopl   (%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)

0000000000001100 <OSSL_PARAM_set_octet_string>:
test   %rdi,%rdi
je     111d <OSSL_PARAM_set_octet_string+0x1d>
test   %rsi,%rsi
je     1150 <OSSL_PARAM_set_octet_string+0x50>
mov    0x10(%rdi),%rax
mov    %rdx,0x20(%rdi)
test   %rax,%rax
je     1140 <OSSL_PARAM_set_octet_string+0x40>
cmpl   $0x5,0x8(%rdi)
je     1120 <OSSL_PARAM_set_octet_string+0x20>
xor    %eax,%eax
retq   
cmp    0x18(%rdi),%rdx
ja     111d <OSSL_PARAM_set_octet_string+0x1d>
sub    $0x8,%rsp
mov    %rax,%rdi
callq  1132 <OSSL_PARAM_set_octet_string+0x32>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
nopl   0x0(%rax)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
movq   $0x0,0x20(%rdi)
jmp    111d <OSSL_PARAM_set_octet_string+0x1d>
nopw   0x0(%rax,%rax,1)

0000000000001160 <OSSL_PARAM_construct_utf8_string>:
test   %rdx,%rdx
push   %r12
mov    %rsi,%r12
push   %rbp
mov    %rdx,%rbp
push   %rbx
mov    %rdi,%rbx
je     1183 <OSSL_PARAM_construct_utf8_string+0x23>
test   %rcx,%rcx
jne    1183 <OSSL_PARAM_construct_utf8_string+0x23>
mov    %rdx,%rdi
callq  117f <OSSL_PARAM_construct_utf8_string+0x1f>
lea    0x1(%rax),%rcx
mov    %r12,(%rbx)
mov    %rbp,0x10(%rbx)
mov    %rbx,%rax
movl   $0x4,0x8(%rbx)
mov    %rcx,0x18(%rbx)
movq   $0xffffffffffffffff,0x20(%rbx)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000011b0 <OSSL_PARAM_construct_octet_string>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x5,0x8(%rdi)
mov    %rdx,0x10(%rdi)
mov    %rcx,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
xchg   %ax,%ax

00000000000011d0 <OSSL_PARAM_get_utf8_ptr>:
xor    %eax,%eax
test   %rsi,%rsi
je     11e2 <OSSL_PARAM_get_utf8_ptr+0x12>
test   %rdi,%rdi
je     11e2 <OSSL_PARAM_get_utf8_ptr+0x12>
cmpl   $0x6,0x8(%rdi)
je     11e8 <OSSL_PARAM_get_utf8_ptr+0x18>
repz retq 
nopl   0x0(%rax)
mov    0x10(%rdi),%rax
mov    (%rax),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000001200 <OSSL_PARAM_get_octet_ptr>:
xor    %eax,%eax
test   %rsi,%rsi
je     1212 <OSSL_PARAM_get_octet_ptr+0x12>
test   %rdi,%rdi
je     1212 <OSSL_PARAM_get_octet_ptr+0x12>
cmpl   $0x7,0x8(%rdi)
je     1218 <OSSL_PARAM_get_octet_ptr+0x18>
repz retq 
nopl   0x0(%rax)
test   %rdx,%rdx
je     1224 <OSSL_PARAM_get_octet_ptr+0x24>
mov    0x18(%rdi),%rax
mov    %rax,(%rdx)
mov    0x10(%rdi),%rax
mov    (%rax),%rax
mov    %rax,(%rsi)
mov    $0x1,%eax
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000001240 <OSSL_PARAM_set_utf8_ptr>:
test   %rdi,%rdi
je     12a8 <OSSL_PARAM_set_utf8_ptr+0x68>
push   %rbp
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
sub    $0x8,%rsp
test   %rsi,%rsi
movq   $0x0,0x20(%rdi)
je     12a0 <OSSL_PARAM_set_utf8_ptr+0x60>
mov    %rsi,%rdi
callq  1266 <OSSL_PARAM_set_utf8_ptr+0x26>
add    $0x1,%rax
mov    %rax,0x20(%rbx)
xor    %eax,%eax
cmpl   $0x6,0x8(%rbx)
je     1280 <OSSL_PARAM_set_utf8_ptr+0x40>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)
mov    0x10(%rbx),%rax
test   %rax,%rax
je     12b0 <OSSL_PARAM_set_utf8_ptr+0x70>
mov    %rbp,(%rax)
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    126a <OSSL_PARAM_set_utf8_ptr+0x2a>
nopl   0x0(%rax)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmp    1276 <OSSL_PARAM_set_utf8_ptr+0x36>
nopw   0x0(%rax,%rax,1)

00000000000012c0 <OSSL_PARAM_set_octet_ptr>:
test   %rdi,%rdi
je     12cf <OSSL_PARAM_set_octet_ptr+0xf>
cmpl   $0x7,0x8(%rdi)
mov    %rdx,0x20(%rdi)
je     12d8 <OSSL_PARAM_set_octet_ptr+0x18>
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    0x10(%rdi),%rax
test   %rax,%rax
je     12f0 <OSSL_PARAM_set_octet_ptr+0x30>
mov    %rsi,(%rax)
mov    $0x1,%eax
retq   
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000001300 <OSSL_PARAM_construct_utf8_ptr>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x6,0x8(%rdi)
mov    %rdx,0x10(%rdi)
mov    %rcx,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
xchg   %ax,%ax

0000000000001320 <OSSL_PARAM_construct_octet_ptr>:
mov    %rdi,%rax
mov    %rsi,(%rdi)
movl   $0x7,0x8(%rdi)
mov    %rdx,0x10(%rdi)
mov    %rcx,0x18(%rdi)
movq   $0xffffffffffffffff,0x20(%rdi)
retq   
xchg   %ax,%ax

0000000000001340 <OSSL_PARAM_construct_end>:
mov    %rdi,%rax
movq   $0x0,(%rdi)
movl   $0x0,0x8(%rdi)
movq   $0x0,0x10(%rdi)
movq   $0x0,0x18(%rdi)
movq   $0x0,0x20(%rdi)
retq   
