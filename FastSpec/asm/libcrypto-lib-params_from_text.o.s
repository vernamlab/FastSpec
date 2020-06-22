
openssl_crypto_dump/libcrypto-lib-params_from_text.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OSSL_PARAM_allocate_from_text>:
push   %r15
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x38,%rsp
mov    %fs:0x28,%rax
mov    %rax,0x28(%rsp)
xor    %eax,%eax
test   %rdi,%rdi
mov    %r8,0x8(%rsp)
mov    %r9,(%rsp)
movq   $0x0,0x18(%rsp)
je     218 <OSSL_PARAM_allocate_from_text+0x218>
test   %rsi,%rsi
mov    %rsi,%r10
je     218 <OSSL_PARAM_allocate_from_text+0x218>
mov    %rdi,%rbx
lea    0x0(%rip),%rdi        # 4f <OSSL_PARAM_allocate_from_text+0x4f>
mov    %rdx,%rsi
mov    %rcx,%r13
mov    $0x3,%ecx
repz cmpsb %es:(%rdi),%ds:(%rsi)
mov    %r10,%rdi
setb   %al
seta   %bpl
sub    %eax,%ebp
lea    0x3(%rdx),%rax
movsbl %bpl,%ebp
test   %ebp,%ebp
cmove  %rax,%rdx
mov    %rdx,%rsi
callq  7e <OSSL_PARAM_allocate_from_text+0x7e>
mov    (%rsp),%r9
mov    %rax,%r12
mov    0x8(%rsp),%r8
test   %r9,%r9
je     9a <OSSL_PARAM_allocate_from_text+0x9a>
xor    %eax,%eax
test   %r12,%r12
setne  %al
mov    %eax,(%r9)
test   %r12,%r12
je     218 <OSSL_PARAM_allocate_from_text+0x218>
mov    0x8(%r12),%eax
cmp    $0x4,%eax
je     2a8 <OSSL_PARAM_allocate_from_text+0x2a8>
jbe    180 <OSSL_PARAM_allocate_from_text+0x180>
cmp    $0x5,%eax
jne    240 <OSSL_PARAM_allocate_from_text+0x240>
test   %ebp,%ebp
mov    %r8,%r14
jne    d8 <OSSL_PARAM_allocate_from_text+0xd8>
mov    %r13,%rdi
callq  cf <OSSL_PARAM_allocate_from_text+0xcf>
shr    %rax
mov    %rax,%r14
nopl   (%rax)
test   %r14,%r14
je     240 <OSSL_PARAM_allocate_from_text+0x240>
lea    0x0(%rip),%rsi        # e8 <OSSL_PARAM_allocate_from_text+0xe8>
mov    $0xb8,%edx
mov    %r14,%rdi
callq  f5 <OSSL_PARAM_allocate_from_text+0xf5>
test   %rax,%rax
mov    %rax,%r15
je     2c8 <OSSL_PARAM_allocate_from_text+0x2c8>
mov    0x8(%r12),%eax
mov    0x18(%rsp),%rcx
cmp    $0x4,%eax
je     398 <OSSL_PARAM_allocate_from_text+0x398>
jbe    310 <OSSL_PARAM_allocate_from_text+0x310>
cmp    $0x5,%eax
jne    266 <OSSL_PARAM_allocate_from_text+0x266>
test   %ebp,%ebp
jne    3c8 <OSSL_PARAM_allocate_from_text+0x3c8>
lea    0x20(%rsp),%rdx
mov    %r13,%rcx
mov    %r14,%rsi
mov    %r15,%rdi
movq   $0x0,0x20(%rsp)
callq  147 <OSSL_PARAM_allocate_from_text+0x147>
test   %eax,%eax
jne    33e <OSSL_PARAM_allocate_from_text+0x33e>
mov    0x18(%rsp),%rdi
mov    %eax,(%rsp)
callq  15c <OSSL_PARAM_allocate_from_text+0x15c>
lea    0x0(%rip),%rsi        # 163 <OSSL_PARAM_allocate_from_text+0x163>
mov    $0xc1,%edx
mov    %r15,%rdi
callq  170 <OSSL_PARAM_allocate_from_text+0x170>
mov    (%rsp),%eax
jmpq   21a <OSSL_PARAM_allocate_from_text+0x21a>
nopl   0x0(%rax,%rax,1)
sub    $0x1,%eax
cmp    $0x1,%eax
ja     240 <OSSL_PARAM_allocate_from_text+0x240>
test   %ebp,%ebp
lea    0x18(%rsp),%rdi
mov    %r13,%rsi
je     300 <OSSL_PARAM_allocate_from_text+0x300>
callq  1a1 <OSSL_PARAM_allocate_from_text+0x1a1>
mov    0x18(%rsp),%rdi
test   %rdi,%rdi
je     218 <OSSL_PARAM_allocate_from_text+0x218>
cmpl   $0x1,0x8(%r12)
je     3b0 <OSSL_PARAM_allocate_from_text+0x3b0>
callq  1bc <OSSL_PARAM_allocate_from_text+0x1bc>
mov    0x18(%r12),%r14
lea    0xe(%rax),%edx
add    $0x7,%eax
cmovs  %edx,%eax
sar    $0x3,%eax
test   %r14,%r14
cltq   
je     350 <OSSL_PARAM_allocate_from_text+0x350>
cmp    %r14,%rax
jb     e1 <OSSL_PARAM_allocate_from_text+0xe1>
callq  1e6 <OSSL_PARAM_allocate_from_text+0x1e6>
lea    0x0(%rip),%rdx        # 1ed <OSSL_PARAM_allocate_from_text+0x1ed>
lea    0x0(%rip),%rdi        # 1f4 <OSSL_PARAM_allocate_from_text+0x1f4>
mov    $0x4e,%esi
callq  1fe <OSSL_PARAM_allocate_from_text+0x1fe>
xor    %edx,%edx
mov    $0x74,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  211 <OSSL_PARAM_allocate_from_text+0x211>
nopl   0x0(%rax)
xor    %eax,%eax
mov    0x28(%rsp),%rcx
xor    %fs:0x28,%rcx
jne    68f <OSSL_PARAM_allocate_from_text+0x68f>
add    $0x38,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
pop    %r15
retq   
nopl   (%rax)
lea    0x0(%rip),%rsi        # 247 <OSSL_PARAM_allocate_from_text+0x247>
mov    $0xb8,%edx
mov    $0x1,%edi
callq  256 <OSSL_PARAM_allocate_from_text+0x256>
test   %rax,%rax
mov    %rax,%r15
je     2c8 <OSSL_PARAM_allocate_from_text+0x2c8>
mov    0x18(%rsp),%rcx
xor    %r14d,%r14d
mov    (%r12),%rax
mov    %rcx,%rdi
mov    %rax,(%rbx)
mov    0x8(%r12),%rax
mov    %rax,0x8(%rbx)
mov    0x10(%r12),%rax
mov    %r14,0x18(%rbx)
movq   $0xffffffffffffffff,0x20(%rbx)
mov    %rax,0x10(%rbx)
mov    %r15,0x10(%rbx)
callq  297 <OSSL_PARAM_allocate_from_text+0x297>
mov    $0x1,%eax
jmpq   21a <OSSL_PARAM_allocate_from_text+0x21a>
nopl   0x0(%rax)
test   %ebp,%ebp
je     360 <OSSL_PARAM_allocate_from_text+0x360>
mov    %r13,%rdi
callq  2b8 <OSSL_PARAM_allocate_from_text+0x2b8>
lea    0x1(%rax),%r14
jmpq   d8 <OSSL_PARAM_allocate_from_text+0xd8>
nopl   0x0(%rax)
callq  2cd <OSSL_PARAM_allocate_from_text+0x2cd>
lea    0x0(%rip),%rdx        # 2d4 <OSSL_PARAM_allocate_from_text+0x2d4>
lea    0x0(%rip),%rdi        # 2db <OSSL_PARAM_allocate_from_text+0x2db>
mov    $0xb9,%esi
callq  2e5 <OSSL_PARAM_allocate_from_text+0x2e5>
xor    %eax,%eax
xor    %edx,%edx
mov    $0x41,%esi
mov    $0xf,%edi
callq  2f8 <OSSL_PARAM_allocate_from_text+0x2f8>
xor    %eax,%eax
jmpq   21a <OSSL_PARAM_allocate_from_text+0x21a>
nop
callq  305 <OSSL_PARAM_allocate_from_text+0x305>
jmpq   1a1 <OSSL_PARAM_allocate_from_text+0x1a1>
nopw   0x0(%rax,%rax,1)
sub    $0x1,%eax
cmp    $0x1,%eax
ja     266 <OSSL_PARAM_allocate_from_text+0x266>
mov    %rcx,%rdi
mov    %r14d,%edx
mov    %r15,%rsi
mov    %rcx,(%rsp)
callq  32e <OSSL_PARAM_allocate_from_text+0x32e>
cmpl   $0x1,0x8(%r12)
mov    (%rsp),%rcx
je     3f3 <OSSL_PARAM_allocate_from_text+0x3f3>
mov    0x18(%rsp),%rcx
jmpq   266 <OSSL_PARAM_allocate_from_text+0x266>
nopl   0x0(%rax,%rax,1)
mov    %rax,%r14
jmpq   d8 <OSSL_PARAM_allocate_from_text+0xd8>
nopl   0x0(%rax,%rax,1)
callq  365 <OSSL_PARAM_allocate_from_text+0x365>
lea    0x0(%rip),%rdx        # 36c <OSSL_PARAM_allocate_from_text+0x36c>
lea    0x0(%rip),%rdi        # 373 <OSSL_PARAM_allocate_from_text+0x373>
mov    $0x58,%esi
callq  37d <OSSL_PARAM_allocate_from_text+0x37d>
xor    %edx,%edx
mov    $0x7,%esi
mov    $0xf,%edi
xor    %eax,%eax
callq  390 <OSSL_PARAM_allocate_from_text+0x390>
jmpq   218 <OSSL_PARAM_allocate_from_text+0x218>
nopl   (%rax)
mov    %r14,%rdx
mov    %r13,%rsi
mov    %r15,%rdi
callq  3a6 <OSSL_PARAM_allocate_from_text+0x3a6>
mov    0x18(%rsp),%rcx
jmpq   266 <OSSL_PARAM_allocate_from_text+0x266>
callq  3b5 <OSSL_PARAM_allocate_from_text+0x3b5>
test   %eax,%eax
jne    3db <OSSL_PARAM_allocate_from_text+0x3db>
mov    0x18(%rsp),%rdi
jmpq   1b7 <OSSL_PARAM_allocate_from_text+0x1b7>
nopl   0x0(%rax,%rax,1)
mov    %r14,%rdx
mov    %r13,%rsi
mov    %r15,%rdi
callq  3d6 <OSSL_PARAM_allocate_from_text+0x3d6>
jmpq   33e <OSSL_PARAM_allocate_from_text+0x33e>
mov    0x18(%rsp),%rdi
mov    $0x1,%esi
callq  3ea <OSSL_PARAM_allocate_from_text+0x3ea>
test   %eax,%eax
jne    3b9 <OSSL_PARAM_allocate_from_text+0x3b9>
jmpq   218 <OSSL_PARAM_allocate_from_text+0x218>
mov    %rcx,%rdi
callq  3fb <OSSL_PARAM_allocate_from_text+0x3fb>
test   %eax,%eax
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
mov    %r15,%rcx
lea    -0x1(%r14),%rdi
neg    %rcx
and    $0xf,%ecx
cmp    %r14,%rcx
cmova  %r14,%rcx
cmp    $0x10,%r14
ja     67b <OSSL_PARAM_allocate_from_text+0x67b>
mov    %r14,%rcx
cmp    $0x1,%rcx
notb   (%r15)
lea    0x1(%r15),%rax
lea    -0x2(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x2,%rcx
notb   0x1(%r15)
lea    0x2(%r15),%rax
lea    -0x3(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x3,%rcx
notb   0x2(%r15)
lea    0x3(%r15),%rax
lea    -0x4(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x4,%rcx
notb   0x3(%r15)
lea    0x4(%r15),%rax
lea    -0x5(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x5,%rcx
notb   0x4(%r15)
lea    0x5(%r15),%rax
lea    -0x6(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x6,%rcx
notb   0x5(%r15)
lea    0x6(%r15),%rax
lea    -0x7(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x7,%rcx
notb   0x6(%r15)
lea    0x7(%r15),%rax
lea    -0x8(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x8,%rcx
notb   0x7(%r15)
lea    0x8(%r15),%rax
lea    -0x9(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x9,%rcx
notb   0x8(%r15)
lea    0x9(%r15),%rax
lea    -0xa(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0xa,%rcx
notb   0x9(%r15)
lea    0xa(%r15),%rax
lea    -0xb(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0xb,%rcx
notb   0xa(%r15)
lea    0xb(%r15),%rax
lea    -0xc(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0xc,%rcx
notb   0xb(%r15)
lea    0xc(%r15),%rax
lea    -0xd(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0xd,%rcx
notb   0xc(%r15)
lea    0xd(%r15),%rax
lea    -0xe(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0xe,%rcx
notb   0xd(%r15)
lea    0xe(%r15),%rax
lea    -0xf(%r14),%rdx
je     55d <OSSL_PARAM_allocate_from_text+0x55d>
cmp    $0x10,%rcx
notb   0xe(%r15)
lea    0xf(%r15),%rax
lea    -0x10(%r14),%rdx
jne    55d <OSSL_PARAM_allocate_from_text+0x55d>
notb   0xf(%r15)
lea    0x10(%r15),%rax
lea    -0x11(%r14),%rdx
cmp    %rcx,%r14
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
mov    %r14,%r8
sub    %rcx,%rdi
sub    %rcx,%r8
lea    -0x10(%r8),%rsi
shr    $0x4,%rsi
add    $0x1,%rsi
mov    %rsi,%r9
shl    $0x4,%r9
cmp    $0xe,%rdi
jbe    5bf <OSSL_PARAM_allocate_from_text+0x5bf>
pcmpeqd %xmm0,%xmm0
add    %r15,%rcx
xor    %edi,%edi
mov    %rdi,%r10
add    $0x1,%rdi
shl    $0x4,%r10
cmp    %rdi,%rsi
movdqa (%rcx,%r10,1),%xmm1
pxor   %xmm0,%xmm1
movaps %xmm1,(%rcx,%r10,1)
ja     591 <OSSL_PARAM_allocate_from_text+0x591>
add    %r9,%rax
sub    %r9,%rdx
cmp    %r9,%r8
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
test   %rdx,%rdx
notb   (%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x1,%rdx
notb   0x1(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x2,%rdx
notb   0x2(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x3,%rdx
notb   0x3(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x4,%rdx
notb   0x4(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x5,%rdx
notb   0x5(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x6,%rdx
notb   0x6(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x7,%rdx
notb   0x7(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x8,%rdx
notb   0x8(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0x9,%rdx
notb   0x9(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0xa,%rdx
notb   0xa(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0xb,%rdx
notb   0xb(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0xc,%rdx
notb   0xc(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
cmp    $0xd,%rdx
notb   0xd(%rax)
je     33e <OSSL_PARAM_allocate_from_text+0x33e>
notb   0xe(%rax)
jmpq   33e <OSSL_PARAM_allocate_from_text+0x33e>
test   %rcx,%rcx
mov    %rdi,%rdx
mov    %r15,%rax
je     566 <OSSL_PARAM_allocate_from_text+0x566>
jmpq   424 <OSSL_PARAM_allocate_from_text+0x424>
callq  694 <__func__.6871+0x674>
