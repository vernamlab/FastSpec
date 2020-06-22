
openssl_crypto_dump/liblegacy-lib-threads_pthread.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <fork_once_func>:
mov    0x0(%rip),%rdx        # 7 <fork_once_func+0x7>
mov    0x0(%rip),%rsi        # e <fork_once_func+0xe>
mov    0x0(%rip),%rdi        # 15 <fork_once_func+0x15>
jmpq   1a <fork_once_func+0x1a>
nopw   0x0(%rax,%rax,1)

0000000000000020 <CRYPTO_THREAD_lock_new>:
push   %rbx
lea    0x0(%rip),%rsi        # 28 <CRYPTO_THREAD_lock_new+0x8>
mov    $0x21,%edx
mov    $0x38,%edi
callq  37 <CRYPTO_THREAD_lock_new+0x17>
test   %rax,%rax
je     58 <CRYPTO_THREAD_lock_new+0x38>
xor    %esi,%esi
mov    %rax,%rdi
mov    %rax,%rbx
callq  49 <CRYPTO_THREAD_lock_new+0x29>
test   %eax,%eax
mov    %rbx,%rdi
jne    60 <CRYPTO_THREAD_lock_new+0x40>
mov    %rdi,%rax
pop    %rbx
retq   
nopl   (%rax)
xor    %edi,%edi
jmp    50 <CRYPTO_THREAD_lock_new+0x30>
nopl   0x0(%rax)
lea    0x0(%rip),%rsi        # 67 <CRYPTO_THREAD_lock_new+0x47>
mov    $0x27,%edx
callq  71 <CRYPTO_THREAD_lock_new+0x51>
xor    %edi,%edi
jmp    50 <CRYPTO_THREAD_lock_new+0x30>
nop
nopw   %cs:0x0(%rax,%rax,1)

0000000000000080 <CRYPTO_THREAD_read_lock>:
sub    $0x8,%rsp
callq  89 <CRYPTO_THREAD_read_lock+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

00000000000000a0 <CRYPTO_THREAD_write_lock>:
sub    $0x8,%rsp
callq  a9 <CRYPTO_THREAD_write_lock+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

00000000000000c0 <CRYPTO_THREAD_unlock>:
sub    $0x8,%rsp
callq  c9 <CRYPTO_THREAD_unlock+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

00000000000000e0 <CRYPTO_THREAD_lock_free>:
test   %rdi,%rdi
je     108 <CRYPTO_THREAD_lock_free+0x28>
push   %rbx
mov    %rdi,%rbx
callq  ee <CRYPTO_THREAD_lock_free+0xe>
mov    %rbx,%rdi
lea    0x0(%rip),%rsi        # f8 <CRYPTO_THREAD_lock_free+0x18>
mov    $0x73,%edx
pop    %rbx
jmpq   103 <CRYPTO_THREAD_lock_free+0x23>
nopl   0x0(%rax,%rax,1)
repz retq 
nopw   0x0(%rax,%rax,1)

0000000000000110 <CRYPTO_THREAD_run_once>:
sub    $0x8,%rsp
callq  119 <CRYPTO_THREAD_run_once+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000130 <CRYPTO_THREAD_init_local>:
sub    $0x8,%rsp
callq  139 <CRYPTO_THREAD_init_local+0x9>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopw   %cs:0x0(%rax,%rax,1)

0000000000000150 <CRYPTO_THREAD_get_local>:
mov    (%rdi),%edi
jmpq   157 <CRYPTO_THREAD_get_local+0x7>
nopw   0x0(%rax,%rax,1)

0000000000000160 <CRYPTO_THREAD_set_local>:
sub    $0x8,%rsp
mov    (%rdi),%edi
callq  16b <CRYPTO_THREAD_set_local+0xb>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopl   0x0(%rax,%rax,1)

0000000000000180 <CRYPTO_THREAD_cleanup_local>:
sub    $0x8,%rsp
mov    (%rdi),%edi
callq  18b <CRYPTO_THREAD_cleanup_local+0xb>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
nopl   0x0(%rax,%rax,1)

00000000000001a0 <CRYPTO_THREAD_get_current_id>:
jmpq   1a5 <CRYPTO_THREAD_get_current_id+0x5>
nop
nopw   %cs:0x0(%rax,%rax,1)

00000000000001b0 <CRYPTO_THREAD_compare_id>:
xor    %eax,%eax
cmp    %rsi,%rdi
sete   %al
retq   
nopl   0x0(%rax)

00000000000001c0 <CRYPTO_atomic_add>:
mov    %esi,%eax
lock xadd %eax,(%rdi)
add    %esi,%eax
mov    %eax,(%rdx)
mov    $0x1,%eax
retq   

00000000000001d0 <openssl_init_fork_handlers>:
lea    -0x1d7(%rip),%rsi        # 0 <fork_once_func>
lea    0x0(%rip),%rdi        # 1de <openssl_init_fork_handlers+0xe>
sub    $0x8,%rsp
callq  1e7 <openssl_init_fork_handlers+0x17>
test   %eax,%eax
sete   %al
add    $0x8,%rsp
movzbl %al,%eax
retq   
xchg   %ax,%ax
nopw   %cs:0x0(%rax,%rax,1)

0000000000000200 <openssl_get_fork_id>:
jmpq   205 <openssl_get_fork_id+0x5>
