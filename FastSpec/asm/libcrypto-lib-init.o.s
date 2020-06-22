
openssl_crypto_dump/libcrypto-lib-init.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ossl_init_no_register_atexit_ossl_>:
movl   $0x1,0x0(%rip)        # a <ossl_init_no_register_atexit_ossl_+0xa>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000010 <ossl_init_load_crypto_nodelete_ossl_>:
movl   $0x1,0x0(%rip)        # 1a <ossl_init_load_crypto_nodelete_ossl_+0xa>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000020 <ossl_init_no_load_crypto_strings_ossl_>:
movl   $0x1,0x0(%rip)        # 2a <ossl_init_no_load_crypto_strings_ossl_+0xa>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000030 <ossl_init_no_add_all_ciphers_ossl_>:
movl   $0x1,0x0(%rip)        # 3a <ossl_init_no_add_all_ciphers_ossl_+0xa>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000040 <ossl_init_no_add_all_digests_ossl_>:
movl   $0x1,0x0(%rip)        # 4a <ossl_init_no_add_all_digests_ossl_+0xa>
retq   
nopl   0x0(%rax,%rax,1)

0000000000000050 <ossl_init_zlib_ossl_>:
movl   $0x1,0x0(%rip)        # 5a <ossl_init_zlib_ossl_+0xa>
movl   $0x1,0x0(%rip)        # 64 <ossl_init_zlib_ossl_+0x14>
retq   
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000070 <ossl_init_engine_dynamic_ossl_>:
sub    $0x8,%rsp
callq  79 <ossl_init_engine_dynamic_ossl_+0x9>
movl   $0x1,0x0(%rip)        # 83 <ossl_init_engine_dynamic_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000090 <ossl_init_engine_rdrand_ossl_>:
sub    $0x8,%rsp
callq  99 <ossl_init_engine_rdrand_ossl_+0x9>
movl   $0x1,0x0(%rip)        # a3 <ossl_init_engine_rdrand_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

00000000000000b0 <ossl_init_engine_openssl_ossl_>:
sub    $0x8,%rsp
callq  b9 <ossl_init_engine_openssl_ossl_+0x9>
movl   $0x1,0x0(%rip)        # c3 <ossl_init_engine_openssl_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

00000000000000d0 <ossl_init_async_ossl_>:
sub    $0x8,%rsp
callq  d9 <ossl_init_async_ossl_+0x9>
test   %eax,%eax
je     ec <ossl_init_async_ossl_+0x1c>
movl   $0x1,0x0(%rip)        # e7 <ossl_init_async_ossl_+0x17>
mov    $0x1,%eax
mov    %eax,0x0(%rip)        # f2 <ossl_init_async_ossl_+0x22>
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)

0000000000000100 <ossl_init_config_ossl_>:
sub    $0x8,%rsp
mov    0x0(%rip),%rdi        # 10b <ossl_init_config_ossl_+0xb>
callq  110 <ossl_init_config_ossl_+0x10>
mov    %eax,0x0(%rip)        # 116 <ossl_init_config_ossl_+0x16>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000120 <ossl_init_no_config_ossl_>:
sub    $0x8,%rsp
callq  129 <ossl_init_no_config_ossl_+0x9>
movl   $0x1,0x0(%rip)        # 133 <ossl_init_no_config_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000140 <ossl_init_add_all_digests_ossl_>:
sub    $0x8,%rsp
callq  149 <ossl_init_add_all_digests_ossl_+0x9>
movl   $0x1,0x0(%rip)        # 153 <ossl_init_add_all_digests_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000160 <ossl_init_add_all_ciphers_ossl_>:
sub    $0x8,%rsp
callq  169 <ossl_init_add_all_ciphers_ossl_+0x9>
movl   $0x1,0x0(%rip)        # 173 <ossl_init_add_all_ciphers_ossl_+0x13>
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)

0000000000000180 <ossl_init_load_crypto_strings_ossl_>:
sub    $0x8,%rsp
callq  189 <ossl_init_load_crypto_strings_ossl_+0x9>
movl   $0x1,0x0(%rip)        # 193 <ossl_init_load_crypto_strings_ossl_+0x13>
mov    %eax,0x0(%rip)        # 199 <ossl_init_load_crypto_strings_ossl_+0x19>
add    $0x8,%rsp
retq   
xchg   %ax,%ax

