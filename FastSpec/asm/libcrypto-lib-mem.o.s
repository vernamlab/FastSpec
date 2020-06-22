
openssl_crypto_dump/libcrypto-lib-mem.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <CRYPTO_free>:
mov    0x0(%rip),%rax        # 7 <CRYPTO_free+0x7>
cmp    0x0(%rip),%rax        # e <CRYPTO_free+0xe>
je     18 <CRYPTO_free+0x18>
jmpq   *%rax
nopw   0x0(%rax,%rax,1)
jmpq   1d <CRYPTO_free+0x1d>
nopl   (%rax)

0000000000000020 <CRYPTO_malloc>:
mov    0x0(%rip),%rax        # 27 <CRYPTO_malloc+0x7>
cmp    0x0(%rip),%rax        # 2e <CRYPTO_malloc+0xe>
je     38 <CRYPTO_malloc+0x18>
jmpq   *%rax
nopw   0x0(%rax,%rax,1)
test   %rdi,%rdi
je     60 <CRYPTO_malloc+0x40>
mov    0x0(%rip),%eax        # 43 <CRYPTO_malloc+0x23>
test   %eax,%eax
je     51 <CRYPTO_malloc+0x31>
movl   $0x0,0x0(%rip)        # 51 <CRYPTO_malloc+0x31>
jmpq   56 <CRYPTO_malloc+0x36>
nopw   %cs:0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000070 <CRYPTO_realloc>:
mov    0x0(%rip),%rax        # 77 <CRYPTO_realloc+0x7>
cmp    0x0(%rip),%rax        # 7e <CRYPTO_realloc+0xe>
mov    %rsi,%r8
mov    %rdx,%rsi
je     90 <CRYPTO_realloc+0x20>
mov    %r8,%rsi
jmpq   *%rax
nopl   0x0(%rax,%rax,1)
test   %rdi,%rdi
je     c0 <CRYPTO_realloc+0x50>
test   %r8,%r8
je     a8 <CRYPTO_realloc+0x38>
mov    %r8,%rsi
jmpq   a2 <CRYPTO_realloc+0x32>
nopw   0x0(%rax,%rax,1)
sub    $0x8,%rsp
mov    %ecx,%edx
callq  b3 <CRYPTO_realloc+0x43>
xor    %eax,%eax
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)
mov    %ecx,%edx
mov    %r8,%rdi
jmpq   ca <CRYPTO_realloc+0x5a>
nopw   0x0(%rax,%rax,1)

00000000000000d0 <CRYPTO_set_mem_functions>:
mov    0x0(%rip),%eax        # d6 <CRYPTO_set_mem_functions+0x6>
test   %eax,%eax
je     10d <CRYPTO_set_mem_functions+0x3d>
test   %rdi,%rdi
je     e6 <CRYPTO_set_mem_functions+0x16>
mov    %rdi,0x0(%rip)        # e6 <CRYPTO_set_mem_functions+0x16>
test   %rsi,%rsi
je     f2 <CRYPTO_set_mem_functions+0x22>
mov    %rsi,0x0(%rip)        # f2 <CRYPTO_set_mem_functions+0x22>
test   %rdx,%rdx
je     108 <CRYPTO_set_mem_functions+0x38>
mov    %rdx,0x0(%rip)        # fe <CRYPTO_set_mem_functions+0x2e>
mov    $0x1,%eax
retq   
nopl   0x0(%rax)
mov    $0x1,%eax
repz retq 
nop

0000000000000110 <CRYPTO_get_mem_functions>:
test   %rdi,%rdi
je     11f <CRYPTO_get_mem_functions+0xf>
mov    0x0(%rip),%rax        # 11c <CRYPTO_get_mem_functions+0xc>
mov    %rax,(%rdi)
test   %rsi,%rsi
je     12e <CRYPTO_get_mem_functions+0x1e>
mov    0x0(%rip),%rax        # 12b <CRYPTO_get_mem_functions+0x1b>
mov    %rax,(%rsi)
test   %rdx,%rdx
je     13d <CRYPTO_get_mem_functions+0x2d>
mov    0x0(%rip),%rax        # 13a <CRYPTO_get_mem_functions+0x2a>
mov    %rax,(%rdx)
repz retq 
nop

0000000000000140 <CRYPTO_zalloc>:
push   %rbp
push   %rbx
mov    %rdi,%rbp
sub    $0x8,%rsp
callq  14e <CRYPTO_zalloc+0xe>
test   %rax,%rax
mov    %rax,%rbx
je     163 <CRYPTO_zalloc+0x23>
mov    %rbp,%rdx
xor    %esi,%esi
mov    %rax,%rdi
callq  163 <CRYPTO_zalloc+0x23>
add    $0x8,%rsp
mov    %rbx,%rax
pop    %rbx
pop    %rbp
retq   
nopl   (%rax)

0000000000000170 <CRYPTO_clear_free>:
test   %rdi,%rdi
je     1b0 <CRYPTO_clear_free+0x40>
push   %rbp
push   %rbx
mov    %rdx,%rax
mov    %rax,%rbp
mov    %ecx,%edx
mov    %rdi,%rbx
sub    $0x18,%rsp
test   %rsi,%rsi
jne    1a0 <CRYPTO_clear_free+0x30>
add    $0x18,%rsp
mov    %rbp,%rsi
mov    %rbx,%rdi
pop    %rbx
pop    %rbp
jmpq   19c <CRYPTO_clear_free+0x2c>
nopl   0x0(%rax)
mov    %ecx,0xc(%rsp)
callq  1a9 <CRYPTO_clear_free+0x39>
mov    0xc(%rsp),%edx
jmp    18b <CRYPTO_clear_free+0x1b>
nop
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000001c0 <CRYPTO_clear_realloc>:
test   %rdi,%rdi
mov    %rdx,%rax
je     250 <CRYPTO_clear_realloc+0x90>
test   %rdx,%rdx
push   %r14
push   %r13
mov    %r8d,%r13d
push   %r12
mov    %rcx,%r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
mov    %rsi,%rbx
je     260 <CRYPTO_clear_realloc+0xa0>
cmp    %rsi,%rdx
jb     230 <CRYPTO_clear_realloc+0x70>
mov    %r8d,%edx
mov    %rcx,%rsi
mov    %rax,%rdi
callq  1f8 <CRYPTO_clear_realloc+0x38>
mov    %rax,%r14
xor    %eax,%eax
test   %r14,%r14
je     224 <CRYPTO_clear_realloc+0x64>
mov    %rbx,%rdx
mov    %rbp,%rsi
mov    %r14,%rdi
callq  210 <CRYPTO_clear_realloc+0x50>
mov    %r13d,%ecx
mov    %r12,%rdx
mov    %rbx,%rsi
mov    %rbp,%rdi
callq  221 <CRYPTO_clear_realloc+0x61>
mov    %r14,%rax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   (%rax)
sub    %rdx,%rbx
lea    (%rdi,%rdx,1),%rdi
mov    %rbx,%rsi
callq  23f <CRYPTO_clear_realloc+0x7f>
pop    %rbx
mov    %rbp,%rax
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax,%rax,1)
mov    %r8d,%edx
mov    %rcx,%rsi
mov    %rax,%rdi
jmpq   25e <CRYPTO_clear_realloc+0x9e>
xchg   %ax,%ax
mov    %r8d,%ecx
mov    %r12,%rdx
callq  26b <CRYPTO_clear_realloc+0xab>
xor    %eax,%eax
jmp    224 <CRYPTO_clear_realloc+0x64>
