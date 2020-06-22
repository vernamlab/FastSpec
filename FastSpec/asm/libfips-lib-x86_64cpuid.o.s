
openssl_crypto_dump/libfips-lib-x86_64cpuid.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <OPENSSL_atomic_add>:
repz nop %edx
mov    (%rdi),%eax
lea    (%rsi,%rax,1),%r8
lock cmpxchg %r8d,(%rdi)
jne    6 <OPENSSL_atomic_add+0x6>
mov    %r8d,%eax
cltq   
repz retq 
nopl   0x0(%rax,%rax,1)

0000000000000020 <OPENSSL_rdtsc>:
repz nop %edx
rdtsc  
shl    $0x20,%rdx
or     %rdx,%rax
repz retq 
nop

0000000000000030 <OPENSSL_ia32_cpuid>:
repz nop %edx
mov    %rbx,%r8
xor    %eax,%eax
mov    %rax,0x8(%rdi)
cpuid  
mov    %eax,%r11d
xor    %eax,%eax
cmp    $0x756e6547,%ebx
setne  %al
mov    %eax,%r9d
cmp    $0x49656e69,%edx
setne  %al
or     %eax,%r9d
cmp    $0x6c65746e,%ecx
setne  %al
or     %eax,%r9d
je     f5 <OPENSSL_ia32_cpuid+0xc5>
cmp    $0x68747541,%ebx
setne  %al
mov    %eax,%r10d
cmp    $0x69746e65,%edx
setne  %al
or     %eax,%r10d
cmp    $0x444d4163,%ecx
setne  %al
or     %eax,%r10d
jne    f5 <OPENSSL_ia32_cpuid+0xc5>
mov    $0x80000000,%eax
cpuid  
cmp    $0x80000001,%eax
jb     f5 <OPENSSL_ia32_cpuid+0xc5>
mov    %eax,%r10d
mov    $0x80000001,%eax
cpuid  
or     %ecx,%r9d
and    $0x801,%r9d
cmp    $0x80000008,%r10d
jb     f5 <OPENSSL_ia32_cpuid+0xc5>
mov    $0x80000008,%eax
cpuid  
movzbq %cl,%r10
inc    %r10
mov    $0x1,%eax
cpuid  
bt     $0x1c,%edx
jae    18a <OPENSSL_ia32_cpuid+0x15a>
shr    $0x10,%ebx
cmp    %r10b,%bl
ja     18a <OPENSSL_ia32_cpuid+0x15a>
and    $0xefffffff,%edx
jmpq   18a <OPENSSL_ia32_cpuid+0x15a>
cmp    $0x4,%r11d
mov    $0xffffffff,%r10d
jb     11b <OPENSSL_ia32_cpuid+0xeb>
mov    $0x4,%eax
mov    $0x0,%ecx
cpuid  
mov    %eax,%r10d
shr    $0xe,%r10d
and    $0xfff,%r10d
mov    $0x1,%eax
cpuid  
movd   %eax,%xmm0
and    $0xbfefffff,%edx
cmp    $0x0,%r9d
jne    164 <OPENSSL_ia32_cpuid+0x134>
or     $0x40000000,%edx
and    $0xf,%ah
cmp    $0xf,%ah
jne    146 <OPENSSL_ia32_cpuid+0x116>
or     $0x100000,%edx
cmp    $0x6,%ah
jne    164 <OPENSSL_ia32_cpuid+0x134>
and    $0xfff0ff0,%eax
cmp    $0x50670,%eax
je     15e <OPENSSL_ia32_cpuid+0x12e>
cmp    $0x80650,%eax
jne    164 <OPENSSL_ia32_cpuid+0x134>
and    $0xfbffffff,%ecx
bt     $0x1c,%edx
jae    18a <OPENSSL_ia32_cpuid+0x15a>
and    $0xefffffff,%edx
cmp    $0x0,%r10d
je     18a <OPENSSL_ia32_cpuid+0x15a>
or     $0x10000000,%edx
shr    $0x10,%ebx
cmp    $0x1,%bl
ja     18a <OPENSSL_ia32_cpuid+0x15a>
and    $0xefffffff,%edx
and    $0x800,%r9d
and    $0xfffff7ff,%ecx
or     %ecx,%r9d
mov    %edx,%r10d
cmp    $0x7,%r11d
jb     1d5 <OPENSSL_ia32_cpuid+0x1a5>
mov    $0x7,%eax
xor    %ecx,%ecx
cpuid  
bt     $0x1a,%r9d
jb     1b9 <OPENSSL_ia32_cpuid+0x189>
and    $0xfff7ffff,%ebx
movd   %xmm0,%eax
and    $0xfff0ff0,%eax
cmp    $0x50650,%eax
jne    1cf <OPENSSL_ia32_cpuid+0x19f>
and    $0xfffeffff,%ebx
mov    %ebx,0x8(%rdi)
mov    %ecx,0xc(%rdi)
bt     $0x1b,%r9d
jae    1fc <OPENSSL_ia32_cpuid+0x1cc>
xor    %ecx,%ecx
xgetbv 
and    $0xe6,%eax
cmp    $0xe6,%eax
je     20c <OPENSSL_ia32_cpuid+0x1dc>
andl   $0x3fdeffff,0x8(%rdi)
and    $0x6,%eax
cmp    $0x6,%eax
je     20c <OPENSSL_ia32_cpuid+0x1dc>
mov    $0xefffe7ff,%eax
and    %eax,%r9d
mov    $0x3fdeffdf,%eax
and    %eax,0x8(%rdi)
shl    $0x20,%r9
mov    %r10d,%eax
mov    %r8,%rbx
or     %r9,%rax
repz retq 
nopl   0x0(%rax,%rax,1)

