
openssl_crypto_dump/libcrypto-lib-o_str.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <CRYPTO_strdup>:
test   %rdi,%rdi
je     40 <CRYPTO_strdup+0x40>
push   %r12
push   %rbp
mov    %edx,%r12d
push   %rbx
mov    %rsi,%rbp
mov    %rdi,%rbx
callq  17 <CRYPTO_strdup+0x17>
lea    0x1(%rax),%rdi
mov    %r12d,%edx
mov    %rbp,%rsi
callq  26 <CRYPTO_strdup+0x26>
mov    %rax,%rdx
xor    %eax,%eax
test   %rdx,%rdx
je     3b <CRYPTO_strdup+0x3b>
mov    %rbx,%rsi
mov    %rdx,%rdi
callq  3b <CRYPTO_strdup+0x3b>
pop    %rbx
pop    %rbp
pop    %r12
retq   
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000050 <CRYPTO_memdup>:
test   %rdi,%rdi
je     98 <CRYPTO_memdup+0x48>
cmp    $0x7ffffffe,%rsi
mov    %rsi,%rax
ja     98 <CRYPTO_memdup+0x48>
push   %rbp
push   %rbx
mov    %rdx,%rsi
mov    %rdi,%rbp
mov    %ecx,%edx
mov    %rax,%rdi
sub    $0x8,%rsp
mov    %rax,%rbx
callq  7a <CRYPTO_memdup+0x2a>
test   %rax,%rax
je     a0 <CRYPTO_memdup+0x50>
add    $0x8,%rsp
mov    %rbx,%rdx
mov    %rbp,%rsi
pop    %rbx
pop    %rbp
mov    %rax,%rdi
jmpq   93 <CRYPTO_memdup+0x43>
nopl   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   0x0(%rax,%rax,1)
callq  a5 <CRYPTO_memdup+0x55>
lea    0x0(%rip),%rdx        # ac <CRYPTO_memdup+0x5c>
lea    0x0(%rip),%rdi        # b3 <CRYPTO_memdup+0x63>
mov    $0x39,%esi
callq  bd <CRYPTO_memdup+0x6d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  d0 <CRYPTO_memdup+0x80>
add    $0x8,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
retq   
nopl   0x0(%rax)

00000000000000e0 <OPENSSL_strnlen>:
test   %rsi,%rsi
je     117 <OPENSSL_strnlen+0x37>
cmpb   $0x0,(%rdi)
je     117 <OPENSSL_strnlen+0x37>
lea    0x1(%rdi),%rdx
lea    (%rdi,%rsi,1),%rax
jmp    105 <OPENSSL_strnlen+0x25>
nopl   0x0(%rax)
lea    0x1(%rdx),%rcx
cmpb   $0x0,-0x1(%rcx)
je     110 <OPENSSL_strnlen+0x30>
mov    %rcx,%rdx
cmp    %rdx,%rax
jne    f8 <OPENSSL_strnlen+0x18>
sub    %rdi,%rax
retq   
xchg   %ax,%ax
mov    %rdx,%rax
sub    %rdi,%rax
retq   
xor    %eax,%eax
retq   
nopw   0x0(%rax,%rax,1)

