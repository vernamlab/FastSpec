
openssl_crypto_dump/libcrypto-shlib-info.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <init_info_strings_ossl_>:
mov    0x0(%rip),%rax        # 7 <init_info_strings_ossl_+0x7>
push   %rbx
lea    0x0(%rip),%rdx        # f <init_info_strings_ossl_+0xf>
mov    0x0(%rip),%rbx        # 16 <init_info_strings_ossl_+0x16>
mov    $0x80,%esi
mov    0x8(%rax),%r8
mov    (%rax),%rcx
xor    %eax,%eax
mov    %rbx,%rdi
callq  2c <init_info_strings_ossl_+0x2c>
lea    0x0(%rip),%rdi        # 33 <init_info_strings_ossl_+0x33>
callq  38 <init_info_strings_ossl_+0x38>
test   %rax,%rax
je     95 <init_info_strings_ossl_+0x95>
mov    %rbx,%rdi
mov    (%rdi),%esi
add    $0x4,%rdi
lea    -0x1010101(%rsi),%edx
not    %esi
and    %esi,%edx
and    $0x80808080,%edx
je     40 <init_info_strings_ossl_+0x40>
mov    %edx,%ecx
mov    $0x80,%esi
shr    $0x10,%ecx
test   $0x8080,%edx
cmove  %ecx,%edx
lea    0x2(%rdi),%rcx
cmove  %rcx,%rdi
mov    %edx,%ecx
add    %dl,%cl
lea    0x0(%rip),%rdx        # 7e <init_info_strings_ossl_+0x7e>
mov    %rax,%rcx
sbb    $0x3,%rdi
xor    %eax,%eax
sub    %rbx,%rdi
sub    %rdi,%rsi
add    %rbx,%rdi
callq  95 <init_info_strings_ossl_+0x95>
cmpb   $0x0,0x0(%rip)        # 9c <init_info_strings_ossl_+0x9c>
je     b6 <init_info_strings_ossl_+0xb6>
lea    0x0(%rip),%rsi        # a5 <init_info_strings_ossl_+0xa5>
lea    0x0(%rip),%rdi        # ac <init_info_strings_ossl_+0xac>
mov    $0x200,%edx
callq  b6 <init_info_strings_ossl_+0xb6>
lea    0x0(%rip),%rsi        # bd <init_info_strings_ossl_+0xbd>
lea    0x0(%rip),%rdi        # c4 <init_info_strings_ossl_+0xc4>
mov    $0x200,%edx
callq  ce <init_info_strings_ossl_+0xce>
lea    0x0(%rip),%rax        # d5 <init_info_strings_ossl_+0xd5>
pop    %rbx
mov    %rax,0x0(%rip)        # dd <init_info_strings_ossl_+0xdd>
retq   
xchg   %ax,%ax

00000000000000e0 <OPENSSL_info>:
push   %rbx
lea    -0xe8(%rip),%rsi        # 0 <init_info_strings_ossl_>
mov    %edi,%ebx
lea    0x0(%rip),%rdi        # f1 <OPENSSL_info+0x11>
callq  f6 <OPENSSL_info+0x16>
lea    -0x3e9(%rbx),%edi
cmp    $0x7,%edi
ja     1a8 <OPENSSL_info+0xc8>
lea    0x0(%rip),%rax        # 10c <OPENSSL_info+0x2c>
movslq (%rax,%rdi,4),%rdx
add    %rdx,%rax
jmpq   *%rax
nopl   (%rax)
lea    0x0(%rip),%rax        # 11f <OPENSSL_info+0x3f>
pop    %rbx
retq   
nopl   0x0(%rax)
lea    0x0(%rip),%rax        # 12f <OPENSSL_info+0x4f>
pop    %rbx
retq   
nopl   0x0(%rax)
lea    0x0(%rip),%rax        # 13f <OPENSSL_info+0x5f>
pop    %rbx
retq   
nopl   0x0(%rax)
lea    0x0(%rip),%rax        # 14f <OPENSSL_info+0x6f>
pop    %rbx
retq   
nopl   0x0(%rax)
lea    0x0(%rip),%rax        # 15f <OPENSSL_info+0x7f>
pop    %rbx
retq   
nopl   0x0(%rax)
lea    0x0(%rip),%rax        # 16f <OPENSSL_info+0x8f>
pop    %rbx
retq   
nopl   0x0(%rax)
mov    0x0(%rip),%rax        # 17f <OPENSSL_info+0x9f>
pop    %rbx
retq   
nopl   0x0(%rax)
mov    0x0(%rip),%rdx        # 18f <OPENSSL_info+0xaf>
pop    %rbx
cmpb   $0x0,(%rdx)
lea    0x9(%rdx),%rax
mov    $0x0,%edx
cmove  %rdx,%rax
retq   
nopl   0x0(%rax)
xor    %eax,%eax
pop    %rbx
retq   