0000000000000220 <OPENSSL_cleanse>:
repz nop %edx
xor    %rax,%rax
cmp    $0xf,%rsi
jae    250 <OPENSSL_cleanse+0x30>
cmp    $0x0,%rsi
je     23f <OPENSSL_cleanse+0x1f>
mov    %al,(%rdi)
sub    $0x1,%rsi
lea    0x1(%rdi),%rdi
jne    233 <OPENSSL_cleanse+0x13>
repz retq 
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)
test   $0x7,%rdi
je     265 <OPENSSL_cleanse+0x45>
mov    %al,(%rdi)
lea    -0x1(%rsi),%rsi
lea    0x1(%rdi),%rdi
jmp    250 <OPENSSL_cleanse+0x30>
mov    %rax,(%rdi)
lea    -0x8(%rsi),%rsi
test   $0xfffffffffffffff8,%rsi
lea    0x8(%rdi),%rdi
jne    265 <OPENSSL_cleanse+0x45>
cmp    $0x0,%rsi
jne    233 <OPENSSL_cleanse+0x13>
repz retq 
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)

0000000000000290 <CRYPTO_memcmp>:
repz nop %edx
xor    %rax,%rax
xor    %r10,%r10
cmp    $0x0,%rdx
je     2ed <CRYPTO_memcmp+0x5d>
cmp    $0x10,%rdx
jne    2d0 <CRYPTO_memcmp+0x40>
mov    (%rdi),%r10
mov    0x8(%rdi),%r11
mov    $0x1,%rdx
xor    (%rsi),%r10
xor    0x8(%rsi),%r11
or     %r11,%r10
cmovne %rdx,%rax
repz retq 
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)
mov    (%rdi),%r10b
lea    0x1(%rdi),%rdi
xor    (%rsi),%r10b
lea    0x1(%rsi),%rsi
or     %r10b,%al
dec    %rdx
jne    2d0 <CRYPTO_memcmp+0x40>
neg    %rax
shr    $0x3f,%rax
repz retq 
nop

00000000000002f0 <OPENSSL_wipe_cpu>:
repz nop %edx
pxor   %xmm0,%xmm0
pxor   %xmm1,%xmm1
pxor   %xmm2,%xmm2
pxor   %xmm3,%xmm3
pxor   %xmm4,%xmm4
pxor   %xmm5,%xmm5
pxor   %xmm6,%xmm6
pxor   %xmm7,%xmm7
pxor   %xmm8,%xmm8
pxor   %xmm9,%xmm9
pxor   %xmm10,%xmm10
pxor   %xmm11,%xmm11
pxor   %xmm12,%xmm12
pxor   %xmm13,%xmm13
pxor   %xmm14,%xmm14
pxor   %xmm15,%xmm15
xor    %rcx,%rcx
xor    %rdx,%rdx
xor    %rsi,%rsi
xor    %rdi,%rdi
xor    %r8,%r8
xor    %r9,%r9
xor    %r10,%r10
xor    %r11,%r11
lea    0x8(%rsp),%rax
repz retq 
nopl   0x0(%rax,%rax,1)

