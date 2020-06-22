
openssl_crypto_dump/liblegacy-lib-param_build_set.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ossl_param_build_set_int>:
test   %rdi,%rdi
mov    %rdx,%rax
je     18 <ossl_param_build_set_int+0x18>
mov    %ecx,%edx
mov    %rax,%rsi
jmpq   12 <ossl_param_build_set_int+0x12>
nopw   0x0(%rax,%rax,1)
push   %rbx
mov    %rsi,%rdi
mov    %rdx,%rsi
mov    %ecx,%ebx
callq  26 <ossl_param_build_set_int+0x26>
test   %rax,%rax
je     40 <ossl_param_build_set_int+0x40>
mov    %ebx,%esi
mov    %rax,%rdi
pop    %rbx
jmpq   36 <ossl_param_build_set_int+0x36>
nopw   %cs:0x0(%rax,%rax,1)
mov    $0x1,%eax
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)

0000000000000050 <ossl_param_build_set_utf8_string>:
test   %rdi,%rdi
mov    %rdx,%rax
mov    %rcx,%rdx
je     68 <ossl_param_build_set_utf8_string+0x18>
xor    %ecx,%ecx
mov    %rax,%rsi
jmpq   65 <ossl_param_build_set_utf8_string+0x15>
nopl   (%rax)
push   %rbx
mov    %rsi,%rdi
mov    %rax,%rsi
mov    %rcx,%rbx
callq  77 <ossl_param_build_set_utf8_string+0x27>
test   %rax,%rax
je     90 <ossl_param_build_set_utf8_string+0x40>
mov    %rbx,%rsi
mov    %rax,%rdi
pop    %rbx
jmpq   88 <ossl_param_build_set_utf8_string+0x38>
nopl   0x0(%rax,%rax,1)
mov    $0x1,%eax
pop    %rbx
retq   
nopw   0x0(%rax,%rax,1)

00000000000000a0 <ossl_param_build_set_octet_string>:
test   %rdi,%rdi
mov    %rdx,%rax
mov    %rcx,%rdx
je     c0 <ossl_param_build_set_octet_string+0x20>
mov    %r8,%rcx
mov    %rax,%rsi
jmpq   b6 <ossl_param_build_set_octet_string+0x16>
nopw   %cs:0x0(%rax,%rax,1)
push   %rbp
push   %rbx
mov    %rsi,%rdi
mov    %rax,%rsi
mov    %r8,%rbp
mov    %rcx,%rbx
sub    $0x8,%rsp
callq  d7 <ossl_param_build_set_octet_string+0x37>
test   %rax,%rax
je     f0 <ossl_param_build_set_octet_string+0x50>
add    $0x8,%rsp
mov    %rbp,%rdx
mov    %rbx,%rsi
pop    %rbx
pop    %rbp
mov    %rax,%rdi
jmpq   f0 <ossl_param_build_set_octet_string+0x50>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)

0000000000000100 <ossl_param_build_set_bn_pad>:
test   %rdi,%rdi
mov    %rdx,%rax
mov    %rcx,%rdx
je     120 <ossl_param_build_set_bn_pad+0x20>
mov    %r8,%rcx
mov    %rax,%rsi
jmpq   116 <ossl_param_build_set_bn_pad+0x16>
nopw   %cs:0x0(%rax,%rax,1)
push   %rbp
push   %rbx
mov    %rsi,%rdi
mov    %rax,%rsi
mov    %r8,%rbx
mov    %rcx,%rbp
sub    $0x8,%rsp
callq  137 <ossl_param_build_set_bn_pad+0x37>
test   %rax,%rax
mov    %rax,%rdi
je     168 <ossl_param_build_set_bn_pad+0x68>
xor    %eax,%eax
cmp    0x18(%rdi),%rbx
jbe    150 <ossl_param_build_set_bn_pad+0x50>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
xchg   %ax,%ax
mov    %rbx,0x18(%rdi)
add    $0x8,%rsp
mov    %rbp,%rsi
pop    %rbx
pop    %rbp
jmpq   162 <ossl_param_build_set_bn_pad+0x62>
nopw   0x0(%rax,%rax,1)
mov    $0x1,%eax
jmp    147 <ossl_param_build_set_bn_pad+0x47>
nop

