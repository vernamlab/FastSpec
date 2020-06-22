
openssl_crypto_dump/libfips-lib-self_test_core.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <self_test_set_callback_free>:
lea    0x0(%rip),%rsi        # 7 <self_test_set_callback_free+0x7>
mov    $0x2c,%edx
jmpq   11 <self_test_set_callback_free+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000020 <self_test_set_callback_new>:
lea    0x0(%rip),%rsi        # 27 <self_test_set_callback_new+0x7>
mov    $0x26,%edx
mov    $0x10,%edi
jmpq   36 <self_test_set_callback_new+0x16>
nopw   %cs:0x0(%rax,%rax,1)

0000000000000040 <OSSL_SELF_TEST_get_callback>:
push   %rbp
push   %rbx
mov    %rdx,%rbx
lea    0x0(%rip),%rdx        # 4c <OSSL_SELF_TEST_get_callback+0xc>
mov    %rsi,%rbp
mov    $0xb,%esi
sub    $0x8,%rsp
callq  5d <OSSL_SELF_TEST_get_callback+0x1d>
test   %rbp,%rbp
je     6e <OSSL_SELF_TEST_get_callback+0x2e>
test   %rax,%rax
je     98 <OSSL_SELF_TEST_get_callback+0x58>
mov    (%rax),%rdx
mov    %rdx,0x0(%rbp)
test   %rbx,%rbx
je     7f <OSSL_SELF_TEST_get_callback+0x3f>
test   %rax,%rax
je     90 <OSSL_SELF_TEST_get_callback+0x50>
mov    0x8(%rax),%rax
mov    %rax,(%rbx)
add    $0x8,%rsp
pop    %rbx
pop    %rbp
retq   
nopw   %cs:0x0(%rax,%rax,1)
xor    %eax,%eax
jmp    7c <OSSL_SELF_TEST_get_callback+0x3c>
nopl   0x0(%rax)
xor    %edx,%edx
jmp    6a <OSSL_SELF_TEST_get_callback+0x2a>
nopl   0x0(%rax)