0000000000000120 <CRYPTO_strndup>:
test   %rdi,%rdi
je     180 <CRYPTO_strndup+0x60>
push   %r13
push   %r12
mov    %ecx,%r12d
push   %rbp
push   %rbx
mov    %rdx,%rbp
mov    %rdi,%rbx
sub    $0x8,%rsp
callq  13d <CRYPTO_strndup+0x1d>
lea    0x1(%rax),%rdi
mov    %r12d,%edx
mov    %rbp,%rsi
mov    %rax,%r13
callq  14f <CRYPTO_strndup+0x2f>
mov    %rax,%rcx
xor    %eax,%eax
test   %rcx,%rcx
je     16c <CRYPTO_strndup+0x4c>
mov    %r13,%rdx
mov    %rbx,%rsi
mov    %rcx,%rdi
callq  167 <CRYPTO_strndup+0x47>
movb   $0x0,(%rax,%r13,1)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopw   0x0(%rax,%rax,1)
xor    %eax,%eax
retq   
nopl   (%rax)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000190 <OPENSSL_strlcpy>:
cmp    $0x1,%rdx
push   %rbx
jbe    1e5 <OPENSSL_strlcpy+0x55>
movzbl (%rsi),%r8d
test   %r8b,%r8b
je     1f0 <OPENSSL_strlcpy+0x60>
lea    -0x1(%rdx),%rbx
xor    %ecx,%ecx
jmp    1b9 <OPENSSL_strlcpy+0x29>
nopl   0x0(%rax,%rax,1)
movzbl (%rsi),%r8d
test   %r8b,%r8b
je     1e0 <OPENSSL_strlcpy+0x50>
add    $0x1,%rcx
add    $0x1,%rdi
add    $0x1,%rsi
cmp    %rbx,%rcx
mov    %r8b,-0x1(%rdi)
jne    1b0 <OPENSSL_strlcpy+0x20>
movb   $0x0,(%rdi)
mov    %rsi,%rdi
callq  1d9 <OPENSSL_strlcpy+0x49>
add    %rbx,%rax
pop    %rbx
retq   
xchg   %ax,%ax
mov    %rcx,%rbx
jmp    1ce <OPENSSL_strlcpy+0x3e>
xor    %ebx,%ebx
test   %rdx,%rdx
je     1d1 <OPENSSL_strlcpy+0x41>
jmp    1ce <OPENSSL_strlcpy+0x3e>
xchg   %ax,%ax
xor    %ebx,%ebx
jmp    1ce <OPENSSL_strlcpy+0x3e>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000200 <OPENSSL_strlcat>:
push   %rbx
xor    %ebx,%ebx
test   %rdx,%rdx
jne    21e <OPENSSL_strlcat+0x1e>
jmp    223 <OPENSSL_strlcat+0x23>
nopw   0x0(%rax,%rax,1)
add    $0x1,%rbx
add    $0x1,%rdi
sub    $0x1,%rdx
je     223 <OPENSSL_strlcat+0x23>
cmpb   $0x0,(%rdi)
jne    210 <OPENSSL_strlcat+0x10>
callq  228 <OPENSSL_strlcat+0x28>
add    %rbx,%rax
pop    %rbx
retq   
nopl   (%rax)

0000000000000230 <OPENSSL_hexchar2int>:
sub    $0x30,%edi
mov    $0xffffffff,%eax
cmp    $0x36,%dil
ja     24d <OPENSSL_hexchar2int+0x1d>
lea    0x0(%rip),%rax        # 245 <OPENSSL_hexchar2int+0x15>
movzbl %dil,%edi
movsbl (%rax,%rdi,1),%eax
repz retq 
nop

