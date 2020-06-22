
openssl_crypto_dump/libcrypto-lib-o_dir.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OPENSSL_DIR_read>:
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x8,%rsp
test   %rdi,%rdi
je     c0 <OPENSSL_DIR_read+0xc0>
test   %rsi,%rsi
mov    %rsi,%rbp
je     c0 <OPENSSL_DIR_read+0xc0>
mov    %rdi,%rbx
callq  27 <OPENSSL_DIR_read+0x27>
mov    %rax,%r12
movl   $0x0,(%rax)
mov    (%rbx),%rax
test   %rax,%rax
je     70 <OPENSSL_DIR_read+0x70>
mov    (%rax),%rdi
callq  40 <OPENSSL_DIR_read+0x40>
test   %rax,%rax
je     e0 <OPENSSL_DIR_read+0xe0>
lea    0x13(%rax),%rsi
mov    (%rbx),%rax
mov    $0x1001,%edx
lea    0x8(%rax),%rdi
callq  5e <OPENSSL_DIR_read+0x5e>
mov    (%rbx),%rax
add    $0x8,%rax
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
mov    $0x1,%esi
mov    $0x1010,%edi
callq  7f <OPENSSL_DIR_read+0x7f>
test   %rax,%rax
mov    %rax,%r13
mov    %rax,(%rbx)
je     e4 <OPENSSL_DIR_read+0xe4>
mov    %rbp,%rdi
callq  92 <OPENSSL_DIR_read+0x92>
mov    %rax,0x0(%r13)
mov    (%rbx),%rax
mov    (%rax),%rdi
test   %rdi,%rdi
jne    3b <OPENSSL_DIR_read+0x3b>
mov    (%r12),%ebp
mov    %rax,%rdi
callq  ad <OPENSSL_DIR_read+0xad>
movq   $0x0,(%rbx)
xor    %eax,%eax
mov    %ebp,(%r12)
jmp    65 <OPENSSL_DIR_read+0x65>
nopl   0x0(%rax)
callq  c5 <OPENSSL_DIR_read+0xc5>
movl   $0x16,(%rax)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    65 <OPENSSL_DIR_read+0x65>
movl   $0xc,(%r12)
xor    %eax,%eax
jmpq   65 <OPENSSL_DIR_read+0x65>
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000100 <OPENSSL_DIR_end>:
push   %rbp
push   %rbx
sub    $0x8,%rsp
test   %rdi,%rdi
je     140 <OPENSSL_DIR_end+0x40>
mov    (%rdi),%rax
mov    %rdi,%rbx
test   %rax,%rax
je     140 <OPENSSL_DIR_end+0x40>
mov    (%rax),%rdi
callq  11e <OPENSSL_DIR_end+0x1e>
mov    (%rbx),%rdi
mov    %eax,%ebp
callq  128 <OPENSSL_DIR_end+0x28>
xor    %eax,%eax
cmp    $0xffffffff,%ebp
je     138 <OPENSSL_DIR_end+0x38>
test   %ebp,%ebp
mov    $0x1,%eax
jne    140 <OPENSSL_DIR_end+0x40>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nop
callq  145 <OPENSSL_DIR_end+0x45>
movl   $0x16,(%rax)
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
