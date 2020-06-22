
openssl_crypto_dump/libcrypto-shlib-provider.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OSSL_PROVIDER_load>:
push   %r12
push   %rbp
xor    %edx,%edx
push   %rbx
mov    %rdi,%rbp
mov    %rsi,%r12
callq  11 <OSSL_PROVIDER_load+0x11>
test   %rax,%rax
mov    %rax,%rbx
je     30 <OSSL_PROVIDER_load+0x30>
mov    %rbx,%rdi
callq  21 <OSSL_PROVIDER_load+0x21>
test   %eax,%eax
mov    %rbx,%rdi
je     50 <OSSL_PROVIDER_load+0x50>
pop    %rbx
mov    %rdi,%rax
pop    %rbp
pop    %r12
retq   
xor    %ecx,%ecx
xor    %edx,%edx
mov    %r12,%rsi
mov    %rbp,%rdi
callq  3f <OSSL_PROVIDER_load+0x3f>
test   %rax,%rax
mov    %rax,%rbx
jne    19 <OSSL_PROVIDER_load+0x19>
xor    %edi,%edi
jmp    28 <OSSL_PROVIDER_load+0x28>
nopl   0x0(%rax,%rax,1)
callq  55 <OSSL_PROVIDER_load+0x55>
xor    %edi,%edi
jmp    28 <OSSL_PROVIDER_load+0x28>
nopl   0x0(%rax)

0000000000000060 <OSSL_PROVIDER_unload>:
sub    $0x8,%rsp
callq  69 <OSSL_PROVIDER_unload+0x9>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000080 <OSSL_PROVIDER_available>:
push   %rbp
push   %rbx
xor    %edx,%edx
sub    $0x8,%rsp
callq  8d <OSSL_PROVIDER_available+0xd>
mov    %rax,%rbx
mov    %rax,%rdi
callq  98 <OSSL_PROVIDER_available+0x18>
mov    %rbx,%rdi
mov    %eax,%ebp
callq  a2 <OSSL_PROVIDER_available+0x22>
add    $0x8,%rsp
mov    %ebp,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)

00000000000000b0 <OSSL_PROVIDER_gettable_params>:
jmpq   b5 <OSSL_PROVIDER_gettable_params+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000000c0 <OSSL_PROVIDER_get_params>:
jmpq   c5 <OSSL_PROVIDER_get_params+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000000d0 <OSSL_PROVIDER_query_operation>:
jmpq   d5 <OSSL_PROVIDER_query_operation+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000000e0 <OSSL_PROVIDER_get0_provider_ctx>:
jmpq   e5 <OSSL_PROVIDER_get0_provider_ctx+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000000f0 <OSSL_PROVIDER_add_builtin>:
sub    $0x8,%rsp
test   %rsi,%rsi
je     120 <OSSL_PROVIDER_add_builtin+0x30>
test   %rdx,%rdx
je     120 <OSSL_PROVIDER_add_builtin+0x30>
xor    %ecx,%ecx
callq  105 <OSSL_PROVIDER_add_builtin+0x15>
mov    %rax,%rdi
xor    %eax,%eax
test   %rdi,%rdi
je     119 <OSSL_PROVIDER_add_builtin+0x29>
callq  114 <OSSL_PROVIDER_add_builtin+0x24>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
xchg   %ax,%ax
callq  125 <OSSL_PROVIDER_add_builtin+0x35>
lea    0x0(%rip),%rdx        # 12c <OSSL_PROVIDER_add_builtin+0x3c>
lea    0x0(%rip),%rdi        # 133 <OSSL_PROVIDER_add_builtin+0x43>
mov    $0x50,%esi
callq  13d <OSSL_PROVIDER_add_builtin+0x4d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x43,%esi
mov    $0xf,%edi
callq  150 <OSSL_PROVIDER_add_builtin+0x60>
xor    %eax,%eax
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)

0000000000000160 <OSSL_PROVIDER_name>:
jmpq   165 <OSSL_PROVIDER_name+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000170 <OSSL_PROVIDER_do_all>:
jmpq   175 <OSSL_PROVIDER_do_all+0x5>