00000000000001a0 <ossl_init_register_atexit_ossl_>:
sub    $0x8,%rsp
mov    0x0(%rip),%rdi        # 1ab <ossl_init_register_atexit_ossl_+0xb>
callq  1b0 <ossl_init_register_atexit_ossl_+0x10>
test   %eax,%eax
sete   %al
movzbl %al,%eax
mov    %eax,0x0(%rip)        # 1be <ossl_init_register_atexit_ossl_+0x1e>
add    $0x8,%rsp
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

00000000000001d0 <ossl_init_base_ossl_>:
sub    $0x8,%rsp
callq  1d9 <ossl_init_base_ossl_+0x9>
test   %rax,%rax
mov    %rax,0x0(%rip)        # 1e3 <ossl_init_base_ossl_+0x13>
je     220 <ossl_init_base_ossl_+0x50>
callq  1ea <ossl_init_base_ossl_+0x1a>
callq  1ef <ossl_init_base_ossl_+0x1f>
test   %eax,%eax
jne    200 <ossl_init_base_ossl_+0x30>
mov    %eax,0x0(%rip)        # 1f9 <ossl_init_base_ossl_+0x29>
add    $0x8,%rsp
retq   
xchg   %ax,%ax
mov    $0x1,%eax
movl   $0x1,0x0(%rip)        # 20f <ossl_init_base_ossl_+0x3f>
mov    %eax,0x0(%rip)        # 215 <ossl_init_base_ossl_+0x45>
add    $0x8,%rsp
retq   
nopw   0x0(%rax,%rax,1)
xor    %edi,%edi
callq  227 <ossl_init_base_ossl_+0x57>
xor    %eax,%eax
movq   $0x0,0x0(%rip)        # 234 <ossl_init_base_ossl_+0x64>
mov    %eax,0x0(%rip)        # 23a <ossl_init_base_ossl_+0x6a>
add    $0x8,%rsp
retq   
nop

0000000000000240 <OPENSSL_cleanup>:
mov    0x0(%rip),%edi        # 246 <OPENSSL_cleanup+0x6>
test   %edi,%edi
je     254 <OPENSSL_cleanup+0x14>
mov    0x0(%rip),%esi        # 250 <OPENSSL_cleanup+0x10>
test   %esi,%esi
je     258 <OPENSSL_cleanup+0x18>
retq   
nopl   (%rax)
push   %rbp
push   %rbx
sub    $0x8,%rsp
movl   $0x1,0x0(%rip)        # 268 <OPENSSL_cleanup+0x28>
callq  26d <OPENSSL_cleanup+0x2d>
mov    0x0(%rip),%rbx        # 274 <OPENSSL_cleanup+0x34>
test   %rbx,%rbx
je     2a2 <OPENSSL_cleanup+0x62>
nopl   0x0(%rax)
callq  *(%rbx)
mov    0x8(%rbx),%rbp
lea    0x0(%rip),%rsi        # 28d <OPENSSL_cleanup+0x4d>
mov    %rbx,%rdi
mov    $0x16a,%edx
callq  29a <OPENSSL_cleanup+0x5a>
test   %rbp,%rbp
mov    %rbp,%rbx
jne    280 <OPENSSL_cleanup+0x40>
mov    0x0(%rip),%rdi        # 2a9 <OPENSSL_cleanup+0x69>
movq   $0x0,0x0(%rip)        # 2b4 <OPENSSL_cleanup+0x74>
callq  2b9 <OPENSSL_cleanup+0x79>
mov    0x0(%rip),%ecx        # 2bf <OPENSSL_cleanup+0x7f>
movq   $0x0,0x0(%rip)        # 2ca <OPENSSL_cleanup+0x8a>
test   %ecx,%ecx
jne    360 <OPENSSL_cleanup+0x120>
mov    0x0(%rip),%edx        # 2d8 <OPENSSL_cleanup+0x98>
test   %edx,%edx
jne    350 <OPENSSL_cleanup+0x110>
mov    0x0(%rip),%eax        # 2e2 <OPENSSL_cleanup+0xa2>
test   %eax,%eax
jne    340 <OPENSSL_cleanup+0x100>
callq  2eb <OPENSSL_cleanup+0xab>
callq  2f0 <OPENSSL_cleanup+0xb0>
callq  2f5 <OPENSSL_cleanup+0xb5>
callq  2fa <OPENSSL_cleanup+0xba>
callq  2ff <OPENSSL_cleanup+0xbf>
callq  304 <OPENSSL_cleanup+0xc4>
callq  309 <OPENSSL_cleanup+0xc9>
callq  30e <OPENSSL_cleanup+0xce>
callq  313 <OPENSSL_cleanup+0xd3>
callq  318 <OPENSSL_cleanup+0xd8>
callq  31d <OPENSSL_cleanup+0xdd>
callq  322 <OPENSSL_cleanup+0xe2>
callq  327 <OPENSSL_cleanup+0xe7>
movl   $0x0,0x0(%rip)        # 331 <OPENSSL_cleanup+0xf1>
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax,%rax,1)
callq  345 <OPENSSL_cleanup+0x105>
jmp    2e6 <OPENSSL_cleanup+0xa6>
nopw   0x0(%rax,%rax,1)
callq  355 <OPENSSL_cleanup+0x115>
jmp    2dc <OPENSSL_cleanup+0x9c>
nopw   0x0(%rax,%rax,1)
callq  365 <OPENSSL_cleanup+0x125>
jmpq   2d2 <OPENSSL_cleanup+0x92>
nopw   0x0(%rax,%rax,1)

