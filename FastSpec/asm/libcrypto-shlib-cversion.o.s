
openssl_crypto_dump/libcrypto-shlib-cversion.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OpenSSL_version_num>:
mov    $0x30000000,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000010 <OPENSSL_version_major>:
mov    $0x3,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <OPENSSL_version_minor>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000030 <OPENSSL_version_patch>:
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000040 <OPENSSL_version_pre_release>:
lea    0x0(%rip),%rax        # 47 <OPENSSL_version_pre_release+0x7>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000050 <OPENSSL_version_build_metadata>:
lea    0x0(%rip),%rax        # 57 <OPENSSL_version_build_metadata+0x7>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000060 <OpenSSL_version>:
cmp    $0x9,%edi
ja     130 <OpenSSL_version+0xd0>
lea    0x0(%rip),%rax        # 70 <OpenSSL_version+0x10>
mov    %edi,%edi
movslq (%rax,%rdi,4),%rdx
add    %rdx,%rax
jmpq   *%rax
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # 87 <OpenSSL_version+0x27>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # 97 <OpenSSL_version+0x37>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # a7 <OpenSSL_version+0x47>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # b7 <OpenSSL_version+0x57>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # c7 <OpenSSL_version+0x67>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # d7 <OpenSSL_version+0x77>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # e7 <OpenSSL_version+0x87>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # f7 <OpenSSL_version+0x97>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # 107 <OpenSSL_version+0xa7>
retq   
nopl   0x0(%rax,%rax,1)
sub    $0x8,%rsp
mov    $0x3f0,%edi
callq  11e <OpenSSL_version+0xbe>
test   %rax,%rax
je     140 <OpenSSL_version+0xe0>
mov    0x0(%rip),%rax        # 12a <OpenSSL_version+0xca>
add    $0x8,%rsp
retq   
nop
lea    0x0(%rip),%rax        # 137 <OpenSSL_version+0xd7>
retq   
nopl   0x0(%rax,%rax,1)
lea    0x0(%rip),%rax        # 147 <OpenSSL_version+0xe7>
jmp    12a <OpenSSL_version+0xca>