0000000000000250 <hexstr2buf_sep>:
push   %r15
push   %r14
movsbl %r8b,%eax
push   %r13
push   %r12
mov    %rdi,%r13
push   %rbp
push   %rbx
mov    %eax,%ebp
xor    %r14d,%r14d
sub    $0x28,%rsp
mov    %rsi,0x10(%rsp)
mov    %rdx,0x18(%rsp)
mov    %eax,0xc(%rsp)
nopl   0x0(%rax,%rax,1)
movzbl (%rcx),%edi
test   %dil,%dil
je     2a3 <hexstr2buf_sep+0x53>
test   %bpl,%bpl
movzbl %dil,%ebx
je     2d0 <hexstr2buf_sep+0x80>
cmp    %ebx,0xc(%rsp)
jne    2d0 <hexstr2buf_sep+0x80>
add    $0x1,%rcx
movzbl (%rcx),%edi
test   %dil,%dil
jne    288 <hexstr2buf_sep+0x38>
mov    0x18(%rsp),%rax
test   %rax,%rax
je     411 <hexstr2buf_sep+0x1c1>
mov    %r14,(%rax)
mov    $0x1,%eax
add    $0x28,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax,%rax,1)
movzbl 0x1(%rcx),%edi
lea    0x2(%rcx),%r15
test   %dil,%dil
je     340 <hexstr2buf_sep+0xf0>
callq  2e2 <hexstr2buf_sep+0x92>
mov    %ebx,%edi
mov    %eax,%r12d
callq  2ec <hexstr2buf_sep+0x9c>
mov    %r12d,%ecx
shr    $0x1f,%ecx
test   %cl,%cl
jne    388 <hexstr2buf_sep+0x138>
mov    %eax,%ecx
shr    $0x1f,%ecx
test   %cl,%cl
jne    388 <hexstr2buf_sep+0x138>
add    $0x1,%r14
test   %r13,%r13
je     338 <hexstr2buf_sep+0xe8>
cmp    0x10(%rsp),%r14
ja     3d0 <hexstr2buf_sep+0x180>
shl    $0x4,%eax
mov    %r15,%rcx
add    $0x1,%r13
mov    %eax,%edx
or     %r12d,%edx
mov    %dl,-0x1(%r13)
jmpq   280 <hexstr2buf_sep+0x30>
nopl   0x0(%rax,%rax,1)
mov    %r15,%rcx
jmpq   280 <hexstr2buf_sep+0x30>
callq  345 <hexstr2buf_sep+0xf5>
lea    0x0(%rip),%rdx        # 34c <hexstr2buf_sep+0xfc>
lea    0x0(%rip),%rdi        # 353 <hexstr2buf_sep+0x103>
mov    $0x97,%esi
callq  35d <hexstr2buf_sep+0x10d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x67,%esi
mov    $0xf,%edi
callq  370 <hexstr2buf_sep+0x120>
add    $0x28,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
callq  38d <hexstr2buf_sep+0x13d>
lea    0x0(%rip),%rdx        # 394 <hexstr2buf_sep+0x144>
lea    0x0(%rip),%rdi        # 39b <hexstr2buf_sep+0x14b>
mov    $0x9d,%esi
callq  3a5 <hexstr2buf_sep+0x155>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x66,%esi
mov    $0xf,%edi
callq  3b8 <hexstr2buf_sep+0x168>
add    $0x28,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   0x0(%rax)
callq  3d5 <hexstr2buf_sep+0x185>
lea    0x0(%rip),%rdx        # 3dc <hexstr2buf_sep+0x18c>
lea    0x0(%rip),%rdi        # 3e3 <hexstr2buf_sep+0x193>
mov    $0xa3,%esi
callq  3ed <hexstr2buf_sep+0x19d>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x74,%esi
mov    $0xf,%edi
callq  400 <hexstr2buf_sep+0x1b0>
add    $0x28,%rsp
xor    %eax,%eax
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
mov    $0x1,%eax
jmpq   2b9 <hexstr2buf_sep+0x69>
nopl   0x0(%rax,%rax,1)

0000000000000420 <OPENSSL_hexstr2buf_ex>:
mov    $0x3a,%r8d
jmpq   250 <hexstr2buf_sep>
nopl   0x0(%rax,%rax,1)