0000000000000370 <OPENSSL_init_crypto>:
mov    0x0(%rip),%r9d        # 377 <OPENSSL_init_crypto+0x7>
push   %r12
push   %rbp
mov    %rdi,%rbp
push   %rbx
test   %r9d,%r9d
je     3d0 <OPENSSL_init_crypto+0x60>
test   $0x40000,%edi
je     398 <OPENSSL_init_crypto+0x28>
xor    %ebx,%ebx
mov    %ebx,%eax
pop    %rbx
pop    %rbp
pop    %r12
retq   
nopl   0x0(%rax)
callq  39d <OPENSSL_init_crypto+0x2d>
lea    0x0(%rip),%rdx        # 3a4 <OPENSSL_init_crypto+0x34>
lea    0x0(%rip),%rdi        # 3ab <OPENSSL_init_crypto+0x3b>
mov    $0x1cc,%esi
callq  3b5 <OPENSSL_init_crypto+0x45>
xor    %edx,%edx
mov    $0x46,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  3c8 <OPENSSL_init_crypto+0x58>
jmp    38b <OPENSSL_init_crypto+0x1b>
nopw   0x0(%rax,%rax,1)
mov    %rsi,%r12
lea    0x0(%rip),%rdi        # 3da <OPENSSL_init_crypto+0x6a>
lea    -0x211(%rip),%rsi        # 1d0 <ossl_init_base_ossl_>
callq  3e6 <OPENSSL_init_crypto+0x76>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%r8d        # 3f1 <OPENSSL_init_crypto+0x81>
test   %r8d,%r8d
je     38b <OPENSSL_init_crypto+0x1b>
test   $0x40000,%ebp
mov    $0x1,%ebx
jne    38d <OPENSSL_init_crypto+0x1d>
test   $0x80000,%ebp
jne    540 <OPENSSL_init_crypto+0x1d0>
lea    -0x276(%rip),%rsi        # 1a0 <ossl_init_register_atexit_ossl_>
lea    0x0(%rip),%rdi        # 41d <OPENSSL_init_crypto+0xad>
callq  422 <OPENSSL_init_crypto+0xb2>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%edi        # 430 <OPENSSL_init_crypto+0xc0>
test   %edi,%edi
je     38b <OPENSSL_init_crypto+0x1b>
lea    -0x42f(%rip),%rsi        # 10 <ossl_init_load_crypto_nodelete_ossl_>
lea    0x0(%rip),%rdi        # 446 <OPENSSL_init_crypto+0xd6>
callq  44b <OPENSSL_init_crypto+0xdb>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%esi        # 459 <OPENSSL_init_crypto+0xe9>
test   %esi,%esi
je     38b <OPENSSL_init_crypto+0x1b>
test   $0x1,%bpl
jne    560 <OPENSSL_init_crypto+0x1f0>
test   $0x2,%bpl
jne    58e <OPENSSL_init_crypto+0x21e>
test   $0x10,%bpl
jne    5bc <OPENSSL_init_crypto+0x24c>
test   $0x4,%bpl
jne    5ea <OPENSSL_init_crypto+0x27a>
test   $0x20,%bpl
jne    617 <OPENSSL_init_crypto+0x2a7>
test   $0x8,%bpl
jne    644 <OPENSSL_init_crypto+0x2d4>
test   $0x20000,%ebp
jne    671 <OPENSSL_init_crypto+0x301>
test   $0x80,%bpl
jne    683 <OPENSSL_init_crypto+0x313>
test   $0x40,%bpl
jne    6b0 <OPENSSL_init_crypto+0x340>
test   $0x100,%ebp
jne    70a <OPENSSL_init_crypto+0x39a>
test   $0x800,%ebp
jne    764 <OPENSSL_init_crypto+0x3f4>
test   $0x200,%ebp
jne    737 <OPENSSL_init_crypto+0x3c7>
test   $0x400,%ebp
jne    7ad <OPENSSL_init_crypto+0x43d>
test   $0xfe00,%ebp
jne    7da <OPENSSL_init_crypto+0x46a>
test   $0x10000,%ebp
mov    $0x1,%ebx
je     38d <OPENSSL_init_crypto+0x1d>
lea    -0x4c1(%rip),%rsi        # 50 <ossl_init_zlib_ossl_>
lea    0x0(%rip),%rdi        # 518 <OPENSSL_init_crypto+0x1a8>
callq  51d <OPENSSL_init_crypto+0x1ad>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
xor    %ebx,%ebx
cmpl   $0x0,0x0(%rip)        # 52e <OPENSSL_init_crypto+0x1be>
setne  %bl
jmpq   38d <OPENSSL_init_crypto+0x1d>
nopw   %cs:0x0(%rax,%rax,1)
lea    -0x547(%rip),%rsi        # 0 <ossl_init_no_register_atexit_ossl_>
lea    0x0(%rip),%rdi        # 54e <OPENSSL_init_crypto+0x1de>
callq  553 <OPENSSL_init_crypto+0x1e3>
test   %eax,%eax
jne    42a <OPENSSL_init_crypto+0xba>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x547(%rip),%rsi        # 20 <ossl_init_no_load_crypto_strings_ossl_>
lea    0x0(%rip),%rdi        # 56e <OPENSSL_init_crypto+0x1fe>
callq  573 <OPENSSL_init_crypto+0x203>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%ecx        # 581 <OPENSSL_init_crypto+0x211>
test   %ecx,%ecx
jne    46b <OPENSSL_init_crypto+0xfb>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x415(%rip),%rsi        # 180 <ossl_init_load_crypto_strings_ossl_>
lea    0x0(%rip),%rdi        # 59c <OPENSSL_init_crypto+0x22c>
callq  5a1 <OPENSSL_init_crypto+0x231>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%edx        # 5af <OPENSSL_init_crypto+0x23f>
test   %edx,%edx
jne    475 <OPENSSL_init_crypto+0x105>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x593(%rip),%rsi        # 30 <ossl_init_no_add_all_ciphers_ossl_>
lea    0x0(%rip),%rdi        # 5ca <OPENSSL_init_crypto+0x25a>
callq  5cf <OPENSSL_init_crypto+0x25f>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%eax        # 5dd <OPENSSL_init_crypto+0x26d>
test   %eax,%eax
jne    47f <OPENSSL_init_crypto+0x10f>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x491(%rip),%rsi        # 160 <ossl_init_add_all_ciphers_ossl_>
lea    0x0(%rip),%rdi        # 5f8 <OPENSSL_init_crypto+0x288>
callq  5fd <OPENSSL_init_crypto+0x28d>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 60c <OPENSSL_init_crypto+0x29c>
jne    489 <OPENSSL_init_crypto+0x119>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x5de(%rip),%rsi        # 40 <ossl_init_no_add_all_digests_ossl_>
lea    0x0(%rip),%rdi        # 625 <OPENSSL_init_crypto+0x2b5>
callq  62a <OPENSSL_init_crypto+0x2ba>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 639 <OPENSSL_init_crypto+0x2c9>
jne    493 <OPENSSL_init_crypto+0x123>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x50b(%rip),%rsi        # 140 <ossl_init_add_all_digests_ossl_>
lea    0x0(%rip),%rdi        # 652 <OPENSSL_init_crypto+0x2e2>
callq  657 <OPENSSL_init_crypto+0x2e7>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 666 <OPENSSL_init_crypto+0x2f6>
jne    49d <OPENSSL_init_crypto+0x12d>
jmpq   38b <OPENSSL_init_crypto+0x1b>
callq  676 <OPENSSL_init_crypto+0x306>
test   %eax,%eax
jne    4a9 <OPENSSL_init_crypto+0x139>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x56a(%rip),%rsi        # 120 <ossl_init_no_config_ossl_>
lea    0x0(%rip),%rdi        # 691 <OPENSSL_init_crypto+0x321>
callq  696 <OPENSSL_init_crypto+0x326>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 6a5 <OPENSSL_init_crypto+0x335>
jne    4b3 <OPENSSL_init_crypto+0x143>
jmpq   38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%rdi        # 6b7 <OPENSSL_init_crypto+0x347>
callq  6bc <OPENSSL_init_crypto+0x34c>
lea    -0x5c3(%rip),%rsi        # 100 <ossl_init_config_ossl_>
lea    0x0(%rip),%rdi        # 6ca <OPENSSL_init_crypto+0x35a>
mov    %r12,0x0(%rip)        # 6d1 <OPENSSL_init_crypto+0x361>
callq  6d6 <OPENSSL_init_crypto+0x366>
test   %eax,%eax
mov    %eax,%ebx
je     791 <OPENSSL_init_crypto+0x421>
mov    0x0(%rip),%ebx        # 6e6 <OPENSSL_init_crypto+0x376>
mov    0x0(%rip),%rdi        # 6ed <OPENSSL_init_crypto+0x37d>
movq   $0x0,0x0(%rip)        # 6f8 <OPENSSL_init_crypto+0x388>
callq  6fd <OPENSSL_init_crypto+0x38d>
test   %ebx,%ebx
jg     4bd <OPENSSL_init_crypto+0x14d>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x641(%rip),%rsi        # d0 <ossl_init_async_ossl_>
lea    0x0(%rip),%rdi        # 718 <OPENSSL_init_crypto+0x3a8>
callq  71d <OPENSSL_init_crypto+0x3ad>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 72c <OPENSSL_init_crypto+0x3bc>
jne    4c9 <OPENSSL_init_crypto+0x159>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x6ae(%rip),%rsi        # 90 <ossl_init_engine_rdrand_ossl_>
lea    0x0(%rip),%rdi        # 745 <OPENSSL_init_crypto+0x3d5>
callq  74a <OPENSSL_init_crypto+0x3da>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 759 <OPENSSL_init_crypto+0x3e9>
jne    4e1 <OPENSSL_init_crypto+0x171>
jmpq   38b <OPENSSL_init_crypto+0x1b>
lea    -0x6bb(%rip),%rsi        # b0 <ossl_init_engine_openssl_ossl_>
lea    0x0(%rip),%rdi        # 772 <OPENSSL_init_crypto+0x402>
callq  777 <OPENSSL_init_crypto+0x407>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 786 <OPENSSL_init_crypto+0x416>
jne    4d5 <OPENSSL_init_crypto+0x165>
jmpq   38b <OPENSSL_init_crypto+0x1b>
mov    0x0(%rip),%rdi        # 798 <OPENSSL_init_crypto+0x428>
movq   $0x0,0x0(%rip)        # 7a3 <OPENSSL_init_crypto+0x433>
callq  7a8 <OPENSSL_init_crypto+0x438>
jmpq   38d <OPENSSL_init_crypto+0x1d>
lea    -0x744(%rip),%rsi        # 70 <ossl_init_engine_dynamic_ossl_>
lea    0x0(%rip),%rdi        # 7bb <OPENSSL_init_crypto+0x44b>
callq  7c0 <OPENSSL_init_crypto+0x450>
test   %eax,%eax
je     38b <OPENSSL_init_crypto+0x1b>
cmpl   $0x0,0x0(%rip)        # 7cf <OPENSSL_init_crypto+0x45f>
jne    4ed <OPENSSL_init_crypto+0x17d>
jmpq   38b <OPENSSL_init_crypto+0x1b>
callq  7df <OPENSSL_init_crypto+0x46f>
jmpq   4f9 <OPENSSL_init_crypto+0x189>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000007f0 <OPENSSL_atexit>:
push   %rbx
lea    0x0(%rip),%rsi        # 7f8 <OPENSSL_atexit+0x8>
mov    %rdi,%rbx
mov    $0x28b,%edx
mov    $0x10,%edi
callq  80a <OPENSSL_atexit+0x1a>
test   %rax,%rax
je     830 <OPENSSL_atexit+0x40>
mov    0x0(%rip),%rdx        # 816 <OPENSSL_atexit+0x26>
mov    %rbx,(%rax)
mov    %rax,0x0(%rip)        # 820 <OPENSSL_atexit+0x30>
mov    %rdx,0x8(%rax)
mov    $0x1,%eax
pop    %rbx
retq   
nopl   0x0(%rax,%rax,1)
callq  835 <OPENSSL_atexit+0x45>
lea    0x0(%rip),%rdx        # 83c <OPENSSL_atexit+0x4c>
lea    0x0(%rip),%rdi        # 843 <OPENSSL_atexit+0x53>
mov    $0x28c,%esi
callq  84d <OPENSSL_atexit+0x5d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  860 <OPENSSL_atexit+0x70>
xor    %eax,%eax
pop    %rbx
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000870 <OPENSSL_fork_prepare>:
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000880 <OPENSSL_fork_parent>:
repz retq 
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000890 <OPENSSL_fork_child>:
repz retq 