0000000000000170 <ossl_param_build_set_bn>:
test   %rdi,%rdi
mov    %rdx,%rax
je     188 <ossl_param_build_set_bn+0x18>
mov    %rcx,%rdx
mov    %rax,%rsi
jmpq   183 <ossl_param_build_set_bn+0x13>
nopl   0x0(%rax,%rax,1)
push   %rbx
mov    %rsi,%rdi
mov    %rdx,%rsi
mov    %rcx,%rbx
callq  197 <ossl_param_build_set_bn+0x27>
mov    %rax,%rdi
mov    $0x1,%eax
test   %rdi,%rdi
je     1b4 <ossl_param_build_set_bn+0x44>
mov    %rbx,%rsi
callq  1ac <ossl_param_build_set_bn+0x3c>
test   %eax,%eax
setg   %al
movzbl %al,%eax
pop    %rbx
retq   
nopw   %cs:0x0(%rax,%rax,1)

00000000000001c0 <ossl_param_build_set_multi_key_bn>:
push   %r15
push   %r14
mov    %rsi,%r14
push   %r13
push   %r12
mov    %rdi,%r13
push   %rbp
push   %rbx
mov    %rcx,%rdi
mov    %rdx,%rbp
mov    %rcx,%r12
sub    $0x8,%rsp
callq  1e2 <ossl_param_build_set_multi_key_bn+0x22>
test   %r13,%r13
je     250 <ossl_param_build_set_multi_key_bn+0x90>
test   %eax,%eax
jle    2a4 <ossl_param_build_set_multi_key_bn+0xe4>
cmpq   $0x0,0x0(%rbp)
je     2a4 <ossl_param_build_set_multi_key_bn+0xe4>
lea    -0x1(%rax),%r14d
xor    %ebx,%ebx
jmp    221 <ossl_param_build_set_multi_key_bn+0x61>
nopw   0x0(%rax,%rax,1)
cmp    %rbx,%r14
je     2a4 <ossl_param_build_set_multi_key_bn+0xe4>
add    $0x1,%rbx
cmpq   $0x0,0x0(%rbp,%rbx,8)
je     2a4 <ossl_param_build_set_multi_key_bn+0xe4>
mov    %ebx,%esi
mov    %r12,%rdi
callq  22b <ossl_param_build_set_multi_key_bn+0x6b>
mov    0x0(%rbp,%rbx,8),%rsi
mov    %rax,%rdx
mov    %r13,%rdi
callq  23b <ossl_param_build_set_multi_key_bn+0x7b>
test   %eax,%eax
jne    208 <ossl_param_build_set_multi_key_bn+0x48>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
test   %eax,%eax
jle    2a4 <ossl_param_build_set_multi_key_bn+0xe4>
mov    0x0(%rbp),%rsi
xor    %ebx,%ebx
lea    -0x1(%rax),%r13d
test   %rsi,%rsi
jne    276 <ossl_param_build_set_multi_key_bn+0xb6>
jmp    2a4 <ossl_param_build_set_multi_key_bn+0xe4>
nopl   (%rax)
add    $0x1,%rbx
mov    0x0(%rbp,%rbx,8),%rsi
test   %rsi,%rsi
je     2a4 <ossl_param_build_set_multi_key_bn+0xe4>
mov    %r14,%rdi
callq  27e <ossl_param_build_set_multi_key_bn+0xbe>
test   %rax,%rax
mov    %rax,%r15
je     29f <ossl_param_build_set_multi_key_bn+0xdf>
mov    %ebx,%esi
mov    %r12,%rdi
callq  290 <ossl_param_build_set_multi_key_bn+0xd0>
mov    %r15,%rdi
mov    %rax,%rsi
callq  29b <ossl_param_build_set_multi_key_bn+0xdb>
test   %eax,%eax
je     23f <ossl_param_build_set_multi_key_bn+0x7f>
cmp    %rbx,%r13
jne    268 <ossl_param_build_set_multi_key_bn+0xa8>
add    $0x8,%rsp
mov    $0x1,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
