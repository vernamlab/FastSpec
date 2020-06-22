
openssl_crypto_dump/libcrypto-lib-cpt_err.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ERR_load_CRYPTO_strings>:
sub    $0x8,%rsp
mov    $0xf000075,%edi
callq  e <ERR_load_CRYPTO_strings+0xe>
test   %rax,%rax
je     20 <ERR_load_CRYPTO_strings+0x20>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
nopl   (%rax)
lea    0x0(%rip),%rdi        # 27 <ERR_load_CRYPTO_strings+0x27>
callq  2c <ERR_load_CRYPTO_strings+0x2c>
mov    $0x1,%eax
add    $0x8,%rsp
retq   