0000000000000360 <OPENSSL_instrument_bus>:
repz nop %edx
mov    %rdi,%r10
mov    %rsi,%rcx
mov    %rsi,%r11
rdtsc  
mov    %eax,%r8d
mov    $0x0,%r9d
clflush (%r10)
lock add %r9d,(%r10)
jmp    390 <OPENSSL_instrument_bus+0x30>
nopl   0x0(%rax)
nopw   %cs:0x0(%rax,%rax,1)
rdtsc  
mov    %eax,%edx
sub    %r8d,%eax
mov    %edx,%r8d
mov    %eax,%r9d
clflush (%r10)
lock add %eax,(%r10)
lea    0x4(%r10),%r10
sub    $0x1,%rcx
jne    390 <OPENSSL_instrument_bus+0x30>
mov    %r11,%rax
repz retq 
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

00000000000003c0 <OPENSSL_instrument_bus2>:
repz nop %edx
mov    %rdi,%r10
mov    %rsi,%rcx
mov    %rdx,%r11
mov    %rcx,0x8(%rsp)
rdtsc  
mov    %eax,%r8d
mov    $0x0,%r9d
clflush (%r10)
lock add %r9d,(%r10)
rdtsc  
mov    %eax,%edx
sub    %r8d,%eax
mov    %edx,%r8d
mov    %eax,%r9d
clflush (%r10)
lock add %eax,(%r10)
sub    $0x1,%r11
je     421 <OPENSSL_instrument_bus2+0x61>
rdtsc  
mov    %eax,%edx
sub    %r8d,%eax
mov    %edx,%r8d
cmp    %r9d,%eax
mov    %eax,%r9d
mov    $0x0,%edx
setne  %dl
sub    %rdx,%rcx
lea    (%r10,%rdx,4),%r10
jne    3f2 <OPENSSL_instrument_bus2+0x32>
mov    0x8(%rsp),%rax
sub    %rcx,%rax
repz retq 
nopl   0x0(%rax,%rax,1)

0000000000000430 <OPENSSL_ia32_rdrand_bytes>:
repz nop %edx
xor    %rax,%rax
cmp    $0x0,%rsi
je     493 <OPENSSL_ia32_rdrand_bytes+0x63>
mov    $0x8,%r11
rdrand %r10
jb     460 <OPENSSL_ia32_rdrand_bytes+0x30>
dec    %r11
jne    444 <OPENSSL_ia32_rdrand_bytes+0x14>
jmp    493 <OPENSSL_ia32_rdrand_bytes+0x63>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)
cmp    $0x8,%rsi
jb     480 <OPENSSL_ia32_rdrand_bytes+0x50>
mov    %r10,(%rdi)
lea    0x8(%rdi),%rdi
add    $0x8,%rax
sub    $0x8,%rsi
je     493 <OPENSSL_ia32_rdrand_bytes+0x63>
mov    $0x8,%r11
jmp    444 <OPENSSL_ia32_rdrand_bytes+0x14>
mov    %r10b,(%rdi)
lea    0x1(%rdi),%rdi
inc    %rax
shr    $0x8,%r10
dec    %rsi
jne    480 <OPENSSL_ia32_rdrand_bytes+0x50>
xor    %r10,%r10
repz retq 
nopl   0x0(%rax,%rax,1)

00000000000004a0 <OPENSSL_ia32_rdseed_bytes>:
repz nop %edx
xor    %rax,%rax
cmp    $0x0,%rsi
je     503 <OPENSSL_ia32_rdseed_bytes+0x63>
mov    $0x8,%r11
rdseed %r10
jb     4d0 <OPENSSL_ia32_rdseed_bytes+0x30>
dec    %r11
jne    4b4 <OPENSSL_ia32_rdseed_bytes+0x14>
jmp    503 <OPENSSL_ia32_rdseed_bytes+0x63>
nopl   0x0(%rax,%rax,1)
nopw   %cs:0x0(%rax,%rax,1)
cmp    $0x8,%rsi
jb     4f0 <OPENSSL_ia32_rdseed_bytes+0x50>
mov    %r10,(%rdi)
lea    0x8(%rdi),%rdi
add    $0x8,%rax
sub    $0x8,%rsi
je     503 <OPENSSL_ia32_rdseed_bytes+0x63>
mov    $0x8,%r11
jmp    4b4 <OPENSSL_ia32_rdseed_bytes+0x14>
mov    %r10b,(%rdi)
lea    0x1(%rdi),%rdi
inc    %rax
shr    $0x8,%r10
dec    %rsi
jne    4f0 <OPENSSL_ia32_rdseed_bytes+0x50>
xor    %r10,%r10
repz retq 

Disassembly of section .init:

0000000000000000 <.init>:
callq  5 <OPENSSL_atomic_add+0x5>
