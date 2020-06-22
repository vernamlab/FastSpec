
openssl_crypto_dump/libfips-lib-initthread.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <thread_event_ossl_ctx_free>:
lea    0x0(%rip),%rsi        # 7 <thread_event_ossl_ctx_free+0x7>
mov    $0x111,%edx
jmpq   11 <thread_event_ossl_ctx_free+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <thread_event_ossl_ctx_new>:
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # 29 <thread_event_ossl_ctx_new+0x9>
mov    $0xf8,%edx
mov    $0x4,%edi
sub    $0x8,%rsp
callq  3c <thread_event_ossl_ctx_new+0x1c>
test   %rax,%rax
je     d0 <thread_event_ossl_ctx_new+0xb0>
xor    %esi,%esi
mov    %rax,%rdi
mov    %rax,%rbx
callq  52 <thread_event_ossl_ctx_new+0x32>
test   %eax,%eax
je     90 <thread_event_ossl_ctx_new+0x70>
lea    0x0(%rip),%rsi        # 5d <thread_event_ossl_ctx_new+0x3d>
mov    $0x101,%edx
mov    $0x8,%edi
callq  6c <thread_event_ossl_ctx_new+0x4c>
test   %rax,%rax
mov    %rax,%rbp
je     90 <thread_event_ossl_ctx_new+0x70>
mov    %rax,%rsi
mov    %rbx,%rdi
callq  7f <thread_event_ossl_ctx_new+0x5f>
test   %eax,%eax
mov    %rbx,%rdx
je     92 <thread_event_ossl_ctx_new+0x72>
add    $0x8,%rsp
mov    %rdx,%rax
pop    %rbx
pop    %rbp
retq   
xor    %ebp,%ebp
lea    0x0(%rip),%rsi        # 99 <thread_event_ossl_ctx_new+0x79>
mov    %rbp,%rdi
mov    $0x10a,%edx
callq  a6 <thread_event_ossl_ctx_new+0x86>
lea    0x0(%rip),%rsi        # ad <thread_event_ossl_ctx_new+0x8d>
mov    $0x10b,%edx
mov    %rbx,%rdi
callq  ba <thread_event_ossl_ctx_new+0x9a>
add    $0x8,%rsp
xor    %edx,%edx
mov    %rdx,%rax
pop    %rbx
pop    %rbp
retq   
nopw   %cs:0x0(%rax,%rax,1)
xor    %edx,%edx
jmp    86 <thread_event_ossl_ctx_new+0x66>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000000e0 <ossl_ctx_thread_stop>:
push   %r14
lea    0x0(%rip),%rdx        # e9 <ossl_ctx_thread_stop+0x9>
push   %r13
push   %r12
push   %rbp
mov    $0x8,%esi
push   %rbx
mov    %rdi,%rbp
callq  fc <ossl_ctx_thread_stop+0x1c>
test   %rax,%rax
je     1d8 <ossl_ctx_thread_stop+0xf8>
mov    %rax,%rbx
mov    %rax,%rdi
callq  110 <ossl_ctx_thread_stop+0x30>
xor    %esi,%esi
mov    %rax,%r13
mov    %rbx,%rdi
callq  11d <ossl_ctx_thread_stop+0x3d>
test   %r13,%r13
je     182 <ossl_ctx_thread_stop+0xa2>
mov    0x0(%r13),%rbx
test   %rbx,%rbx
je     182 <ossl_ctx_thread_stop+0xa2>
xor    %r12d,%r12d
test   %rbp,%rbp
jne    144 <ossl_ctx_thread_stop+0x64>
jmp    1a0 <ossl_ctx_thread_stop+0xc0>
nopl   (%rax)
mov    %rbx,%r12
mov    0x18(%rbx),%rbx
test   %rbx,%rbx
je     182 <ossl_ctx_thread_stop+0xa2>
cmp    0x8(%rbx),%rbp
jne    138 <ossl_ctx_thread_stop+0x58>
mov    %rbp,%rdi
callq  *0x10(%rbx)
test   %r12,%r12
mov    0x18(%rbx),%rax
je     1e8 <ossl_ctx_thread_stop+0x108>
mov    %rax,0x18(%r12)
mov    0x18(%rbx),%r14
lea    0x0(%rip),%rsi        # 16d <ossl_ctx_thread_stop+0x8d>
mov    %rbx,%rdi
mov    $0x142,%edx
callq  17a <ossl_ctx_thread_stop+0x9a>
mov    %r14,%rbx
test   %rbx,%rbx
jne    144 <ossl_ctx_thread_stop+0x64>
pop    %rbx
mov    %r13,%rdi
lea    0x0(%rip),%rsi        # 18d <ossl_ctx_thread_stop+0xad>
mov    $0x125,%edx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
jmpq   19e <ossl_ctx_thread_stop+0xbe>
xchg   %ax,%ax
mov    0x8(%rbx),%rdi
callq  *0x10(%rbx)
mov    0x18(%rbx),%rax
lea    0x0(%rip),%rsi        # 1b2 <ossl_ctx_thread_stop+0xd2>
mov    %rbx,%rdi
mov    $0x142,%edx
mov    %rax,0x0(%r13)
mov    0x18(%rbx),%rbp
callq  1c7 <ossl_ctx_thread_stop+0xe7>
test   %rbp,%rbp
mov    %rbp,%rbx
jne    1a0 <ossl_ctx_thread_stop+0xc0>
jmp    182 <ossl_ctx_thread_stop+0xa2>
nopl   0x0(%rax)
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopl   0x0(%rax)
mov    %rax,0x0(%r13)
jmpq   162 <ossl_ctx_thread_stop+0x82>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000200 <ossl_init_thread_start>:
push   %r15
push   %r14
push   %r13
push   %r12
mov    %rdx,%r13
push   %rbp
push   %rbx
mov    %rsi,%rbp
lea    0x0(%rip),%rdx        # 217 <ossl_init_thread_start+0x17>
mov    $0x8,%esi
mov    %rdi,%r12
sub    $0x8,%rsp
mov    %rbp,%rdi
callq  22b <ossl_init_thread_start+0x2b>
mov    %rax,%rdi
mov    %rax,%r14
callq  236 <ossl_init_thread_start+0x36>
test   %rax,%rax
mov    %rax,%rbx
je     290 <ossl_init_thread_start+0x90>
cmpq   $0x0,(%rbx)
je     2f8 <ossl_init_thread_start+0xf8>
lea    0x0(%rip),%rsi        # 24f <ossl_init_thread_start+0x4f>
mov    $0x170,%edx
mov    $0x20,%edi
callq  25e <ossl_init_thread_start+0x5e>
test   %rax,%rax
je     2e0 <ossl_init_thread_start+0xe0>
mov    %r13,0x10(%rax)
mov    %rbp,0x8(%rax)
mov    %r12,(%rax)
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
nopl   0x0(%rax)
lea    0x0(%rip),%rsi        # 297 <ossl_init_thread_start+0x97>
mov    $0x60,%edx
mov    $0x8,%edi
callq  2a6 <ossl_init_thread_start+0xa6>
test   %rax,%rax
mov    %rax,%r15
je     2e0 <ossl_init_thread_start+0xe0>
mov    %rax,%rsi
mov    %r14,%rdi
mov    %r15,%rbx
callq  2bc <ossl_init_thread_start+0xbc>
test   %eax,%eax
jne    23e <ossl_init_thread_start+0x3e>
lea    0x0(%rip),%rsi        # 2cb <ossl_init_thread_start+0xcb>
mov    $0x64,%edx
mov    %r15,%rdi
callq  2d8 <ossl_init_thread_start+0xd8>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
mov    0x0(%rip),%rax        # 2ff <ossl_init_thread_start+0xff>
mov    %rbp,%rdi
mov    (%rax),%r14
callq  30a <ossl_init_thread_start+0x10a>
mov    0x0(%rip),%rsi        # 311 <ossl_init_thread_start+0x111>
mov    %rax,%rdi
callq  *%r14
test   %eax,%eax
jne    248 <ossl_init_thread_start+0x48>
xor    %eax,%eax
jmp    2e2 <ossl_init_thread_start+0xe2>