00000000000000a0 <OSSL_SELF_TEST_new>:
push   %r13
push   %r12
mov    %rsi,%r12
push   %rbp
push   %rbx
lea    0x0(%rip),%rsi        # b0 <OSSL_SELF_TEST_new+0x10>
mov    %rdi,%rbp
mov    $0x66,%edx
mov    $0xc8,%edi
sub    $0x48,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
callq  d6 <OSSL_SELF_TEST_new+0x36>
test   %rax,%rax
je     240 <OSSL_SELF_TEST_new+0x1a0>
mov    %rax,%rbx
mov    %rbp,0x18(%rax)
mov    %r12,0xc0(%rax)
lea    0x0(%rip),%rax        # f4 <OSSL_SELF_TEST_new+0x54>
test   %rbp,%rbp
mov    %rax,(%rbx)
mov    %rax,0x8(%rbx)
mov    %rax,0x10(%rbx)
je     238 <OSSL_SELF_TEST_new+0x198>
lea    0x0(%rip),%rsi        # 10f <OSSL_SELF_TEST_new+0x6f>
mov    %rax,%rdx
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rsp,%r12
callq  11f <OSSL_SELF_TEST_new+0x7f>
mov    (%rsp),%rax
mov    0x8(%rbx),%rdx
lea    0x0(%rip),%rsi        # 12e <OSSL_SELF_TEST_new+0x8e>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x20(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x28(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x30(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x38(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x40(%rbx)
callq  160 <OSSL_SELF_TEST_new+0xc0>
mov    (%rsp),%rax
mov    0x10(%rbx),%rdx
lea    0x0(%rip),%rsi        # 16f <OSSL_SELF_TEST_new+0xcf>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x48(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x50(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x58(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x60(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x68(%rbx)
callq  1a1 <OSSL_SELF_TEST_new+0x101>
mov    (%rsp),%rax
mov    %rax,0x70(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x78(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x80(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x88(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x90(%rbx)
mov    $0x3,%eax
lea    (%rax,%rax,4),%rax
mov    %r12,%rdi
lea    (%rbx,%rax,8),%r13
callq  1eb <OSSL_SELF_TEST_new+0x14b>
mov    (%rsp),%rax
mov    %rax,0x20(%r13)
mov    0x8(%rsp),%rax
mov    %rax,0x28(%r13)
mov    0x10(%rsp),%rax
mov    %rax,0x30(%r13)
mov    0x18(%rsp),%rax
mov    %rax,0x38(%r13)
mov    0x20(%rsp),%rax
mov    %rax,0x40(%r13)
mov    %rbx,%rax
mov    0x38(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    244 <OSSL_SELF_TEST_new+0x1a4>
add    $0x48,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
retq   
nopl   (%rax)
xor    %eax,%eax
mov    %rsp,%r12
jmp    1db <OSSL_SELF_TEST_new+0x13b>
nop
xor    %eax,%eax
jmp    21a <OSSL_SELF_TEST_new+0x17a>
callq  249 <OSSL_SELF_TEST_new+0x1a9>
nopl   0x0(%rax)

0000000000000250 <OSSL_SELF_TEST_free>:
lea    0x0(%rip),%rsi        # 257 <OSSL_SELF_TEST_free+0x7>
mov    $0x76,%edx
jmpq   261 <OSSL_SELF_TEST_free+0x11>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000270 <OSSL_SELF_TEST_onbegin>:
push   %rbp
push   %rbx
sub    $0x48,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     3e8 <OSSL_SELF_TEST_onbegin+0x178>
cmpq   $0x0,0x18(%rdi)
mov    %rdi,%rbx
je     3e8 <OSSL_SELF_TEST_onbegin+0x178>
lea    0x0(%rip),%rax        # 2a4 <OSSL_SELF_TEST_onbegin+0x34>
mov    %rsi,0x8(%rdi)
lea    0x0(%rip),%rsi        # 2af <OSSL_SELF_TEST_onbegin+0x3f>
mov    %rdx,0x10(%rdi)
xor    %ecx,%ecx
mov    %rax,(%rdi)
mov    %rax,%rdx
mov    %rsp,%rdi
callq  2c3 <OSSL_SELF_TEST_onbegin+0x53>
mov    (%rsp),%rax
mov    0x8(%rbx),%rdx
lea    0x0(%rip),%rsi        # 2d2 <OSSL_SELF_TEST_onbegin+0x62>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x20(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x28(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x30(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x38(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x40(%rbx)
callq  304 <OSSL_SELF_TEST_onbegin+0x94>
mov    (%rsp),%rax
mov    0x10(%rbx),%rdx
lea    0x0(%rip),%rsi        # 313 <OSSL_SELF_TEST_onbegin+0xa3>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x48(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x50(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x58(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x60(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x68(%rbx)
callq  345 <OSSL_SELF_TEST_onbegin+0xd5>
mov    (%rsp),%rax
mov    %rsp,%rdi
mov    %rax,0x70(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x78(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x80(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x88(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x90(%rbx)
callq  382 <OSSL_SELF_TEST_onbegin+0x112>
mov    (%rsp),%rax
mov    %rax,0x98(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0xa0(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0xa8(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0xb0(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0xb8(%rbx)
mov    0x38(%rsp),%rax
xor    %fs:0x28,%rax
jne    3ff <OSSL_SELF_TEST_onbegin+0x18f>
mov    0xc0(%rbx),%rsi
mov    0x18(%rbx),%rax
add    $0x48,%rsp
lea    0x20(%rbx),%rdi
pop    %rbx
pop    %rbp
jmpq   *%rax
nopl   0x0(%rax)
mov    0x38(%rsp),%rax
xor    %fs:0x28,%rax
jne    3ff <OSSL_SELF_TEST_onbegin+0x18f>
add    $0x48,%rsp
pop    %rbx
pop    %rbp
retq   
callq  404 <OSSL_SELF_TEST_onbegin+0x194>
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000410 <OSSL_SELF_TEST_onend>:
push   %rbp
push   %rbx
sub    $0x48,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     580 <OSSL_SELF_TEST_onend+0x170>
cmpq   $0x0,0x18(%rdi)
mov    %rdi,%rbx
je     580 <OSSL_SELF_TEST_onend+0x170>
lea    0x0(%rip),%rax        # 444 <OSSL_SELF_TEST_onend+0x34>
lea    0x0(%rip),%rdx        # 44b <OSSL_SELF_TEST_onend+0x3b>
cmp    $0x1,%esi
lea    0x0(%rip),%rsi        # 455 <OSSL_SELF_TEST_onend+0x45>
cmove  %rax,%rdx
xor    %ecx,%ecx
mov    %rdx,(%rdi)
mov    %rsp,%rdi
callq  466 <OSSL_SELF_TEST_onend+0x56>
mov    (%rsp),%rax
mov    0x8(%rbx),%rdx
lea    0x0(%rip),%rsi        # 475 <OSSL_SELF_TEST_onend+0x65>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x20(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x28(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x30(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x38(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x40(%rbx)
callq  4a7 <OSSL_SELF_TEST_onend+0x97>
mov    (%rsp),%rax
mov    0x10(%rbx),%rdx
lea    0x0(%rip),%rsi        # 4b6 <OSSL_SELF_TEST_onend+0xa6>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x48(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x50(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x58(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x60(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x68(%rbx)
callq  4e8 <OSSL_SELF_TEST_onend+0xd8>
mov    (%rsp),%rax
mov    %rsp,%rdi
mov    %rax,0x70(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x78(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x80(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x88(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x90(%rbx)
callq  525 <OSSL_SELF_TEST_onend+0x115>
mov    (%rsp),%rax
mov    0xc0(%rbx),%rsi
lea    0x20(%rbx),%rdi
mov    %rax,0x98(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0xa0(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0xa8(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0xb0(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0xb8(%rbx)
callq  *0x18(%rbx)
lea    0x0(%rip),%rax        # 575 <OSSL_SELF_TEST_onend+0x165>
mov    %rax,(%rbx)
mov    %rax,0x8(%rbx)
mov    %rax,0x10(%rbx)
mov    0x38(%rsp),%rax
xor    %fs:0x28,%rax
jne    597 <OSSL_SELF_TEST_onend+0x187>
add    $0x48,%rsp
pop    %rbx
pop    %rbp
retq   
callq  59c <OSSL_SELF_TEST_onend+0x18c>
nopl   0x0(%rax)

00000000000005a0 <OSSL_SELF_TEST_oncorrupt_byte>:
push   %r12
push   %rbp
push   %rbx
sub    $0x40,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x38(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
je     701 <OSSL_SELF_TEST_oncorrupt_byte+0x161>
cmpq   $0x0,0x18(%rdi)
mov    %rdi,%rbx
je     701 <OSSL_SELF_TEST_oncorrupt_byte+0x161>
lea    0x0(%rip),%rax        # 5d6 <OSSL_SELF_TEST_oncorrupt_byte+0x36>
mov    %rsi,%r12
lea    0x0(%rip),%rsi        # 5e0 <OSSL_SELF_TEST_oncorrupt_byte+0x40>
xor    %ecx,%ecx
mov    %rax,(%rdi)
mov    %rax,%rdx
mov    %rsp,%rdi
callq  5f0 <OSSL_SELF_TEST_oncorrupt_byte+0x50>
mov    (%rsp),%rax
mov    0x8(%rbx),%rdx
lea    0x0(%rip),%rsi        # 5ff <OSSL_SELF_TEST_oncorrupt_byte+0x5f>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x20(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x28(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x30(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x38(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x40(%rbx)
callq  631 <OSSL_SELF_TEST_oncorrupt_byte+0x91>
mov    (%rsp),%rax
mov    0x10(%rbx),%rdx
lea    0x0(%rip),%rsi        # 640 <OSSL_SELF_TEST_oncorrupt_byte+0xa0>
xor    %ecx,%ecx
mov    %rsp,%rdi
mov    %rax,0x48(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x50(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x58(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x60(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x68(%rbx)
callq  672 <OSSL_SELF_TEST_oncorrupt_byte+0xd2>
mov    (%rsp),%rax
mov    %rsp,%rdi
mov    %rax,0x70(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0x78(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0x80(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0x88(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0x90(%rbx)
callq  6af <OSSL_SELF_TEST_oncorrupt_byte+0x10f>
mov    (%rsp),%rax
mov    0xc0(%rbx),%rsi
lea    0x20(%rbx),%rdi
mov    %rax,0x98(%rbx)
mov    0x8(%rsp),%rax
mov    %rax,0xa0(%rbx)
mov    0x10(%rsp),%rax
mov    %rax,0xa8(%rbx)
mov    0x18(%rsp),%rax
mov    %rax,0xb0(%rbx)
mov    0x20(%rsp),%rax
mov    %rax,0xb8(%rbx)
callq  *0x18(%rbx)
test   %eax,%eax
jne    701 <OSSL_SELF_TEST_oncorrupt_byte+0x161>
xorb   $0x1,(%r12)
mov    0x38(%rsp),%rax
xor    %fs:0x28,%rax
jne    71a <OSSL_SELF_TEST_oncorrupt_byte+0x17a>
add    $0x40,%rsp
pop    %rbx
pop    %rbp
pop    %r12
retq   
callq  71f <OSSL_SELF_TEST_oncorrupt_byte+0x17f>
