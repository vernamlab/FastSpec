
openssl_crypto_dump/libcrypto-lib-trace.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OSSL_trace_get_category_name>:
test   %edi,%edi
je     98 <OSSL_trace_get_category_name+0x98>
cmp    $0x1,%edi
je     a0 <OSSL_trace_get_category_name+0xa0>
cmp    $0x2,%edi
je     b0 <OSSL_trace_get_category_name+0xb0>
cmp    $0x3,%edi
je     c0 <OSSL_trace_get_category_name+0xc0>
cmp    $0x4,%edi
je     d0 <OSSL_trace_get_category_name+0xd0>
cmp    $0x5,%edi
je     e0 <OSSL_trace_get_category_name+0xe0>
cmp    $0x6,%edi
je     f0 <OSSL_trace_get_category_name+0xf0>
cmp    $0x7,%edi
je     100 <OSSL_trace_get_category_name+0x100>
cmp    $0x8,%edi
je     110 <OSSL_trace_get_category_name+0x110>
cmp    $0x9,%edi
je     120 <OSSL_trace_get_category_name+0x120>
cmp    $0xa,%edi
je     130 <OSSL_trace_get_category_name+0x130>
cmp    $0xb,%edi
je     140 <OSSL_trace_get_category_name+0x140>
cmp    $0xc,%edi
je     150 <OSSL_trace_get_category_name+0x150>
xor    %eax,%eax
cmp    $0xe,%edi
je     80 <OSSL_trace_get_category_name+0x80>
repz retq 
nopl   (%rax)
mov    $0xd,%eax
lea    0x0(%rip),%rdx        # 8c <OSSL_trace_get_category_name+0x8c>
shl    $0x4,%rax
mov    (%rdx,%rax,1),%rax
retq   
nopl   (%rax)
xor    %eax,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopl   0x0(%rax)
mov    $0x1,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x2,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x3,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x4,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x5,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x6,%eax
jmp    85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x7,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x8,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0x9,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0xa,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0xb,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)
mov    $0xc,%eax
jmpq   85 <OSSL_trace_get_category_name+0x85>
nopw   0x0(%rax,%rax,1)

0000000000000160 <OSSL_trace_get_category_num>:
push   %rbx
lea    0x0(%rip),%rsi        # 168 <OSSL_trace_get_category_num+0x8>
mov    %rdi,%rbx
callq  170 <OSSL_trace_get_category_num+0x10>
test   %eax,%eax
je     2d0 <OSSL_trace_get_category_num+0x170>
lea    0x0(%rip),%rsi        # 17f <OSSL_trace_get_category_num+0x1f>
mov    %rbx,%rdi
callq  187 <OSSL_trace_get_category_num+0x27>
test   %eax,%eax
je     2d8 <OSSL_trace_get_category_num+0x178>
lea    0x0(%rip),%rsi        # 196 <OSSL_trace_get_category_num+0x36>
mov    %rbx,%rdi
callq  19e <OSSL_trace_get_category_num+0x3e>
test   %eax,%eax
je     2e0 <OSSL_trace_get_category_num+0x180>
lea    0x0(%rip),%rsi        # 1ad <OSSL_trace_get_category_num+0x4d>
mov    %rbx,%rdi
callq  1b5 <OSSL_trace_get_category_num+0x55>
test   %eax,%eax
je     2f0 <OSSL_trace_get_category_num+0x190>
lea    0x0(%rip),%rsi        # 1c4 <OSSL_trace_get_category_num+0x64>
mov    %rbx,%rdi
callq  1cc <OSSL_trace_get_category_num+0x6c>
test   %eax,%eax
je     300 <OSSL_trace_get_category_num+0x1a0>
lea    0x0(%rip),%rsi        # 1db <OSSL_trace_get_category_num+0x7b>
mov    %rbx,%rdi
callq  1e3 <OSSL_trace_get_category_num+0x83>
test   %eax,%eax
je     310 <OSSL_trace_get_category_num+0x1b0>
lea    0x0(%rip),%rsi        # 1f2 <OSSL_trace_get_category_num+0x92>
mov    %rbx,%rdi
callq  1fa <OSSL_trace_get_category_num+0x9a>
test   %eax,%eax
je     320 <OSSL_trace_get_category_num+0x1c0>
lea    0x0(%rip),%rsi        # 209 <OSSL_trace_get_category_num+0xa9>
mov    %rbx,%rdi
callq  211 <OSSL_trace_get_category_num+0xb1>
test   %eax,%eax
je     330 <OSSL_trace_get_category_num+0x1d0>
lea    0x0(%rip),%rsi        # 220 <OSSL_trace_get_category_num+0xc0>
mov    %rbx,%rdi
callq  228 <OSSL_trace_get_category_num+0xc8>
test   %eax,%eax
je     340 <OSSL_trace_get_category_num+0x1e0>
lea    0x0(%rip),%rsi        # 237 <OSSL_trace_get_category_num+0xd7>
mov    %rbx,%rdi
callq  23f <OSSL_trace_get_category_num+0xdf>
test   %eax,%eax
je     350 <OSSL_trace_get_category_num+0x1f0>
lea    0x0(%rip),%rsi        # 24e <OSSL_trace_get_category_num+0xee>
mov    %rbx,%rdi
callq  256 <OSSL_trace_get_category_num+0xf6>
test   %eax,%eax
je     360 <OSSL_trace_get_category_num+0x200>
lea    0x0(%rip),%rsi        # 265 <OSSL_trace_get_category_num+0x105>
mov    %rbx,%rdi
callq  26d <OSSL_trace_get_category_num+0x10d>
test   %eax,%eax
je     370 <OSSL_trace_get_category_num+0x210>
lea    0x0(%rip),%rsi        # 27c <OSSL_trace_get_category_num+0x11c>
mov    %rbx,%rdi
callq  284 <OSSL_trace_get_category_num+0x124>
test   %eax,%eax
je     380 <OSSL_trace_get_category_num+0x220>
lea    0x0(%rip),%rsi        # 293 <OSSL_trace_get_category_num+0x133>
mov    %rbx,%rdi
callq  29b <OSSL_trace_get_category_num+0x13b>
mov    %eax,%edx
mov    $0xffffffff,%eax
test   %edx,%edx
je     2b0 <OSSL_trace_get_category_num+0x150>
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
mov    $0xd,%eax
lea    0x0(%rip),%rdx        # 2bc <OSSL_trace_get_category_num+0x15c>
shl    $0x4,%rax
pop    %rbx
mov    0x8(%rdx,%rax,1),%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopl   0x0(%rax)
mov    $0x1,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nop
mov    $0x2,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x3,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x4,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x5,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x6,%eax
jmp    2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x7,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x8,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0x9,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0xa,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0xb,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)
mov    $0xc,%eax
jmpq   2b5 <OSSL_trace_get_category_num+0x155>
nopw   0x0(%rax,%rax,1)

0000000000000390 <ossl_trace_cleanup>:
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003a0 <OSSL_trace_set_channel>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003b0 <OSSL_trace_set_callback>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003c0 <OSSL_trace_set_prefix>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003d0 <OSSL_trace_set_suffix>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003e0 <OSSL_trace_enabled>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000003f0 <OSSL_trace_begin>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000400 <OSSL_trace_end>:
repz retq 