0000000000000430 <openssl_hexstr2buf_sep>:
push   %r14
push   %r13
mov    %edx,%r14d
push   %r12
push   %rbp
mov    %rdi,%r13
push   %rbx
mov    %rsi,%r12
sub    $0x10,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x8(%rsp)
xor    %eax,%eax
callq  45a <openssl_hexstr2buf_sep+0x2a>
lea    0x0(%rip),%rsi        # 461 <openssl_hexstr2buf_sep+0x31>
shr    %rax
mov    $0xbf,%edx
mov    %rax,%rdi
mov    %rax,%rbx
callq  474 <openssl_hexstr2buf_sep+0x44>
test   %rax,%rax
je     528 <openssl_hexstr2buf_sep+0xf8>
test   %r12,%r12
mov    %rax,%rbp
je     4e0 <openssl_hexstr2buf_sep+0xb0>
movq   $0x0,(%r12)
mov    %rsp,%rdx
movsbl %r14b,%r8d
mov    %r13,%rcx
mov    %rbx,%rsi
mov    %rax,%rdi
movq   $0x0,(%rsp)
callq  250 <hexstr2buf_sep>
test   %eax,%eax
je     510 <openssl_hexstr2buf_sep+0xe0>
mov    (%rsp),%rax
mov    %rax,(%r12)
mov    %rbp,%rax
mov    0x8(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    55f <openssl_hexstr2buf_sep+0x12f>
add    $0x10,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
retq   
nopw   0x0(%rax,%rax,1)
mov    %rsp,%rdx
movsbl %r14b,%r8d
mov    %r13,%rcx
mov    %rbx,%rsi
mov    %rax,%rdi
movq   $0x0,(%rsp)
callq  250 <hexstr2buf_sep>
mov    %eax,%edx
mov    %rbp,%rax
test   %edx,%edx
jne    4b9 <openssl_hexstr2buf_sep+0x89>
nopw   %cs:0x0(%rax,%rax,1)
lea    0x0(%rip),%rsi        # 517 <openssl_hexstr2buf_sep+0xe7>
mov    $0xcc,%edx
mov    %rbp,%rdi
callq  524 <openssl_hexstr2buf_sep+0xf4>
xor    %eax,%eax
jmp    4b9 <openssl_hexstr2buf_sep+0x89>
callq  52d <openssl_hexstr2buf_sep+0xfd>
lea    0x0(%rip),%rdx        # 534 <openssl_hexstr2buf_sep+0x104>
lea    0x0(%rip),%rdi        # 53b <openssl_hexstr2buf_sep+0x10b>
mov    $0xc0,%esi
callq  545 <openssl_hexstr2buf_sep+0x115>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  558 <openssl_hexstr2buf_sep+0x128>
xor    %eax,%eax
jmpq   4b9 <openssl_hexstr2buf_sep+0x89>
callq  564 <openssl_hexstr2buf_sep+0x134>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000570 <OPENSSL_hexstr2buf>:
mov    $0x3a,%edx
jmpq   57a <OPENSSL_hexstr2buf+0xa>
nopw   0x0(%rax,%rax,1)

0000000000000580 <OPENSSL_buf2hexstr_ex>:
test   %rdx,%rdx
lea    (%r8,%r8,2),%r10
je     58c <OPENSSL_buf2hexstr_ex+0xc>
mov    %r10,(%rdx)
test   %rdi,%rdi
je     630 <OPENSSL_buf2hexstr_ex+0xb0>
cmp    %r10,%rsi
jb     5f0 <OPENSSL_buf2hexstr_ex+0x70>
test   %r8,%r8
lea    (%rcx,%r8,1),%r9
mov    %rdi,%rdx
lea    0x0(%rip),%rsi        # 5ab <OPENSSL_buf2hexstr_ex+0x2b>
je     5e2 <OPENSSL_buf2hexstr_ex+0x62>
nopl   (%rax)
movzbl (%rcx),%eax
add    $0x1,%rcx
add    $0x3,%rdx
shr    $0x4,%al
and    $0xf,%eax
movzbl (%rsi,%rax,1),%eax
mov    %al,-0x3(%rdx)
movzbl -0x1(%rcx),%eax
and    $0xf,%eax
movzbl (%rsi,%rax,1),%eax
mov    %al,-0x2(%rdx)
cmp    %r9,%rcx
movb   $0x3a,-0x1(%rdx)
jne    5b0 <OPENSSL_buf2hexstr_ex+0x30>
add    %r10,%rdi
movb   $0x0,-0x1(%rdi)
mov    $0x1,%eax
retq   
nopl   0x0(%rax)
sub    $0x8,%rsp
callq  5f9 <OPENSSL_buf2hexstr_ex+0x79>
lea    0x0(%rip),%rdx        # 600 <OPENSSL_buf2hexstr_ex+0x80>
lea    0x0(%rip),%rdi        # 607 <OPENSSL_buf2hexstr_ex+0x87>
mov    $0xe6,%esi
callq  611 <OPENSSL_buf2hexstr_ex+0x91>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x74,%esi
mov    $0xf,%edi
callq  624 <OPENSSL_buf2hexstr_ex+0xa4>
xor    %eax,%eax
add    $0x8,%rsp
retq   
nopl   0x0(%rax,%rax,1)
mov    $0x1,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000640 <openssl_buf2hexstr_sep>:
test   %rsi,%rsi
je     730 <openssl_buf2hexstr_sep+0xf0>
test   %dl,%dl
push   %r12
push   %rbp
mov    %rsi,%rbp
push   %rbx
mov    %rdi,%rbx
jne    6c0 <openssl_buf2hexstr_sep+0x80>
lea    0x1(%rsi,%rsi,1),%rdi
lea    0x0(%rip),%rsi        # 663 <openssl_buf2hexstr_sep+0x23>
mov    $0x10a,%edx
callq  66d <openssl_buf2hexstr_sep+0x2d>
test   %rax,%rax
je     746 <openssl_buf2hexstr_sep+0x106>
lea    (%rbx,%rbp,1),%rdi
lea    0x0(%rip),%rsi        # 681 <openssl_buf2hexstr_sep+0x41>
mov    %rax,%rcx
nopl   0x0(%rax)
movzbl (%rbx),%edx
add    $0x1,%rbx
add    $0x2,%rcx
shr    $0x4,%dl
and    $0xf,%edx
movzbl (%rsi,%rdx,1),%edx
mov    %dl,-0x2(%rcx)
movzbl -0x1(%rbx),%edx
and    $0xf,%edx
movzbl (%rsi,%rdx,1),%edx
mov    %dl,-0x1(%rcx)
cmp    %rbx,%rdi
jne    688 <openssl_buf2hexstr_sep+0x48>
lea    (%rax,%rbp,2),%rdx
jmp    727 <openssl_buf2hexstr_sep+0xe7>
nopl   0x0(%rax)
lea    (%rsi,%rsi,2),%rdi
lea    0x0(%rip),%rsi        # 6cb <openssl_buf2hexstr_sep+0x8b>
mov    %edx,%r12d
mov    $0x10a,%edx
callq  6d8 <openssl_buf2hexstr_sep+0x98>
test   %rax,%rax
lea    (%rbx,%rbp,1),%rdi
mov    %rax,%rcx
lea    0x0(%rip),%rsi        # 6e9 <openssl_buf2hexstr_sep+0xa9>
je     746 <openssl_buf2hexstr_sep+0x106>
nopl   0x0(%rax,%rax,1)
movzbl (%rbx),%edx
add    $0x1,%rbx
add    $0x3,%rcx
shr    $0x4,%dl
and    $0xf,%edx
movzbl (%rsi,%rdx,1),%edx
mov    %dl,-0x3(%rcx)
movzbl -0x1(%rbx),%edx
and    $0xf,%edx
movzbl (%rsi,%rdx,1),%edx
mov    %dl,-0x2(%rcx)
cmp    %rbx,%rdi
mov    %r12b,-0x1(%rcx)
jne    6f0 <openssl_buf2hexstr_sep+0xb0>
lea    -0x1(%rbp,%rbp,2),%rdx
add    %rax,%rdx
movb   $0x0,(%rdx)
pop    %rbx
pop    %rbp
pop    %r12
retq   
nop
lea    0x0(%rip),%rsi        # 737 <openssl_buf2hexstr_sep+0xf7>
mov    $0x107,%edx
mov    $0x1,%edi
jmpq   746 <openssl_buf2hexstr_sep+0x106>
callq  74b <openssl_buf2hexstr_sep+0x10b>
lea    0x0(%rip),%rdx        # 752 <openssl_buf2hexstr_sep+0x112>
lea    0x0(%rip),%rdi        # 759 <openssl_buf2hexstr_sep+0x119>
mov    $0x10b,%esi
callq  763 <openssl_buf2hexstr_sep+0x123>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  776 <openssl_buf2hexstr_sep+0x136>
xor    %eax,%eax
jmp    72a <openssl_buf2hexstr_sep+0xea>
nopw   0x0(%rax,%rax,1)

0000000000000780 <OPENSSL_buf2hexstr>:
mov    $0x3a,%edx
jmpq   78a <OPENSSL_buf2hexstr+0xa>
nopw   0x0(%rax,%rax,1)

0000000000000790 <openssl_strerror_r>:
sub    $0x8,%rsp
callq  799 <openssl_strerror_r+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
