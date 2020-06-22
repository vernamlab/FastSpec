
openssl_crypto_dump/libcrypto-shlib-uid.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OPENSSL_issetugid>:
sub    $0x8,%rsp
mov    $0x17,%edi
callq  e <OPENSSL_issetugid+0xe>
test   %rax,%rax
setne  %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
