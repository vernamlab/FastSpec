
openssl_crypto_dump/libfips-lib-ctype.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ossl_ctype_check>:
xor    %eax,%eax
cmp    $0x7f,%edi
ja     1d <ossl_ctype_check+0x1d>
lea    0x0(%rip),%rax        # e <ossl_ctype_check+0xe>
movslq %edi,%rdi
movzwl (%rax,%rdi,2),%eax
test   %esi,%eax
setne  %al
movzbl %al,%eax
repz retq 
nop

0000000000000020 <ossl_tolower>:
push   %rbx
mov    $0x2,%esi
mov    %edi,%ebx
callq  2d <ossl_tolower+0xd>
mov    %ebx,%edx
xor    $0x20,%edx
test   %eax,%eax
mov    %ebx,%eax
cmovne %edx,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

0000000000000040 <ossl_toupper>:
push   %rbx
mov    $0x1,%esi
mov    %edi,%ebx
callq  4d <ossl_toupper+0xd>
mov    %ebx,%edx
xor    $0x20,%edx
test   %eax,%eax
mov    %ebx,%eax
cmovne %edx,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)

0000000000000060 <ascii_isdigit>:
sub    $0x30,%edi
xor    %eax,%eax
cmp    $0x9,%dil
setbe  %al
retq   
