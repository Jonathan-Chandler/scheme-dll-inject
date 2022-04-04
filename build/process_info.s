	.file	"process_info.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/injector/process_info.c"
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB8:
	.file 1 "C:/msys64/mingw32/i686-w64-mingw32/include/stdio.h"
	.loc 1 369 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 371 35
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 372 14
	movl	-16(%ebp), %ebx
	movl	$1, (%esp)
	movl	__imp____acrt_iob_func, %eax
	call	*%eax
LVL0:
	movl	%ebx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	movl	%eax, -12(%ebp)
	.loc 1 374 10
	movl	-12(%ebp), %eax
	.loc 1 375 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC0:
	.ascii "src/injector/process_info.c\0"
LC1:
	.ascii "ERROR::%s::%d::%s::\0"
	.align 4
LC2:
	.ascii "Null process information return pointer\0"
LC3:
	.ascii "\12\0"
LC4:
	.ascii "Null window title\0"
LC5:
	.ascii "Empty process window title\0"
	.align 4
LC6:
	.ascii "Failed to allocate memory for ppProcInfo\0"
LC7:
	.ascii "Fail to get process ID\0"
LC8:
	.ascii "Fail to get process handle\0"
	.text
	.globl	_proc_info_init
	.def	_proc_info_init;	.scl	2;	.type	32;	.endef
_proc_info_init:
LFB114:
	.file 2 "src/injector/process_info.c"
	.loc 2 83 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 87 6
	cmpl	$0, 8(%ebp)
	jne	L4
	.loc 2 89 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L5
	.loc 2 89 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$89, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L5:
	.loc 2 90 12 is_stmt 1
	movl	$-22, %eax
	jmp	L6
L4:
	.loc 2 92 15
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 2 94 6
	cmpl	$0, 12(%ebp)
	jne	L7
	.loc 2 96 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L8
	.loc 2 96 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$96, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L8:
	.loc 2 97 12 is_stmt 1
	movl	$-22, %eax
	jmp	L6
L7:
	.loc 2 100 7
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	.loc 2 100 6
	testl	%eax, %eax
	jne	L9
	.loc 2 102 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L10
	.loc 2 102 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$102, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L10:
	.loc 2 103 12 is_stmt 1
	movl	$-22, %eax
	jmp	L6
L9:
	.loc 2 106 15
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 2 107 6
	cmpl	$0, -12(%ebp)
	jne	L11
	.loc 2 109 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L12
	.loc 2 109 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$109, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L12:
	.loc 2 110 12 is_stmt 1
	movl	$-12, %eax
	jmp	L6
L11:
	.loc 2 127 18
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_proc_info_get_process_id_from_exe
	movl	%eax, -16(%ebp)
	.loc 2 127 6
	cmpl	$0, -16(%ebp)
	jns	L13
	.loc 2 129 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L14
	.loc 2 129 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$129, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L14:
	.loc 2 130 12 is_stmt 1
	movl	-16(%ebp), %eax
	jmp	L6
L13:
	.loc 2 133 18
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_proc_info_get_process_handle
	movl	%eax, -16(%ebp)
	.loc 2 133 6
	cmpl	$0, -16(%ebp)
	jns	L15
	.loc 2 135 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L16
	.loc 2 135 5 is_stmt 0 discriminator 1
	movl	$___func__.9, 12(%esp)
	movl	$135, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L16:
	.loc 2 136 5 is_stmt 1
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 2 137 12
	movl	-16(%ebp), %eax
	jmp	L6
L15:
	.loc 2 140 15
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 2 148 10
	movl	$0, %eax
L6:
	.loc 2 149 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC9:
	.ascii "Null process information\0"
	.align 4
LC10:
	.ascii "Fail to close process handle - %d\0"
	.text
	.globl	_proc_info_destroy
	.def	_proc_info_destroy;	.scl	2;	.type	32;	.endef
_proc_info_destroy:
LFB115:
	.loc 2 152 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 155 6
	cmpl	$0, 8(%ebp)
	jne	L18
	.loc 2 157 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L19
	.loc 2 157 5 is_stmt 0 discriminator 1
	movl	$___func__.8, 12(%esp)
	movl	$157, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L19:
	.loc 2 158 12 is_stmt 1
	movl	$-22, %eax
	jmp	L20
L18:
	.loc 2 161 7
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 161 6
	testl	%eax, %eax
	jne	L21
	.loc 2 163 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L22
	.loc 2 163 5 is_stmt 0 discriminator 1
	movl	$___func__.8, 12(%esp)
	movl	$163, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC9, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L22:
	.loc 2 164 12 is_stmt 1
	movl	$-22, %eax
	jmp	L20
L21:
	.loc 2 167 17
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_proc_info_close_process_handle
	movl	%eax, -12(%ebp)
	.loc 2 167 6
	cmpl	$0, -12(%ebp)
	jns	L23
	.loc 2 169 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L23
	.loc 2 169 5 is_stmt 0 discriminator 1
	movl	$___func__.8, 12(%esp)
	movl	$169, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L23:
	.loc 2 172 3 is_stmt 1
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 2 173 15
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 2 174 10
	movl	$0, %eax
L20:
	.loc 2 175 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
LC11:
	.ascii "%s window not found\0"
LC12:
	.ascii "VERBOSE::%s::%d::%s::\0"
LC13:
	.ascii "Found %s window\0"
	.text
	.globl	_proc_info_get_window_handle
	.def	_proc_info_get_window_handle;	.scl	2;	.type	32;	.endef
_proc_info_get_window_handle:
LFB116:
	.loc 2 178 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 179 6
	cmpl	$0, 8(%ebp)
	jne	L25
	.loc 2 181 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L26
	.loc 2 181 5 is_stmt 0 discriminator 1
	movl	$___func__.7, 12(%esp)
	movl	$181, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC9, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L26:
	.loc 2 182 12 is_stmt 1
	movl	$-22, %eax
	jmp	L27
L25:
	.loc 2 185 24
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__FindWindowA@8, %eax
	call	*%eax
LVL1:
	subl	$8, %esp
	.loc 2 185 22
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	.loc 2 187 16
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 187 6
	testl	%eax, %eax
	jne	L28
	.loc 2 189 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L29
	.loc 2 189 5 is_stmt 0 discriminator 1
	movl	$___func__.7, 12(%esp)
	movl	$189, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L29:
	.loc 2 190 12 is_stmt 1
	movl	$-22, %eax
	jmp	L27
L28:
	.loc 2 193 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L30
	.loc 2 193 3 is_stmt 0 discriminator 1
	movl	$___func__.7, 12(%esp)
	movl	$193, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L30:
	.loc 2 194 10 is_stmt 1
	movl	$0, %eax
L27:
	.loc 2 195 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE116:
	.section .rdata,"dr"
LC14:
	.ascii "Null process info\0"
	.align 4
LC15:
	.ascii "Failed to read Process32First information\0"
LC16:
	.ascii "Process \"%s\" was not found\0"
LC17:
	.ascii "Found process ID %u\0"
	.text
	.globl	_proc_info_get_process_id_from_exe
	.def	_proc_info_get_process_id_from_exe;	.scl	2;	.type	32;	.endef
_proc_info_get_process_id_from_exe:
LFB117:
	.loc 2 199 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$328, %esp
	.loc 2 204 6
	cmpl	$0, 8(%ebp)
	jne	L32
	.loc 2 206 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L33
	.loc 2 206 5 is_stmt 0 discriminator 1
	movl	$___func__.6, 12(%esp)
	movl	$206, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC14, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L33:
	.loc 2 207 12 is_stmt 1
	movl	$-22, %eax
	jmp	L44
L32:
	.loc 2 211 18
	movl	$0, 4(%esp)
	movl	$2, (%esp)
	call	_CreateToolhelp32Snapshot@8
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 212 6
	cmpl	$-1, -16(%ebp)
	jne	L35
	.loc 2 212 51 discriminator 1
	movl	$0, %eax
	jmp	L44
L35:
	.loc 2 214 15
	movl	$296, -312(%ebp)
	.loc 2 217 8
	leal	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Process32First@8
	subl	$8, %esp
	.loc 2 217 6
	testl	%eax, %eax
	jne	L36
	.loc 2 219 5
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
LVL2:
	subl	$4, %esp
	.loc 2 220 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L37
	.loc 2 220 5 is_stmt 0 discriminator 1
	movl	$___func__.6, 12(%esp)
	movl	$220, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC15, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L37:
	.loc 2 221 12 is_stmt 1
	movl	$-6, %eax
	jmp	L44
L36:
	.loc 2 226 14
	leal	-312(%ebp), %eax
	addl	$36, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	.loc 2 226 8
	testl	%eax, %eax
	jne	L38
	.loc 2 228 19
	movl	-304(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 229 7
	jmp	L39
L38:
	.loc 2 231 12
	leal	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Process32Next@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L36
L39:
	.loc 2 233 3
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
LVL3:
	subl	$4, %esp
	.loc 2 235 6
	cmpl	$0, -12(%ebp)
	je	L40
	.loc 2 235 32 discriminator 1
	leal	-312(%ebp), %eax
	addl	$36, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	.loc 2 235 24 discriminator 1
	testl	%eax, %eax
	je	L41
L40:
	.loc 2 237 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L42
	.loc 2 237 5 is_stmt 0 discriminator 1
	movl	$___func__.6, 12(%esp)
	movl	$237, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L42:
	.loc 2 238 12 is_stmt 1
	movl	$-6, %eax
	jmp	L44
L41:
	.loc 2 241 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L43
	.loc 2 241 5 is_stmt 0 discriminator 1
	movl	$___func__.6, 12(%esp)
	movl	$241, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L43:
	.loc 2 243 26 is_stmt 1
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 2 244 10
	movl	$0, %eax
L44:
	.loc 2 245 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE117:
	.section .rdata,"dr"
LC18:
	.ascii "Null window handle\0"
LC19:
	.ascii "Could not get process id\0"
LC20:
	.ascii "Found process id: %lu\0"
	.text
	.globl	_proc_info_get_process_id
	.def	_proc_info_get_process_id;	.scl	2;	.type	32;	.endef
_proc_info_get_process_id:
LFB118:
	.loc 2 248 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 249 16
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 249 6
	testl	%eax, %eax
	jne	L46
	.loc 2 251 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L47
	.loc 2 251 5 is_stmt 0 discriminator 1
	movl	$___func__.5, 12(%esp)
	movl	$251, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC18, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L47:
	.loc 2 252 12 is_stmt 1
	movl	$-22, %eax
	jmp	L48
L46:
	.loc 2 255 3
	movl	8(%ebp), %eax
	leal	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetWindowThreadProcessId@8, %eax
	call	*%eax
LVL4:
	subl	$8, %esp
	.loc 2 256 16
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 2 256 6
	testl	%eax, %eax
	jne	L49
	.loc 2 258 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L50
	.loc 2 258 5 is_stmt 0 discriminator 1
	movl	$___func__.5, 12(%esp)
	movl	$258, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC19, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L50:
	.loc 2 259 12 is_stmt 1
	movl	$-6, %eax
	jmp	L48
L49:
	.loc 2 262 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L51
	.loc 2 262 3 is_stmt 0 discriminator 1
	movl	$___func__.5, 12(%esp)
	movl	$262, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L51:
	.loc 2 263 10 is_stmt 1
	movl	$0, %eax
L48:
	.loc 2 264 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE118:
	.section .rdata,"dr"
LC21:
	.ascii "Null process ID\0"
	.align 4
LC22:
	.ascii "Failed to get handle for process\0"
LC23:
	.ascii "Open process handle: %u\0"
	.text
	.globl	_proc_info_get_process_handle
	.def	_proc_info_get_process_handle;	.scl	2;	.type	32;	.endef
_proc_info_get_process_handle:
LFB119:
	.loc 2 267 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 268 16
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 2 268 6
	testl	%eax, %eax
	jne	L53
	.loc 2 270 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L54
	.loc 2 270 5 is_stmt 0 discriminator 1
	movl	$___func__.4, 12(%esp)
	movl	$270, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC21, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L54:
	.loc 2 271 12 is_stmt 1
	movl	$-22, %eax
	jmp	L55
L53:
	.loc 2 274 25
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$2097151, (%esp)
	movl	__imp__OpenProcess@12, %eax
	call	*%eax
LVL5:
	subl	$12, %esp
	.loc 2 274 23
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 2 276 16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 2 276 6
	testl	%eax, %eax
	jne	L56
	.loc 2 278 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L57
	.loc 2 278 5 is_stmt 0 discriminator 1
	movl	$___func__.4, 12(%esp)
	movl	$278, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC22, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L57:
	.loc 2 279 12 is_stmt 1
	movl	$-6, %eax
	jmp	L55
L56:
	.loc 2 282 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L58
	.loc 2 282 3 is_stmt 0 discriminator 1
	movl	$___func__.4, 12(%esp)
	movl	$282, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC23, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L58:
	.loc 2 283 10 is_stmt 1
	movl	$0, %eax
L55:
	.loc 2 284 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE119:
	.section .rdata,"dr"
LC24:
	.ascii "Bad process handle\0"
LC25:
	.ascii "Closed process handle: %u\0"
	.text
	.globl	_proc_info_close_process_handle
	.def	_proc_info_close_process_handle;	.scl	2;	.type	32;	.endef
_proc_info_close_process_handle:
LFB120:
	.loc 2 287 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 288 6
	cmpl	$0, 8(%ebp)
	jne	L60
	.loc 2 290 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L61
	.loc 2 290 5 is_stmt 0 discriminator 1
	movl	$___func__.3, 12(%esp)
	movl	$290, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC14, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L61:
	.loc 2 291 12 is_stmt 1
	movl	$-22, %eax
	jmp	L62
L60:
	.loc 2 294 16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 2 294 6
	testl	%eax, %eax
	jne	L63
	.loc 2 296 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L64
	.loc 2 296 5 is_stmt 0 discriminator 1
	movl	$___func__.3, 12(%esp)
	movl	$296, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC24, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L64:
	.loc 2 297 12 is_stmt 1
	movl	$-22, %eax
	jmp	L62
L63:
	.loc 2 300 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L65
	.loc 2 300 3 is_stmt 0 discriminator 1
	movl	$___func__.3, 12(%esp)
	movl	$300, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L65:
	.loc 2 301 3 is_stmt 1
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__CloseHandle@4, %eax
	call	*%eax
LVL6:
	subl	$4, %esp
	.loc 2 302 23
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 2 304 10
	movl	$0, %eax
L62:
	.loc 2 305 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE120:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "Null process information pointer\0"
LC27:
	.ascii "Invalid process handle\0"
LC28:
	.ascii "Fail get module information\0"
	.align 4
LC29:
	.ascii "Found remote DLL base at 0x%08X\0"
LC30:
	.ascii "Fail to get dll dos header\0"
LC31:
	.ascii "Fail to get dll nt signature\0"
LC32:
	.ascii "Fail to get dll file header\0"
	.align 4
LC33:
	.ascii "Fail to get dll optional header\0"
	.align 4
LC34:
	.ascii "invalid dll optional header export\0"
LC35:
	.ascii "fail to read export dir\0"
	.align 4
LC36:
	.ascii "Fail to alloc space for tables\0"
LC37:
	.ascii "Fail to copy functions\0"
LC38:
	.ascii "Fail to copy names\0"
LC39:
	.ascii "Fail to copy ordinal table\0"
	.align 4
LC40:
	.ascii "Fail while reading function name %u character %u from dll\0"
	.text
	.globl	_proc_info_get_remote_function_addr
	.def	_proc_info_get_remote_function_addr;	.scl	2;	.type	32;	.endef
_proc_info_get_remote_function_addr:
LFB121:
	.loc 2 308 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$708, %esp
	.cfi_offset 7, -12
	.loc 2 309 14
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 2 310 12
	movl	$0, -36(%ebp)
	.loc 2 311 20
	leal	-124(%ebp), %edx
	movl	$0, %eax
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 312 9
	movl	$0, -128(%ebp)
	.loc 2 313 21
	movl	$0, -148(%ebp)
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	.loc 2 314 27
	leal	-372(%ebp), %edx
	movl	$0, %eax
	movl	$56, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 315 24
	movl	$0, -380(%ebp)
	movl	$0, -376(%ebp)
	.loc 2 316 26
	leal	-420(%ebp), %edx
	movl	$0, %eax
	movl	$10, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 317 12
	movl	$0, -40(%ebp)
	.loc 2 318 12
	movl	$0, -44(%ebp)
	.loc 2 319 12
	movl	$0, -48(%ebp)
	.loc 2 320 10
	movl	$0, -12(%ebp)
	.loc 2 321 10
	movl	$0, -16(%ebp)
	.loc 2 322 10
	movl	$0, -20(%ebp)
	.loc 2 323 12
	movl	$0, -24(%ebp)
	.loc 2 325 6
	cmpl	$0, 8(%ebp)
	jne	L67
	.loc 2 327 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L68
	.loc 2 327 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$327, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC26, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L68:
	.loc 2 329 12 is_stmt 1
	movl	$0, %eax
	jmp	L113
L67:
	.loc 2 332 16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 2 332 6
	testl	%eax, %eax
	jne	L70
	.loc 2 334 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L71
	.loc 2 334 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$334, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC27, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L71:
	.loc 2 336 12 is_stmt 1
	movl	$0, %eax
	jmp	L113
L70:
	.loc 2 339 8
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$12, 12(%esp)
	leal	-60(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_K32GetModuleInformation@16
	subl	$16, %esp
	.loc 2 339 6
	testl	%eax, %eax
	jne	L72
	.loc 2 341 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L115
	.loc 2 341 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$341, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC28, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 342 5 is_stmt 1 discriminator 1
	jmp	L115
L72:
	.loc 2 345 47
	movl	-60(%ebp), %eax
	.loc 2 345 19
	movl	%eax, -36(%ebp)
	.loc 2 346 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L75
	.loc 2 346 3 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$346, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC29, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L75:
	.loc 2 349 8 is_stmt 1
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$64, 12(%esp)
	leal	-124(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL7:
	subl	$20, %esp
	.loc 2 349 6
	testl	%eax, %eax
	je	L76
	.loc 2 350 24
	movzwl	-124(%ebp), %eax
	.loc 2 350 7
	cmpw	$23117, %ax
	je	L77
L76:
	.loc 2 352 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L116
	.loc 2 352 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$352, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC30, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 353 5 is_stmt 1 discriminator 1
	jmp	L116
L77:
	.loc 2 357 89
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	.loc 2 357 73
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	.loc 2 357 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$4, 12(%esp)
	leal	-128(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL8:
	subl	$20, %esp
	.loc 2 357 6
	testl	%eax, %eax
	je	L79
	.loc 2 357 172 discriminator 1
	movl	-128(%ebp), %eax
	.loc 2 357 152 discriminator 1
	cmpl	$17744, %eax
	je	L80
L79:
	.loc 2 359 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L117
	.loc 2 359 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$359, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC31, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 360 5 is_stmt 1 discriminator 1
	jmp	L117
L80:
	.loc 2 364 89
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	.loc 2 364 73
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	.loc 2 364 99
	addl	$4, %eax
	.loc 2 364 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$20, 12(%esp)
	leal	-148(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL9:
	subl	$20, %esp
	.loc 2 364 6
	testl	%eax, %eax
	jne	L82
	.loc 2 366 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L118
	.loc 2 366 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$366, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC32, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 367 5 is_stmt 1 discriminator 1
	jmp	L118
L82:
	.loc 2 371 186
	movzwl	-132(%ebp), %eax
	.loc 2 371 8
	movzwl	%ax, %edx
	.loc 2 371 89
	movl	-64(%ebp), %eax
	movl	%eax, %ecx
	.loc 2 371 73
	movl	-36(%ebp), %eax
	addl	%ecx, %eax
	.loc 2 371 126
	addl	$24, %eax
	.loc 2 371 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	leal	-372(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL10:
	subl	$20, %esp
	.loc 2 371 6
	testl	%eax, %eax
	je	L84
	.loc 2 372 24
	movzwl	-372(%ebp), %eax
	.loc 2 372 7
	cmpw	$267, %ax
	je	L85
L84:
	.loc 2 374 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L119
	.loc 2 374 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$374, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC33, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 375 5 is_stmt 1 discriminator 1
	jmp	L119
L85:
	.loc 2 379 21
	movl	-280(%ebp), %eax
	.loc 2 379 6
	testl	%eax, %eax
	je	L87
	.loc 2 381 97
	movl	-276(%ebp), %eax
	.loc 2 381 35
	movl	%eax, -380(%ebp)
	.loc 2 382 87
	movl	-272(%ebp), %eax
	.loc 2 382 25
	movl	%eax, -376(%ebp)
	.loc 2 391 88
	movl	-380(%ebp), %edx
	.loc 2 391 72
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	.loc 2 391 7
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$40, 12(%esp)
	leal	-420(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL11:
	subl	$20, %esp
	.loc 2 391 5
	testl	%eax, %eax
	jne	L90
	jmp	L114
L87:
	.loc 2 386 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L120
	.loc 2 386 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$386, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC34, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 387 5 is_stmt 1 discriminator 1
	jmp	L120
L114:
	.loc 2 393 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L121
	.loc 2 393 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$393, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC35, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 394 5 is_stmt 1 discriminator 1
	jmp	L121
L90:
	.loc 2 398 70
	movl	-392(%ebp), %edx
	.loc 2 398 34
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	.loc 2 399 66
	movl	-388(%ebp), %edx
	.loc 2 399 30
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 2 400 69
	movl	-384(%ebp), %edx
	.loc 2 400 33
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	.loc 2 406 70
	movl	-400(%ebp), %eax
	.loc 2 406 52
	sall	$2, %eax
	.loc 2 406 31
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 2 407 67
	movl	-396(%ebp), %eax
	.loc 2 407 49
	sall	$2, %eax
	.loc 2 407 28
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	.loc 2 408 69
	movl	-396(%ebp), %eax
	.loc 2 408 51
	sall	$2, %eax
	.loc 2 408 30
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	.loc 2 411 6
	cmpl	$0, -12(%ebp)
	je	L92
	.loc 2 411 41 discriminator 1
	cmpl	$0, -16(%ebp)
	je	L92
	.loc 2 411 74 discriminator 2
	cmpl	$0, -20(%ebp)
	jne	L93
L92:
	.loc 2 413 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L122
	.loc 2 413 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$413, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC36, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 414 5 is_stmt 1 discriminator 1
	jmp	L122
L93:
	.loc 2 418 130
	movl	-400(%ebp), %eax
	.loc 2 418 7
	leal	0(,%eax,4), %ecx
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL12:
	subl	$20, %esp
	.loc 2 418 5
	testl	%eax, %eax
	jne	L95
	.loc 2 420 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L123
	.loc 2 420 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$420, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC37, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 421 5 is_stmt 1 discriminator 1
	jmp	L123
L95:
	.loc 2 426 48
	movl	-396(%ebp), %eax
	.loc 2 425 7
	leal	0(,%eax,4), %ecx
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL13:
	subl	$20, %esp
	.loc 2 425 5
	testl	%eax, %eax
	jne	L97
	.loc 2 428 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L124
	.loc 2 428 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$428, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC38, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 429 5 is_stmt 1 discriminator 1
	jmp	L124
L97:
	.loc 2 434 51
	movl	-396(%ebp), %eax
	.loc 2 433 7
	leal	(%eax,%eax), %ecx
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL14:
	subl	$20, %esp
	.loc 2 433 5
	testl	%eax, %eax
	jne	L99
	.loc 2 436 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L125
	.loc 2 436 5 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$436, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC39, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 437 5 is_stmt 1 discriminator 1
	jmp	L125
L99:
LBB2:
	.loc 2 441 17
	movl	$0, -28(%ebp)
	.loc 2 441 3
	jmp	L101
L109:
LBB3:
LBB4:
	.loc 2 445 19
	movl	$0, -32(%ebp)
	.loc 2 445 5
	jmp	L102
L107:
	.loc 2 448 13
	leal	-676(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	.loc 2 447 99
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-16(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %ecx
	.loc 2 447 76
	movl	-36(%ebp), %eax
	addl	%eax, %ecx
	.loc 2 447 103
	movl	-32(%ebp), %eax
	addl	%ecx, %eax
	.loc 2 447 11
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL15:
	subl	$20, %esp
	.loc 2 447 9
	testl	%eax, %eax
	jne	L103
	.loc 2 450 9
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L126
	.loc 2 450 9 is_stmt 0 discriminator 1
	movl	$___func__.2, 12(%esp)
	movl	$450, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	jmp	L74
L103:
	.loc 2 458 10 is_stmt 1
	cmpl	$0, -32(%ebp)
	je	L105
	.loc 2 458 38 discriminator 1
	leal	-676(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	.loc 2 458 17 discriminator 1
	testb	%al, %al
	je	L127
L105:
	.loc 2 445 36 discriminator 2
	addl	$1, -32(%ebp)
L102:
	.loc 2 445 28 discriminator 1
	cmpl	$254, -32(%ebp)
	jbe	L107
	jmp	L106
L127:
	.loc 2 462 9
	nop
L106:
LBE4:
	.loc 2 466 9
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-676(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	.loc 2 466 8
	testl	%eax, %eax
	jne	L108
	.loc 2 468 71
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	.loc 2 468 15
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	jmp	L74
L108:
LBE3:
	.loc 2 441 61
	addl	$1, -28(%ebp)
L101:
	.loc 2 441 44 discriminator 1
	movl	-396(%ebp), %eax
	.loc 2 441 26 discriminator 1
	cmpl	%eax, -28(%ebp)
	jb	L109
LBE2:
	.loc 2 477 1
	jmp	L74
L115:
	.loc 2 342 5
	nop
	jmp	L74
L116:
	.loc 2 353 5
	nop
	jmp	L74
L117:
	.loc 2 360 5
	nop
	jmp	L74
L118:
	.loc 2 367 5
	nop
	jmp	L74
L119:
	.loc 2 375 5
	nop
	jmp	L74
L120:
	.loc 2 387 5
	nop
	jmp	L74
L121:
	.loc 2 394 5
	nop
	jmp	L74
L122:
	.loc 2 414 5
	nop
	jmp	L74
L123:
	.loc 2 421 5
	nop
	jmp	L74
L124:
	.loc 2 429 5
	nop
	jmp	L74
L125:
	.loc 2 437 5
	nop
	jmp	L74
L126:
LBB6:
LBB5:
	.loc 2 451 9
	nop
L74:
LBE5:
LBE6:
	.loc 2 478 6
	cmpl	$0, -12(%ebp)
	je	L110
	.loc 2 479 5
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L110:
	.loc 2 480 6
	cmpl	$0, -16(%ebp)
	je	L111
	.loc 2 481 5
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L111:
	.loc 2 482 6
	cmpl	$0, -20(%ebp)
	je	L112
	.loc 2 483 5
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L112:
	.loc 2 485 10
	movl	-24(%ebp), %eax
L113:
	.loc 2 486 1 discriminator 1
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE121:
	.section .rdata,"dr"
LC41:
	.ascii "Remote dll base 0x%08X\0"
	.align 4
LC42:
	.ascii "remote dll export function table addr 0x%08X\0"
	.align 4
LC43:
	.ascii "remote dll export name table addr 0x%08X\0"
	.align 4
LC44:
	.ascii "remote dll export ordinal table addr 0x%08X\0"
LC45:
	.ascii "function[%u] name: %s\0"
LC46:
	.ascii "function[%u] addr: %08X\0"
	.text
	.globl	_proc_info_list_remote_functions
	.def	_proc_info_list_remote_functions;	.scl	2;	.type	32;	.endef
_proc_info_list_remote_functions:
LFB122:
	.loc 2 489 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$708, %esp
	.cfi_offset 7, -12
	.loc 2 490 14
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	.loc 2 491 12
	movl	$0, -20(%ebp)
	.loc 2 492 20
	leal	-120(%ebp), %edx
	movl	$0, %eax
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 493 9
	movl	$0, -124(%ebp)
	.loc 2 494 21
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	$0, -128(%ebp)
	.loc 2 495 27
	leal	-368(%ebp), %edx
	movl	$0, %eax
	movl	$56, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 496 24
	movl	$0, -376(%ebp)
	movl	$0, -372(%ebp)
	.loc 2 497 26
	leal	-416(%ebp), %edx
	movl	$0, %eax
	movl	$10, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 498 12
	movl	$0, -24(%ebp)
	.loc 2 499 12
	movl	$0, -28(%ebp)
	.loc 2 500 12
	movl	$0, -32(%ebp)
	.loc 2 501 10
	movl	$0, -36(%ebp)
	.loc 2 502 10
	movl	$0, -40(%ebp)
	.loc 2 503 10
	movl	$0, -44(%ebp)
	.loc 2 505 6
	cmpl	$0, 8(%ebp)
	jne	L129
	.loc 2 507 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L130
	.loc 2 507 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$507, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC26, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L130:
	.loc 2 508 12 is_stmt 1
	movl	$-22, %eax
	jmp	L179
L129:
	.loc 2 511 16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 2 511 6
	testl	%eax, %eax
	jne	L132
	.loc 2 513 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L133
	.loc 2 513 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$513, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC27, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L133:
	.loc 2 514 12 is_stmt 1
	movl	$-22, %eax
	jmp	L179
L132:
	.loc 2 517 8
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$12, 12(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_K32GetModuleInformation@16
	subl	$16, %esp
	.loc 2 517 6
	testl	%eax, %eax
	jne	L134
	.loc 2 519 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L181
	.loc 2 519 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$519, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC28, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 520 5 is_stmt 1 discriminator 1
	jmp	L181
L134:
	.loc 2 523 47
	movl	-56(%ebp), %eax
	.loc 2 523 19
	movl	%eax, -20(%ebp)
	.loc 2 524 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L137
	.loc 2 524 3 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$524, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC41, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L137:
	.loc 2 527 8 is_stmt 1
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$64, 12(%esp)
	leal	-120(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL16:
	subl	$20, %esp
	.loc 2 527 6
	testl	%eax, %eax
	je	L138
	.loc 2 528 24
	movzwl	-120(%ebp), %eax
	.loc 2 528 7
	cmpw	$23117, %ax
	je	L139
L138:
	.loc 2 530 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L182
	.loc 2 530 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$530, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC30, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 531 5 is_stmt 1 discriminator 1
	jmp	L182
L139:
	.loc 2 535 89
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	.loc 2 535 73
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	.loc 2 535 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$4, 12(%esp)
	leal	-124(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL17:
	subl	$20, %esp
	.loc 2 535 6
	testl	%eax, %eax
	je	L141
	.loc 2 535 172 discriminator 1
	movl	-124(%ebp), %eax
	.loc 2 535 152 discriminator 1
	cmpl	$17744, %eax
	je	L142
L141:
	.loc 2 537 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L183
	.loc 2 537 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$537, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC31, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 538 5 is_stmt 1 discriminator 1
	jmp	L183
L142:
	.loc 2 542 89
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	.loc 2 542 73
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	.loc 2 542 99
	addl	$4, %eax
	.loc 2 542 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$20, 12(%esp)
	leal	-144(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL18:
	subl	$20, %esp
	.loc 2 542 6
	testl	%eax, %eax
	jne	L144
	.loc 2 544 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L184
	.loc 2 544 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$544, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC32, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 545 5 is_stmt 1 discriminator 1
	jmp	L184
L144:
	.loc 2 549 186
	movzwl	-128(%ebp), %eax
	.loc 2 549 8
	movzwl	%ax, %edx
	.loc 2 549 89
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	.loc 2 549 73
	movl	-20(%ebp), %eax
	addl	%ecx, %eax
	.loc 2 549 126
	addl	$24, %eax
	.loc 2 549 8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	leal	-368(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL19:
	subl	$20, %esp
	.loc 2 549 6
	testl	%eax, %eax
	je	L146
	.loc 2 550 24
	movzwl	-368(%ebp), %eax
	.loc 2 550 7
	cmpw	$267, %ax
	je	L147
L146:
	.loc 2 552 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L185
	.loc 2 552 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$552, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC33, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 553 5 is_stmt 1 discriminator 1
	jmp	L185
L147:
	.loc 2 557 21
	movl	-276(%ebp), %eax
	.loc 2 557 6
	testl	%eax, %eax
	je	L149
	.loc 2 559 97
	movl	-272(%ebp), %eax
	.loc 2 559 35
	movl	%eax, -376(%ebp)
	.loc 2 560 87
	movl	-268(%ebp), %eax
	.loc 2 560 25
	movl	%eax, -372(%ebp)
	.loc 2 569 88
	movl	-376(%ebp), %edx
	.loc 2 569 72
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	.loc 2 569 7
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$40, 12(%esp)
	leal	-416(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL20:
	subl	$20, %esp
	.loc 2 569 5
	testl	%eax, %eax
	jne	L152
	jmp	L180
L149:
	.loc 2 564 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L186
	.loc 2 564 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$564, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC34, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 565 5 is_stmt 1 discriminator 1
	jmp	L186
L180:
	.loc 2 571 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L187
	.loc 2 571 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$571, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC35, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 572 5 is_stmt 1 discriminator 1
	jmp	L187
L152:
	.loc 2 576 70
	movl	-388(%ebp), %edx
	.loc 2 576 34
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 2 577 66
	movl	-384(%ebp), %edx
	.loc 2 577 30
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	.loc 2 578 69
	movl	-380(%ebp), %edx
	.loc 2 578 33
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 2 579 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L154
	.loc 2 579 3 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$579, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L154:
	.loc 2 580 3 is_stmt 1
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L155
	.loc 2 580 3 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$580, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC43, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L155:
	.loc 2 581 3 is_stmt 1
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L156
	.loc 2 581 3 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$581, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC44, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L156:
	.loc 2 584 70 is_stmt 1
	movl	-396(%ebp), %eax
	.loc 2 584 52
	sall	$2, %eax
	.loc 2 584 31
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -36(%ebp)
	.loc 2 585 67
	movl	-392(%ebp), %eax
	.loc 2 585 49
	sall	$2, %eax
	.loc 2 585 28
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	.loc 2 586 69
	movl	-392(%ebp), %eax
	.loc 2 586 51
	sall	$2, %eax
	.loc 2 586 30
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -44(%ebp)
	.loc 2 589 6
	cmpl	$0, -36(%ebp)
	je	L157
	.loc 2 589 41 discriminator 1
	cmpl	$0, -40(%ebp)
	je	L157
	.loc 2 589 74 discriminator 2
	cmpl	$0, -44(%ebp)
	jne	L158
L157:
	.loc 2 591 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L188
	.loc 2 591 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$591, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC36, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 592 5 is_stmt 1 discriminator 1
	jmp	L188
L158:
	.loc 2 596 130
	movl	-396(%ebp), %eax
	.loc 2 596 7
	leal	0(,%eax,4), %ecx
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-36(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL21:
	subl	$20, %esp
	.loc 2 596 5
	testl	%eax, %eax
	jne	L160
	.loc 2 598 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L189
	.loc 2 598 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$598, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC37, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 599 5 is_stmt 1 discriminator 1
	jmp	L189
L160:
	.loc 2 604 48
	movl	-392(%ebp), %eax
	.loc 2 603 7
	leal	0(,%eax,4), %ecx
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-40(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL22:
	subl	$20, %esp
	.loc 2 603 5
	testl	%eax, %eax
	jne	L162
	.loc 2 606 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L190
	.loc 2 606 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$606, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC38, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 607 5 is_stmt 1 discriminator 1
	jmp	L190
L162:
	.loc 2 612 51
	movl	-392(%ebp), %eax
	.loc 2 611 7
	leal	(%eax,%eax), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL23:
	subl	$20, %esp
	.loc 2 611 5
	testl	%eax, %eax
	jne	L164
	.loc 2 614 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L191
	.loc 2 614 5 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$614, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC39, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 615 5 is_stmt 1 discriminator 1
	jmp	L191
L164:
LBB7:
	.loc 2 619 17
	movl	$0, -12(%ebp)
	.loc 2 619 3
	jmp	L166
L175:
LBB8:
LBB9:
	.loc 2 623 19
	movl	$0, -16(%ebp)
	.loc 2 623 5
	jmp	L167
L174:
	.loc 2 626 13
	leal	-672(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	.loc 2 625 99
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-40(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %ecx
	.loc 2 625 76
	movl	-20(%ebp), %eax
	addl	%eax, %ecx
	.loc 2 625 103
	movl	-16(%ebp), %eax
	addl	%ecx, %eax
	.loc 2 625 11
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__ReadProcessMemory@20, %eax
	call	*%eax
LVL24:
	subl	$20, %esp
	.loc 2 625 9
	testl	%eax, %eax
	jne	L168
	.loc 2 628 9
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L192
	.loc 2 628 9 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$628, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	jmp	L136
L168:
	.loc 2 636 10 is_stmt 1
	cmpl	$0, -16(%ebp)
	je	L170
	.loc 2 636 38 discriminator 1
	leal	-672(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	.loc 2 636 17 discriminator 1
	testb	%al, %al
	jne	L170
	.loc 2 638 9
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L171
	.loc 2 638 9 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$638, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	leal	-672(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L171:
	.loc 2 639 9 is_stmt 1
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L193
	.loc 2 639 9 is_stmt 0 discriminator 1
	movl	$___func__.1, 12(%esp)
	movl	$639, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 640 9 is_stmt 1 discriminator 1
	jmp	L193
L170:
	.loc 2 623 36 discriminator 2
	addl	$1, -16(%ebp)
L167:
	.loc 2 623 28 discriminator 1
	cmpl	$254, -16(%ebp)
	jbe	L174
	jmp	L173
L193:
	.loc 2 640 9
	nop
L173:
LBE9:
LBE8:
	.loc 2 619 61 discriminator 1
	addl	$1, -12(%ebp)
L166:
	.loc 2 619 44 discriminator 1
	movl	-392(%ebp), %eax
	.loc 2 619 26 discriminator 1
	cmpl	%eax, -12(%ebp)
	jb	L175
LBE7:
	.loc 2 645 6
	cmpl	$0, -36(%ebp)
	je	L176
	.loc 2 646 5
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L176:
	.loc 2 647 6
	cmpl	$0, -40(%ebp)
	je	L177
	.loc 2 648 5
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L177:
	.loc 2 649 6
	cmpl	$0, -44(%ebp)
	je	L178
	.loc 2 650 5
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L178:
	.loc 2 652 10
	movl	$0, %eax
	jmp	L179
L181:
	.loc 2 520 5
	nop
	jmp	L136
L182:
	.loc 2 531 5
	nop
	jmp	L136
L183:
	.loc 2 538 5
	nop
	jmp	L136
L184:
	.loc 2 545 5
	nop
	jmp	L136
L185:
	.loc 2 553 5
	nop
	jmp	L136
L186:
	.loc 2 565 5
	nop
	jmp	L136
L187:
	.loc 2 572 5
	nop
	jmp	L136
L188:
	.loc 2 592 5
	nop
	jmp	L136
L189:
	.loc 2 599 5
	nop
	jmp	L136
L190:
	.loc 2 607 5
	nop
	jmp	L136
L191:
	.loc 2 615 5
	nop
	jmp	L136
L192:
LBB11:
LBB10:
	.loc 2 629 9
	nop
L136:
LBE10:
LBE11:
	.loc 2 655 10
	movl	$-1, %eax
L179:
	.loc 2 656 1 discriminator 2
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE122:
	.section .rdata,"dr"
LC47:
	.ascii "kernel32.dll\0"
LC48:
	.ascii "LoadLibraryA\0"
	.align 4
LC49:
	.ascii "LoadLibraryExA function was not found inside kernel32.dll library\0"
	.align 4
LC50:
	.ascii "Found address of kernel32 LoadLibraryA: 0x%08X\0"
	.align 4
LC51:
	.ascii "Could not allocate foreign process memory\0"
	.align 4
LC52:
	.ascii "No bytes written to address space\0"
	.align 4
LC53:
	.ascii "Remote thread could not be created\0"
LC54:
	.ascii "Wait for remote thread\0"
LC55:
	.ascii "DLL loaded at addr 0x%08X\0"
	.text
	.globl	_proc_info_inject_dll
	.def	_proc_info_inject_dll;	.scl	2;	.type	32;	.endef
_proc_info_inject_dll:
LFB123:
	.loc 2 659 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 2 666 6
	cmpl	$0, 8(%ebp)
	jne	L195
	.loc 2 668 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L196
	.loc 2 668 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$668, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC26, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L196:
	.loc 2 670 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L195:
	.loc 2 673 16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 2 673 6
	testl	%eax, %eax
	jne	L198
	.loc 2 675 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L199
	.loc 2 675 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$675, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC27, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L199:
	.loc 2 677 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L198:
	.loc 2 681 27
	movl	$LC47, (%esp)
	movl	__imp__GetModuleHandleA@4, %eax
	call	*%eax
LVL25:
	subl	$4, %esp
	movl	$LC48, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__GetProcAddress@8, %eax
	call	*%eax
LVL26:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 2 682 5
	cmpl	$0, -12(%ebp)
	jne	L200
	.loc 2 684 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L201
	.loc 2 684 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$684, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC49, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L201:
	.loc 2 685 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L200:
	.loc 2 689 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L202
	.loc 2 689 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$689, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC50, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L202:
	.loc 2 693 74 is_stmt 1
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	.loc 2 693 32
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	movl	$4, 16(%esp)
	movl	$12288, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__VirtualAllocEx@20, %eax
	call	*%eax
LVL27:
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	.loc 2 694 5
	cmpl	$0, -16(%ebp)
	jne	L203
	.loc 2 696 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L204
	.loc 2 696 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$696, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC51, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L204:
	.loc 2 697 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L203:
	.loc 2 701 79
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	.loc 2 701 7
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__WriteProcessMemory@20, %eax
	call	*%eax
LVL28:
	subl	$20, %esp
	movl	%eax, -20(%ebp)
	.loc 2 702 5
	cmpl	$0, -20(%ebp)
	jne	L205
	.loc 2 704 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L206
	.loc 2 704 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$704, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC52, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L206:
	.loc 2 705 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L205:
	.loc 2 709 9
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CreateRemoteThread@28, %eax
	call	*%eax
LVL29:
	subl	$28, %esp
	movl	%eax, -24(%ebp)
	.loc 2 710 5
	cmpl	$0, -24(%ebp)
	jne	L207
	.loc 2 712 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L208
	.loc 2 712 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$712, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC53, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L208:
	.loc 2 713 12 is_stmt 1
	movl	$0, %eax
	jmp	L211
L207:
	.loc 2 716 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L209
	.loc 2 716 3 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$716, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	$LC54, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L209:
	.loc 2 717 3 is_stmt 1
	movl	$-1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__WaitForSingleObject@8, %eax
	call	*%eax
LVL30:
	subl	$8, %esp
	.loc 2 720 3
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__GetExitCodeThread@8, %eax
	call	*%eax
LVL31:
	subl	$8, %esp
	.loc 2 721 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L210
	.loc 2 721 3 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$721, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC55, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
L210:
	.loc 2 724 10 is_stmt 1
	movl	-28(%ebp), %eax
L211:
	.loc 2 725 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE123:
	.section .rdata,"dr"
	.align 4
___func__.9:
	.ascii "proc_info_init\0"
	.align 4
___func__.8:
	.ascii "proc_info_destroy\0"
	.align 4
___func__.7:
	.ascii "proc_info_get_window_handle\0"
	.align 32
___func__.6:
	.ascii "proc_info_get_process_id_from_exe\0"
	.align 4
___func__.5:
	.ascii "proc_info_get_process_id\0"
	.align 4
___func__.4:
	.ascii "proc_info_get_process_handle\0"
	.align 4
___func__.3:
	.ascii "proc_info_close_process_handle\0"
	.align 32
___func__.2:
	.ascii "proc_info_get_remote_function_addr\0"
	.align 32
___func__.1:
	.ascii "proc_info_list_remote_functions\0"
	.align 4
___func__.0:
	.ascii "proc_info_inject_dll\0"
	.text
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/corecrt.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 7 "C:/msys64/mingw32/i686-w64-mingw32/include/basetsd.h"
	.file 8 "C:/msys64/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 9 "C:/msys64/mingw32/i686-w64-mingw32/include/windef.h"
	.file 10 "C:/msys64/mingw32/i686-w64-mingw32/include/minwinbase.h"
	.file 11 "inc/injector/process_info.h"
	.file 12 "C:/msys64/mingw32/i686-w64-mingw32/include/psapi.h"
	.file 13 "C:/msys64/mingw32/i686-w64-mingw32/include/tlhelp32.h"
	.file 14 "C:/msys64/mingw32/i686-w64-mingw32/include/processthreadsapi.h"
	.file 15 "C:/msys64/mingw32/i686-w64-mingw32/include/synchapi.h"
	.file 16 "C:/msys64/mingw32/i686-w64-mingw32/include/memoryapi.h"
	.file 17 "C:/msys64/mingw32/i686-w64-mingw32/include/libloaderapi.h"
	.file 18 "C:/msys64/mingw32/i686-w64-mingw32/include/winuser.h"
	.file 19 "C:/msys64/mingw32/i686-w64-mingw32/include/string.h"
	.file 20 "C:/msys64/mingw32/i686-w64-mingw32/include/handleapi.h"
	.file 21 "C:/msys64/mingw32/i686-w64-mingw32/include/stdlib.h"
	.file 22 "inc/debug.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x1caa
	.word	0x5
	.byte	0x1
	.byte	0x4
	.secrel32	Ldebug_abbrev0
	.uleb128 0x23
	.ascii "GNU C17 11.2.0 -mtune=generic -march=i686 -g\0"
	.byte	0x1d
	.secrel32	LASF0
	.secrel32	LASF1
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x5
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x66
	.uleb128 0x24
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x7e
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xc
	.long	0x7e
	.uleb128 0x5
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x5
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x25
	.byte	0x16
	.long	0xaa
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x7
	.long	0x7e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x8
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x5
	.ascii "int32_t\0"
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.long	0xba
	.uleb128 0x5
	.ascii "uint32_t\0"
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0xaa
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x11
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x222
	.uleb128 0x6
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0xf4
	.byte	0
	.uleb128 0x6
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0xba
	.byte	0x4
	.uleb128 0x6
	.ascii "_base\0"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.long	0xf4
	.byte	0x8
	.uleb128 0x6
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0xba
	.byte	0xc
	.uleb128 0x6
	.ascii "_file\0"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.long	0xba
	.byte	0x10
	.uleb128 0x6
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.long	0xba
	.byte	0x14
	.uleb128 0x6
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.long	0xba
	.byte	0x18
	.uleb128 0x6
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.long	0xf4
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x192
	.uleb128 0x25
	.byte	0x4
	.uleb128 0x5
	.ascii "WINBOOL\0"
	.byte	0x6
	.byte	0x7f
	.byte	0xd
	.long	0xba
	.uleb128 0x5
	.ascii "BYTE\0"
	.byte	0x6
	.byte	0x8b
	.byte	0x19
	.long	0x10e
	.uleb128 0x5
	.ascii "WORD\0"
	.byte	0x6
	.byte	0x8c
	.byte	0x1a
	.long	0xc1
	.uleb128 0x5
	.ascii "DWORD\0"
	.byte	0x6
	.byte	0x8d
	.byte	0x1d
	.long	0xf9
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x7
	.long	0x25b
	.uleb128 0x5
	.ascii "LPDWORD\0"
	.byte	0x6
	.byte	0x98
	.byte	0x12
	.long	0x272
	.uleb128 0x5
	.ascii "LPVOID\0"
	.byte	0x6
	.byte	0x99
	.byte	0x11
	.long	0x22f
	.uleb128 0x5
	.ascii "LPCVOID\0"
	.byte	0x6
	.byte	0x9c
	.byte	0x17
	.long	0x2a6
	.uleb128 0x7
	.long	0x2ab
	.uleb128 0x26
	.uleb128 0x5
	.ascii "UINT_PTR\0"
	.byte	0x7
	.byte	0x35
	.byte	0x18
	.long	0xaa
	.uleb128 0x5
	.ascii "LONG_PTR\0"
	.byte	0x7
	.byte	0x36
	.byte	0x10
	.long	0xd7
	.uleb128 0x5
	.ascii "ULONG_PTR\0"
	.byte	0x7
	.byte	0x37
	.byte	0x19
	.long	0xf9
	.uleb128 0x5
	.ascii "SIZE_T\0"
	.byte	0x7
	.byte	0x93
	.byte	0x27
	.long	0x2ce
	.uleb128 0xf
	.ascii "CHAR\0"
	.word	0x11d
	.byte	0x10
	.long	0x7e
	.uleb128 0xc
	.long	0x2ef
	.uleb128 0xf
	.ascii "LONG\0"
	.word	0x11f
	.byte	0x14
	.long	0xd7
	.uleb128 0x7
	.long	0x2fc
	.uleb128 0xf
	.ascii "LPCSTR\0"
	.word	0x153
	.byte	0x17
	.long	0x30e
	.uleb128 0xf
	.ascii "HANDLE\0"
	.word	0x195
	.byte	0x11
	.long	0x22f
	.uleb128 0x12
	.ascii "_IMAGE_DOS_HEADER\0"
	.byte	0x40
	.word	0x1875
	.long	0x485
	.uleb128 0x1
	.ascii "e_magic\0"
	.word	0x1876
	.byte	0xc
	.long	0x24e
	.byte	0
	.uleb128 0x1
	.ascii "e_cblp\0"
	.word	0x1877
	.byte	0xc
	.long	0x24e
	.byte	0x2
	.uleb128 0x1
	.ascii "e_cp\0"
	.word	0x1878
	.byte	0xc
	.long	0x24e
	.byte	0x4
	.uleb128 0x1
	.ascii "e_crlc\0"
	.word	0x1879
	.byte	0xc
	.long	0x24e
	.byte	0x6
	.uleb128 0x1
	.ascii "e_cparhdr\0"
	.word	0x187a
	.byte	0xc
	.long	0x24e
	.byte	0x8
	.uleb128 0x1
	.ascii "e_minalloc\0"
	.word	0x187b
	.byte	0xc
	.long	0x24e
	.byte	0xa
	.uleb128 0x1
	.ascii "e_maxalloc\0"
	.word	0x187c
	.byte	0xc
	.long	0x24e
	.byte	0xc
	.uleb128 0x1
	.ascii "e_ss\0"
	.word	0x187d
	.byte	0xc
	.long	0x24e
	.byte	0xe
	.uleb128 0x1
	.ascii "e_sp\0"
	.word	0x187e
	.byte	0xc
	.long	0x24e
	.byte	0x10
	.uleb128 0x1
	.ascii "e_csum\0"
	.word	0x187f
	.byte	0xc
	.long	0x24e
	.byte	0x12
	.uleb128 0x1
	.ascii "e_ip\0"
	.word	0x1880
	.byte	0xc
	.long	0x24e
	.byte	0x14
	.uleb128 0x1
	.ascii "e_cs\0"
	.word	0x1881
	.byte	0xc
	.long	0x24e
	.byte	0x16
	.uleb128 0x1
	.ascii "e_lfarlc\0"
	.word	0x1882
	.byte	0xc
	.long	0x24e
	.byte	0x18
	.uleb128 0x1
	.ascii "e_ovno\0"
	.word	0x1883
	.byte	0xc
	.long	0x24e
	.byte	0x1a
	.uleb128 0x1
	.ascii "e_res\0"
	.word	0x1884
	.byte	0xc
	.long	0x485
	.byte	0x1c
	.uleb128 0x1
	.ascii "e_oemid\0"
	.word	0x1885
	.byte	0xc
	.long	0x24e
	.byte	0x24
	.uleb128 0x1
	.ascii "e_oeminfo\0"
	.word	0x1886
	.byte	0xc
	.long	0x24e
	.byte	0x26
	.uleb128 0x1
	.ascii "e_res2\0"
	.word	0x1887
	.byte	0xc
	.long	0x495
	.byte	0x28
	.uleb128 0x1
	.ascii "e_lfanew\0"
	.word	0x1888
	.byte	0xc
	.long	0x301
	.byte	0x3c
	.byte	0
	.uleb128 0x9
	.long	0x24e
	.long	0x495
	.uleb128 0xa
	.long	0xaa
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x24e
	.long	0x4a5
	.uleb128 0xa
	.long	0xaa
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.ascii "IMAGE_DOS_HEADER\0"
	.word	0x1889
	.byte	0x7
	.long	0x331
	.uleb128 0x12
	.ascii "_IMAGE_FILE_HEADER\0"
	.byte	0x14
	.word	0x18e4
	.long	0x574
	.uleb128 0x1
	.ascii "Machine\0"
	.word	0x18e5
	.byte	0xc
	.long	0x24e
	.byte	0
	.uleb128 0x1
	.ascii "NumberOfSections\0"
	.word	0x18e6
	.byte	0xc
	.long	0x24e
	.byte	0x2
	.uleb128 0x13
	.secrel32	LASF2
	.word	0x18e7
	.byte	0xd
	.long	0x25b
	.byte	0x4
	.uleb128 0x1
	.ascii "PointerToSymbolTable\0"
	.word	0x18e8
	.byte	0xd
	.long	0x25b
	.byte	0x8
	.uleb128 0x1
	.ascii "NumberOfSymbols\0"
	.word	0x18e9
	.byte	0xd
	.long	0x25b
	.byte	0xc
	.uleb128 0x1
	.ascii "SizeOfOptionalHeader\0"
	.word	0x18ea
	.byte	0xc
	.long	0x24e
	.byte	0x10
	.uleb128 0x13
	.secrel32	LASF3
	.word	0x18eb
	.byte	0xc
	.long	0x24e
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.ascii "IMAGE_FILE_HEADER\0"
	.word	0x18ec
	.byte	0x7
	.long	0x4be
	.uleb128 0x12
	.ascii "_IMAGE_DATA_DIRECTORY\0"
	.byte	0x8
	.word	0x1921
	.long	0x5d3
	.uleb128 0x1
	.ascii "VirtualAddress\0"
	.word	0x1922
	.byte	0xd
	.long	0x25b
	.byte	0
	.uleb128 0x1
	.ascii "Size\0"
	.word	0x1923
	.byte	0xd
	.long	0x25b
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.ascii "IMAGE_DATA_DIRECTORY\0"
	.word	0x1924
	.byte	0x7
	.long	0x58e
	.uleb128 0x12
	.ascii "_IMAGE_OPTIONAL_HEADER\0"
	.byte	0xe0
	.word	0x1928
	.long	0x927
	.uleb128 0x1
	.ascii "Magic\0"
	.word	0x192a
	.byte	0xc
	.long	0x24e
	.byte	0
	.uleb128 0x1
	.ascii "MajorLinkerVersion\0"
	.word	0x192b
	.byte	0xc
	.long	0x241
	.byte	0x2
	.uleb128 0x1
	.ascii "MinorLinkerVersion\0"
	.word	0x192c
	.byte	0xc
	.long	0x241
	.byte	0x3
	.uleb128 0x1
	.ascii "SizeOfCode\0"
	.word	0x192d
	.byte	0xd
	.long	0x25b
	.byte	0x4
	.uleb128 0x1
	.ascii "SizeOfInitializedData\0"
	.word	0x192e
	.byte	0xd
	.long	0x25b
	.byte	0x8
	.uleb128 0x1
	.ascii "SizeOfUninitializedData\0"
	.word	0x192f
	.byte	0xd
	.long	0x25b
	.byte	0xc
	.uleb128 0x1
	.ascii "AddressOfEntryPoint\0"
	.word	0x1930
	.byte	0xd
	.long	0x25b
	.byte	0x10
	.uleb128 0x1
	.ascii "BaseOfCode\0"
	.word	0x1931
	.byte	0xd
	.long	0x25b
	.byte	0x14
	.uleb128 0x1
	.ascii "BaseOfData\0"
	.word	0x1932
	.byte	0xd
	.long	0x25b
	.byte	0x18
	.uleb128 0x1
	.ascii "ImageBase\0"
	.word	0x1933
	.byte	0xd
	.long	0x25b
	.byte	0x1c
	.uleb128 0x1
	.ascii "SectionAlignment\0"
	.word	0x1934
	.byte	0xd
	.long	0x25b
	.byte	0x20
	.uleb128 0x1
	.ascii "FileAlignment\0"
	.word	0x1935
	.byte	0xd
	.long	0x25b
	.byte	0x24
	.uleb128 0x1
	.ascii "MajorOperatingSystemVersion\0"
	.word	0x1936
	.byte	0xc
	.long	0x24e
	.byte	0x28
	.uleb128 0x1
	.ascii "MinorOperatingSystemVersion\0"
	.word	0x1937
	.byte	0xc
	.long	0x24e
	.byte	0x2a
	.uleb128 0x1
	.ascii "MajorImageVersion\0"
	.word	0x1938
	.byte	0xc
	.long	0x24e
	.byte	0x2c
	.uleb128 0x1
	.ascii "MinorImageVersion\0"
	.word	0x1939
	.byte	0xc
	.long	0x24e
	.byte	0x2e
	.uleb128 0x1
	.ascii "MajorSubsystemVersion\0"
	.word	0x193a
	.byte	0xc
	.long	0x24e
	.byte	0x30
	.uleb128 0x1
	.ascii "MinorSubsystemVersion\0"
	.word	0x193b
	.byte	0xc
	.long	0x24e
	.byte	0x32
	.uleb128 0x1
	.ascii "Win32VersionValue\0"
	.word	0x193c
	.byte	0xd
	.long	0x25b
	.byte	0x34
	.uleb128 0x13
	.secrel32	LASF4
	.word	0x193d
	.byte	0xd
	.long	0x25b
	.byte	0x38
	.uleb128 0x1
	.ascii "SizeOfHeaders\0"
	.word	0x193e
	.byte	0xd
	.long	0x25b
	.byte	0x3c
	.uleb128 0x1
	.ascii "CheckSum\0"
	.word	0x193f
	.byte	0xd
	.long	0x25b
	.byte	0x40
	.uleb128 0x1
	.ascii "Subsystem\0"
	.word	0x1940
	.byte	0xc
	.long	0x24e
	.byte	0x44
	.uleb128 0x1
	.ascii "DllCharacteristics\0"
	.word	0x1941
	.byte	0xc
	.long	0x24e
	.byte	0x46
	.uleb128 0x1
	.ascii "SizeOfStackReserve\0"
	.word	0x1942
	.byte	0xd
	.long	0x25b
	.byte	0x48
	.uleb128 0x1
	.ascii "SizeOfStackCommit\0"
	.word	0x1943
	.byte	0xd
	.long	0x25b
	.byte	0x4c
	.uleb128 0x1
	.ascii "SizeOfHeapReserve\0"
	.word	0x1944
	.byte	0xd
	.long	0x25b
	.byte	0x50
	.uleb128 0x1
	.ascii "SizeOfHeapCommit\0"
	.word	0x1945
	.byte	0xd
	.long	0x25b
	.byte	0x54
	.uleb128 0x1
	.ascii "LoaderFlags\0"
	.word	0x1946
	.byte	0xd
	.long	0x25b
	.byte	0x58
	.uleb128 0x1
	.ascii "NumberOfRvaAndSizes\0"
	.word	0x1947
	.byte	0xd
	.long	0x25b
	.byte	0x5c
	.uleb128 0x1
	.ascii "DataDirectory\0"
	.word	0x1948
	.byte	0x1c
	.long	0x927
	.byte	0x60
	.byte	0
	.uleb128 0x9
	.long	0x5d3
	.long	0x937
	.uleb128 0xa
	.long	0xaa
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.ascii "IMAGE_OPTIONAL_HEADER32\0"
	.word	0x1949
	.byte	0x7
	.long	0x5f0
	.uleb128 0x12
	.ascii "_IMAGE_EXPORT_DIRECTORY\0"
	.byte	0x28
	.word	0x1ca3
	.long	0xa5f
	.uleb128 0x13
	.secrel32	LASF3
	.word	0x1ca4
	.byte	0xd
	.long	0x25b
	.byte	0
	.uleb128 0x13
	.secrel32	LASF2
	.word	0x1ca5
	.byte	0xd
	.long	0x25b
	.byte	0x4
	.uleb128 0x1
	.ascii "MajorVersion\0"
	.word	0x1ca6
	.byte	0xc
	.long	0x24e
	.byte	0x8
	.uleb128 0x1
	.ascii "MinorVersion\0"
	.word	0x1ca7
	.byte	0xc
	.long	0x24e
	.byte	0xa
	.uleb128 0x1
	.ascii "Name\0"
	.word	0x1ca8
	.byte	0xd
	.long	0x25b
	.byte	0xc
	.uleb128 0x1
	.ascii "Base\0"
	.word	0x1ca9
	.byte	0xd
	.long	0x25b
	.byte	0x10
	.uleb128 0x1
	.ascii "NumberOfFunctions\0"
	.word	0x1caa
	.byte	0xd
	.long	0x25b
	.byte	0x14
	.uleb128 0x1
	.ascii "NumberOfNames\0"
	.word	0x1cab
	.byte	0xd
	.long	0x25b
	.byte	0x18
	.uleb128 0x1
	.ascii "AddressOfFunctions\0"
	.word	0x1cac
	.byte	0xd
	.long	0x25b
	.byte	0x1c
	.uleb128 0x1
	.ascii "AddressOfNames\0"
	.word	0x1cad
	.byte	0xd
	.long	0x25b
	.byte	0x20
	.uleb128 0x1
	.ascii "AddressOfNameOrdinals\0"
	.word	0x1cae
	.byte	0xd
	.long	0x25b
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.ascii "IMAGE_EXPORT_DIRECTORY\0"
	.word	0x1caf
	.byte	0x7
	.long	0x957
	.uleb128 0x5
	.ascii "FARPROC\0"
	.byte	0x6
	.byte	0xc8
	.byte	0x18
	.long	0xa8e
	.uleb128 0x7
	.long	0xa93
	.uleb128 0x27
	.long	0xba
	.long	0xa9e
	.uleb128 0x1c
	.byte	0
	.uleb128 0x11
	.ascii "HINSTANCE__\0"
	.byte	0x4
	.byte	0x6
	.byte	0xd0
	.byte	0x3
	.long	0xac4
	.uleb128 0x6
	.ascii "unused\0"
	.byte	0x6
	.byte	0xd0
	.byte	0x3
	.long	0xba
	.byte	0
	.byte	0
	.uleb128 0x5
	.ascii "HINSTANCE\0"
	.byte	0x6
	.byte	0xd0
	.byte	0x3
	.long	0xad6
	.uleb128 0x7
	.long	0xa9e
	.uleb128 0x5
	.ascii "HMODULE\0"
	.byte	0x6
	.byte	0xd6
	.byte	0x15
	.long	0xac4
	.uleb128 0x11
	.ascii "HWND__\0"
	.byte	0x4
	.byte	0x9
	.byte	0x1a
	.byte	0x1
	.long	0xb0c
	.uleb128 0x6
	.ascii "unused\0"
	.byte	0x9
	.byte	0x1a
	.byte	0x1
	.long	0xba
	.byte	0
	.byte	0
	.uleb128 0x5
	.ascii "HWND\0"
	.byte	0x9
	.byte	0x1a
	.byte	0x1
	.long	0xb19
	.uleb128 0x7
	.long	0xaeb
	.uleb128 0x11
	.ascii "_SECURITY_ATTRIBUTES\0"
	.byte	0xc
	.byte	0xa
	.byte	0xd
	.byte	0x12
	.long	0xb84
	.uleb128 0x6
	.ascii "nLength\0"
	.byte	0xa
	.byte	0xe
	.byte	0xb
	.long	0x25b
	.byte	0
	.uleb128 0x6
	.ascii "lpSecurityDescriptor\0"
	.byte	0xa
	.byte	0xf
	.byte	0xc
	.long	0x287
	.byte	0x4
	.uleb128 0x6
	.ascii "bInheritHandle\0"
	.byte	0xa
	.byte	0x10
	.byte	0xd
	.long	0x231
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0xb1e
	.uleb128 0x5
	.ascii "LPSECURITY_ATTRIBUTES\0"
	.byte	0xa
	.byte	0x11
	.byte	0x32
	.long	0xb84
	.uleb128 0x9
	.long	0x2ef
	.long	0xbb8
	.uleb128 0x28
	.long	0xaa
	.word	0x103
	.byte	0
	.uleb128 0x5
	.ascii "PTHREAD_START_ROUTINE\0"
	.byte	0xa
	.byte	0xea
	.byte	0x1a
	.long	0xbd6
	.uleb128 0x7
	.long	0xbdb
	.uleb128 0x29
	.long	0x25b
	.long	0xbea
	.uleb128 0x2
	.long	0x287
	.byte	0
	.uleb128 0x5
	.ascii "LPTHREAD_START_ROUTINE\0"
	.byte	0xa
	.byte	0xeb
	.byte	0x21
	.long	0xbb8
	.uleb128 0x7
	.long	0x2e0
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2a
	.byte	0x7
	.byte	0x4
	.long	0xaa
	.byte	0x16
	.byte	0x11
	.byte	0x1
	.long	0xc70
	.uleb128 0x19
	.ascii "DEBUG_LOG_NONE\0"
	.byte	0
	.uleb128 0x19
	.ascii "DEBUG_LOG_VERBOSE\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "DEBUG_LOG_ERROR\0"
	.byte	0x2
	.uleb128 0x19
	.ascii "DEBUG_LOG_COUNT\0"
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.ascii "debug_level\0"
	.byte	0x16
	.byte	0x17
	.byte	0xc
	.long	0xba
	.uleb128 0x2c
	.byte	0xc
	.byte	0xb
	.byte	0x8
	.byte	0x9
	.long	0xcbe
	.uleb128 0x6
	.ascii "hWindow\0"
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0xb0c
	.byte	0
	.uleb128 0x6
	.ascii "hProcess\0"
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.long	0x322
	.byte	0x4
	.uleb128 0x1d
	.secrel32	LASF5
	.byte	0xb
	.byte	0xc
	.byte	0x9
	.long	0x25b
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "proc_info_t\0"
	.byte	0xb
	.byte	0xd
	.byte	0x3
	.long	0xc84
	.uleb128 0x11
	.ascii "_MODULEINFO\0"
	.byte	0xc
	.byte	0xc
	.byte	0x52
	.byte	0x12
	.long	0xd1e
	.uleb128 0x6
	.ascii "lpBaseOfDll\0"
	.byte	0xc
	.byte	0x53
	.byte	0xc
	.long	0x287
	.byte	0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.long	0x25b
	.byte	0x4
	.uleb128 0x6
	.ascii "EntryPoint\0"
	.byte	0xc
	.byte	0x55
	.byte	0xc
	.long	0x287
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "MODULEINFO\0"
	.byte	0xc
	.byte	0x56
	.byte	0x5
	.long	0xcd2
	.uleb128 0x5
	.ascii "LPMODULEINFO\0"
	.byte	0xc
	.byte	0x56
	.byte	0x11
	.long	0xd46
	.uleb128 0x7
	.long	0xcd2
	.uleb128 0x2d
	.ascii "tagPROCESSENTRY32\0"
	.word	0x128
	.byte	0xd
	.byte	0x50
	.byte	0x12
	.long	0xe3f
	.uleb128 0x6
	.ascii "dwSize\0"
	.byte	0xd
	.byte	0x51
	.byte	0xb
	.long	0x25b
	.byte	0
	.uleb128 0x6
	.ascii "cntUsage\0"
	.byte	0xd
	.byte	0x52
	.byte	0xb
	.long	0x25b
	.byte	0x4
	.uleb128 0x6
	.ascii "th32ProcessID\0"
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.long	0x25b
	.byte	0x8
	.uleb128 0x6
	.ascii "th32DefaultHeapID\0"
	.byte	0xd
	.byte	0x54
	.byte	0xf
	.long	0x2ce
	.byte	0xc
	.uleb128 0x6
	.ascii "th32ModuleID\0"
	.byte	0xd
	.byte	0x55
	.byte	0xb
	.long	0x25b
	.byte	0x10
	.uleb128 0x6
	.ascii "cntThreads\0"
	.byte	0xd
	.byte	0x56
	.byte	0xb
	.long	0x25b
	.byte	0x14
	.uleb128 0x6
	.ascii "th32ParentProcessID\0"
	.byte	0xd
	.byte	0x57
	.byte	0xb
	.long	0x25b
	.byte	0x18
	.uleb128 0x6
	.ascii "pcPriClassBase\0"
	.byte	0xd
	.byte	0x58
	.byte	0xa
	.long	0x301
	.byte	0x1c
	.uleb128 0x6
	.ascii "dwFlags\0"
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.long	0x25b
	.byte	0x20
	.uleb128 0x6
	.ascii "szExeFile\0"
	.byte	0xd
	.byte	0x5a
	.byte	0xa
	.long	0xba7
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.ascii "PROCESSENTRY32\0"
	.byte	0xd
	.byte	0x5b
	.byte	0x5
	.long	0xd4b
	.uleb128 0x7
	.long	0xe3f
	.uleb128 0x5
	.ascii "LPPROCESSENTRY32\0"
	.byte	0xd
	.byte	0x5d
	.byte	0x1b
	.long	0xe56
	.uleb128 0x9
	.long	0x7e
	.long	0xe84
	.uleb128 0xa
	.long	0xaa
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.ascii "GetExitCodeThread\0"
	.byte	0xe
	.word	0x11b
	.byte	0x1d
	.ascii "GetExitCodeThread@8\0"
	.long	0x231
	.long	0xec2
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0x277
	.byte	0
	.uleb128 0xb
	.ascii "WaitForSingleObject\0"
	.byte	0xf
	.byte	0x73
	.byte	0x1b
	.ascii "WaitForSingleObject@8\0"
	.long	0x25b
	.long	0xf03
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0x25b
	.byte	0
	.uleb128 0xb
	.ascii "CreateRemoteThread\0"
	.byte	0xe
	.byte	0xc0
	.byte	0x1c
	.ascii "CreateRemoteThread@28\0"
	.long	0x322
	.long	0xf5c
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0xb89
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0xbea
	.uleb128 0x2
	.long	0x287
	.uleb128 0x2
	.long	0x25b
	.uleb128 0x2
	.long	0x277
	.byte	0
	.uleb128 0xb
	.ascii "WriteProcessMemory\0"
	.byte	0x10
	.byte	0x56
	.byte	0x1d
	.ascii "WriteProcessMemory@20\0"
	.long	0x231
	.long	0xfab
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0x287
	.uleb128 0x2
	.long	0x296
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0xc09
	.byte	0
	.uleb128 0xb
	.ascii "VirtualAllocEx\0"
	.byte	0x10
	.byte	0x52
	.byte	0x1c
	.ascii "VirtualAllocEx@20\0"
	.long	0x287
	.long	0xff2
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0x287
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x25b
	.uleb128 0x2
	.long	0x25b
	.byte	0
	.uleb128 0x1a
	.ascii "strlen\0"
	.byte	0x13
	.byte	0x40
	.byte	0x12
	.long	0x9b
	.long	0x100b
	.uleb128 0x2
	.long	0x100b
	.byte	0
	.uleb128 0x7
	.long	0x86
	.uleb128 0x1e
	.long	0x100b
	.uleb128 0xb
	.ascii "GetProcAddress\0"
	.byte	0x11
	.byte	0x97
	.byte	0x1d
	.ascii "GetProcAddress@8\0"
	.long	0xa7e
	.long	0x104c
	.uleb128 0x2
	.long	0xadb
	.uleb128 0x2
	.long	0x313
	.byte	0
	.uleb128 0xb
	.ascii "GetModuleHandleA\0"
	.byte	0x11
	.byte	0x8b
	.byte	0x1b
	.ascii "GetModuleHandleA@4\0"
	.long	0xadb
	.long	0x1082
	.uleb128 0x2
	.long	0x313
	.byte	0
	.uleb128 0xb
	.ascii "ReadProcessMemory\0"
	.byte	0x10
	.byte	0x55
	.byte	0x1d
	.ascii "ReadProcessMemory@20\0"
	.long	0x231
	.long	0x10cf
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0x296
	.uleb128 0x2
	.long	0x287
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0xc09
	.byte	0
	.uleb128 0xb
	.ascii "K32GetModuleInformation\0"
	.byte	0xc
	.byte	0x58
	.byte	0x12
	.ascii "K32GetModuleInformation@16\0"
	.long	0x231
	.long	0x1123
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0xadb
	.uleb128 0x2
	.long	0xd31
	.uleb128 0x2
	.long	0x25b
	.byte	0
	.uleb128 0xb
	.ascii "OpenProcess\0"
	.byte	0xe
	.byte	0x18
	.byte	0x1c
	.ascii "OpenProcess@12\0"
	.long	0x322
	.long	0x115a
	.uleb128 0x2
	.long	0x25b
	.uleb128 0x2
	.long	0x231
	.uleb128 0x2
	.long	0x25b
	.byte	0
	.uleb128 0x1b
	.ascii "GetWindowThreadProcessId\0"
	.byte	0x12
	.word	0xf79
	.byte	0x1b
	.ascii "GetWindowThreadProcessId@8\0"
	.long	0x25b
	.long	0x11a6
	.uleb128 0x2
	.long	0xb0c
	.uleb128 0x2
	.long	0x277
	.byte	0
	.uleb128 0xb
	.ascii "Process32Next\0"
	.byte	0xd
	.byte	0x60
	.byte	0x12
	.ascii "Process32Next@8\0"
	.long	0x231
	.long	0x11db
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0xe5b
	.byte	0
	.uleb128 0x1a
	.ascii "strcmp\0"
	.byte	0x13
	.byte	0x3f
	.byte	0xf
	.long	0xba
	.long	0x11f9
	.uleb128 0x2
	.long	0x100b
	.uleb128 0x2
	.long	0x100b
	.byte	0
	.uleb128 0xb
	.ascii "CloseHandle\0"
	.byte	0x14
	.byte	0x13
	.byte	0x1d
	.ascii "CloseHandle@4\0"
	.long	0x231
	.long	0x1225
	.uleb128 0x2
	.long	0x322
	.byte	0
	.uleb128 0xb
	.ascii "Process32First\0"
	.byte	0xd
	.byte	0x5f
	.byte	0x12
	.ascii "Process32First@8\0"
	.long	0x231
	.long	0x125c
	.uleb128 0x2
	.long	0x322
	.uleb128 0x2
	.long	0xe5b
	.byte	0
	.uleb128 0xb
	.ascii "CreateToolhelp32Snapshot\0"
	.byte	0xd
	.byte	0xf
	.byte	0x11
	.ascii "CreateToolhelp32Snapshot@8\0"
	.long	0x322
	.long	0x12a7
	.uleb128 0x2
	.long	0x25b
	.uleb128 0x2
	.long	0x25b
	.byte	0
	.uleb128 0x1b
	.ascii "FindWindowA\0"
	.byte	0x12
	.word	0xf65
	.byte	0x1a
	.ascii "FindWindowA@8\0"
	.long	0xb0c
	.long	0x12d9
	.uleb128 0x2
	.long	0x313
	.uleb128 0x2
	.long	0x313
	.byte	0
	.uleb128 0x1a
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0xba
	.long	0x1306
	.uleb128 0x2
	.long	0x130b
	.uleb128 0x2
	.long	0x1010
	.uleb128 0x2
	.long	0x8b
	.byte	0
	.uleb128 0x7
	.long	0x222
	.uleb128 0x1e
	.long	0x1306
	.uleb128 0x1a
	.ascii "__acrt_iob_func\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.long	0x1306
	.long	0x1332
	.uleb128 0x2
	.long	0xaa
	.byte	0
	.uleb128 0x2e
	.ascii "free\0"
	.byte	0x15
	.word	0x218
	.byte	0x10
	.long	0x1346
	.uleb128 0x2
	.long	0x22f
	.byte	0
	.uleb128 0x2f
	.ascii "malloc\0"
	.byte	0x15
	.word	0x219
	.byte	0x11
	.long	0x22f
	.long	0x1360
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x14
	.ascii "proc_info_inject_dll\0"
	.word	0x292
	.byte	0x8
	.long	0x322
	.long	LFB123
	.long	LFE123-LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x1468
	.uleb128 0x15
	.secrel32	LASF6
	.word	0x292
	.byte	0x2a
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "pszDllPath\0"
	.byte	0x2
	.word	0x292
	.byte	0x3b
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.ascii "hDll\0"
	.byte	0x2
	.word	0x294
	.byte	0xa
	.long	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.ascii "lpAllocatedDllPath\0"
	.byte	0x2
	.word	0x295
	.byte	0xa
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii "ret\0"
	.byte	0x2
	.word	0x296
	.byte	0xa
	.long	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.ascii "n\0"
	.byte	0x2
	.word	0x297
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.ascii "lpLoadLibAddr\0"
	.byte	0x2
	.word	0x298
	.byte	0xa
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x147d
	.uleb128 0x5
	.byte	0x3
	.long	___func__.0
	.uleb128 0x3
	.long	LVL25
	.long	0x104c
	.uleb128 0x3
	.long	LVL26
	.long	0x1015
	.uleb128 0x3
	.long	LVL27
	.long	0xfab
	.uleb128 0x3
	.long	LVL28
	.long	0xf5c
	.uleb128 0x3
	.long	LVL29
	.long	0xf03
	.uleb128 0x3
	.long	LVL30
	.long	0xec2
	.uleb128 0x3
	.long	LVL31
	.long	0xe84
	.byte	0
	.uleb128 0x7
	.long	0xcbe
	.uleb128 0x9
	.long	0x86
	.long	0x147d
	.uleb128 0xa
	.long	0xaa
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x146d
	.uleb128 0x14
	.ascii "proc_info_list_remote_functions\0"
	.word	0x1e8
	.byte	0x9
	.long	0x157
	.long	LFB122
	.long	LFE122-LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x166b
	.uleb128 0x15
	.secrel32	LASF6
	.word	0x1e8
	.byte	0x36
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "hModule\0"
	.byte	0x2
	.word	0x1e8
	.byte	0x49
	.long	0xadb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.secrel32	LASF7
	.word	0x1ea
	.byte	0xe
	.long	0xd1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.secrel32	LASF8
	.word	0x1eb
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.secrel32	LASF9
	.word	0x1ec
	.byte	0x14
	.long	0x4a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.secrel32	LASF10
	.word	0x1ed
	.byte	0x9
	.long	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.secrel32	LASF11
	.word	0x1ee
	.byte	0x15
	.long	0x574
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x4
	.secrel32	LASF12
	.word	0x1ef
	.byte	0x1b
	.long	0x937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x4
	.secrel32	LASF13
	.word	0x1f0
	.byte	0x18
	.long	0x5d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x4
	.secrel32	LASF14
	.word	0x1f1
	.byte	0x1a
	.long	0xa5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x4
	.secrel32	LASF15
	.word	0x1f2
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.secrel32	LASF16
	.word	0x1f3
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.secrel32	LASF17
	.word	0x1f4
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.secrel32	LASF18
	.word	0x1f5
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.secrel32	LASF19
	.word	0x1f6
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.secrel32	LASF20
	.word	0x1f7
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x167b
	.uleb128 0x5
	.byte	0x3
	.long	___func__.1
	.uleb128 0x1f
	.ascii "exit_fail\0"
	.word	0x28e
	.long	L136
	.uleb128 0x20
	.secrel32	LLRL2
	.long	0x1622
	.uleb128 0xd
	.ascii "i\0"
	.byte	0x2
	.word	0x26b
	.byte	0x11
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LLRL3
	.uleb128 0x4
	.secrel32	LASF22
	.word	0x26d
	.byte	0xa
	.long	0xe74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x22
	.long	LBB9
	.long	LBE9-LBB9
	.uleb128 0xd
	.ascii "j\0"
	.byte	0x2
	.word	0x26f
	.byte	0x13
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	LVL24
	.long	0x1082
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	LVL16
	.long	0x1082
	.uleb128 0x3
	.long	LVL17
	.long	0x1082
	.uleb128 0x3
	.long	LVL18
	.long	0x1082
	.uleb128 0x3
	.long	LVL19
	.long	0x1082
	.uleb128 0x3
	.long	LVL20
	.long	0x1082
	.uleb128 0x3
	.long	LVL21
	.long	0x1082
	.uleb128 0x3
	.long	LVL22
	.long	0x1082
	.uleb128 0x3
	.long	LVL23
	.long	0x1082
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x167b
	.uleb128 0xa
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.long	0x166b
	.uleb128 0x14
	.ascii "proc_info_get_remote_function_addr\0"
	.word	0x133
	.byte	0xa
	.long	0x167
	.long	LFB121
	.long	LFE121-LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a8
	.uleb128 0x15
	.secrel32	LASF6
	.word	0x133
	.byte	0x3a
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "hModule\0"
	.byte	0x2
	.word	0x133
	.byte	0x4d
	.long	0xadb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.ascii "pszSearchedFunctionName\0"
	.byte	0x2
	.word	0x133
	.byte	0x62
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4
	.secrel32	LASF7
	.word	0x135
	.byte	0xe
	.long	0xd1e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.secrel32	LASF8
	.word	0x136
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.secrel32	LASF9
	.word	0x137
	.byte	0x14
	.long	0x4a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.secrel32	LASF10
	.word	0x138
	.byte	0x9
	.long	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.secrel32	LASF11
	.word	0x139
	.byte	0x15
	.long	0x574
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x4
	.secrel32	LASF12
	.word	0x13a
	.byte	0x1b
	.long	0x937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x4
	.secrel32	LASF13
	.word	0x13b
	.byte	0x18
	.long	0x5d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x4
	.secrel32	LASF14
	.word	0x13c
	.byte	0x1a
	.long	0xa5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x4
	.secrel32	LASF15
	.word	0x13d
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.secrel32	LASF16
	.word	0x13e
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.secrel32	LASF17
	.word	0x13f
	.byte	0xc
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.secrel32	LASF18
	.word	0x140
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.secrel32	LASF19
	.word	0x141
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.secrel32	LASF20
	.word	0x142
	.byte	0xa
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.ascii "retAddr\0"
	.byte	0x2
	.word	0x143
	.byte	0xc
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x18b8
	.uleb128 0x5
	.byte	0x3
	.long	___func__.2
	.uleb128 0x1f
	.ascii "dealloc_exit\0"
	.word	0x1dd
	.long	L74
	.uleb128 0x20
	.secrel32	LLRL0
	.long	0x185f
	.uleb128 0xd
	.ascii "i\0"
	.byte	0x2
	.word	0x1b9
	.byte	0x11
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.secrel32	LLRL1
	.uleb128 0x4
	.secrel32	LASF22
	.word	0x1bb
	.byte	0xa
	.long	0xe74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x22
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0xd
	.ascii "j\0"
	.byte	0x2
	.word	0x1bd
	.byte	0x13
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	LVL15
	.long	0x1082
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	LVL7
	.long	0x1082
	.uleb128 0x3
	.long	LVL8
	.long	0x1082
	.uleb128 0x3
	.long	LVL9
	.long	0x1082
	.uleb128 0x3
	.long	LVL10
	.long	0x1082
	.uleb128 0x3
	.long	LVL11
	.long	0x1082
	.uleb128 0x3
	.long	LVL12
	.long	0x1082
	.uleb128 0x3
	.long	LVL13
	.long	0x1082
	.uleb128 0x3
	.long	LVL14
	.long	0x1082
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x18b8
	.uleb128 0xa
	.long	0xaa
	.byte	0x22
	.byte	0
	.uleb128 0xc
	.long	0x18a8
	.uleb128 0x14
	.ascii "proc_info_close_process_handle\0"
	.word	0x11e
	.byte	0x9
	.long	0x157
	.long	LFB120
	.long	LFE120-LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x191a
	.uleb128 0x15
	.secrel32	LASF6
	.word	0x11e
	.byte	0x35
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x192a
	.uleb128 0x5
	.byte	0x3
	.long	___func__.3
	.uleb128 0x3
	.long	LVL6
	.long	0x11f9
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x192a
	.uleb128 0xa
	.long	0xaa
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.long	0x191a
	.uleb128 0x14
	.ascii "proc_info_get_process_handle\0"
	.word	0x10a
	.byte	0x5
	.long	0xba
	.long	LFB119
	.long	LFE119-LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x198a
	.uleb128 0x15
	.secrel32	LASF6
	.word	0x10a
	.byte	0x2f
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x199a
	.uleb128 0x5
	.byte	0x3
	.long	___func__.4
	.uleb128 0x3
	.long	LVL5
	.long	0x1123
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x199a
	.uleb128 0xa
	.long	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.long	0x198a
	.uleb128 0x17
	.ascii "proc_info_get_process_id\0"
	.byte	0xf7
	.long	0xba
	.long	LFB118
	.long	LFE118-LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f3
	.uleb128 0x10
	.secrel32	LASF6
	.byte	0xf7
	.byte	0x2b
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x1a03
	.uleb128 0x5
	.byte	0x3
	.long	___func__.5
	.uleb128 0x3
	.long	LVL4
	.long	0x115a
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x1a03
	.uleb128 0xa
	.long	0xaa
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x19f3
	.uleb128 0x17
	.ascii "proc_info_get_process_id_from_exe\0"
	.byte	0xc6
	.long	0xba
	.long	LFB117
	.long	LFE117-LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab2
	.uleb128 0x10
	.secrel32	LASF6
	.byte	0xc6
	.byte	0x34
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.secrel32	LASF23
	.byte	0xc6
	.byte	0x4b
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "hProcessSnap\0"
	.byte	0xc8
	.byte	0xa
	.long	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.ascii "pe32\0"
	.byte	0xc9
	.byte	0x12
	.long	0xe3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x30
	.secrel32	LASF5
	.byte	0x2
	.byte	0xca
	.byte	0x9
	.long	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x1ac2
	.uleb128 0x5
	.byte	0x3
	.long	___func__.6
	.uleb128 0x3
	.long	LVL2
	.long	0x11f9
	.uleb128 0x3
	.long	LVL3
	.long	0x11f9
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x1ac2
	.uleb128 0xa
	.long	0xaa
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.long	0x1ab2
	.uleb128 0x17
	.ascii "proc_info_get_window_handle\0"
	.byte	0xb1
	.long	0xba
	.long	LFB116
	.long	LFE116-LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b38
	.uleb128 0x10
	.secrel32	LASF6
	.byte	0xb1
	.byte	0x2e
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.ascii "pszWindowTitle\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x45
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x1b48
	.uleb128 0x5
	.byte	0x3
	.long	___func__.7
	.uleb128 0x3
	.long	LVL1
	.long	0x12a7
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x1b48
	.uleb128 0xa
	.long	0xaa
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.long	0x1b38
	.uleb128 0x17
	.ascii "proc_info_destroy\0"
	.byte	0x97
	.long	0xba
	.long	LFB115
	.long	LFE115-LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba2
	.uleb128 0x10
	.secrel32	LASF24
	.byte	0x97
	.byte	0x25
	.long	0x1ba2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "retval\0"
	.byte	0x99
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x1bb7
	.uleb128 0x5
	.byte	0x3
	.long	___func__.8
	.byte	0
	.uleb128 0x7
	.long	0x1468
	.uleb128 0x9
	.long	0x86
	.long	0x1bb7
	.uleb128 0xa
	.long	0xaa
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x1ba7
	.uleb128 0x17
	.ascii "proc_info_init\0"
	.byte	0x52
	.long	0xba
	.long	LFB114
	.long	LFE114-LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c30
	.uleb128 0x10
	.secrel32	LASF24
	.byte	0x52
	.byte	0x22
	.long	0x1ba2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.secrel32	LASF23
	.byte	0x52
	.byte	0x3a
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "retval\0"
	.byte	0x54
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.ascii "temp_info\0"
	.byte	0x55
	.byte	0x10
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.secrel32	LASF21
	.long	0x1c40
	.uleb128 0x5
	.byte	0x3
	.long	___func__.9
	.byte	0
	.uleb128 0x9
	.long	0x86
	.long	0x1c40
	.uleb128 0xa
	.long	0xaa
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x1c30
	.uleb128 0x32
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xba
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0xd
	.ascii "__retval\0"
	.byte	0x1
	.word	0x172
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii "__local_argv\0"
	.byte	0x1
	.word	0x173
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	LVL0
	.long	0x1310
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_rnglists,"dr"
Ldebug_ranges0:
	.long	Ldebug_ranges3-Ldebug_ranges2
Ldebug_ranges2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
LLRL0:
	.byte	0x4
	.uleb128 LBB2-Ltext0
	.uleb128 LBE2-Ltext0
	.byte	0x4
	.uleb128 LBB6-Ltext0
	.uleb128 LBE6-Ltext0
	.byte	0
LLRL1:
	.byte	0x4
	.uleb128 LBB3-Ltext0
	.uleb128 LBE3-Ltext0
	.byte	0x4
	.uleb128 LBB5-Ltext0
	.uleb128 LBE5-Ltext0
	.byte	0
LLRL2:
	.byte	0x4
	.uleb128 LBB7-Ltext0
	.uleb128 LBE7-Ltext0
	.byte	0x4
	.uleb128 LBB11-Ltext0
	.uleb128 LBE11-Ltext0
	.byte	0
LLRL3:
	.byte	0x4
	.uleb128 LBB8-Ltext0
	.uleb128 LBE8-Ltext0
	.byte	0x4
	.uleb128 LBB10-Ltext0
	.uleb128 LBE10-Ltext0
	.byte	0
Ldebug_ranges3:
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF9:
	.ascii "dll_dos_header\0"
LASF11:
	.ascii "dll_file_header\0"
LASF3:
	.ascii "Characteristics\0"
LASF2:
	.ascii "TimeDateStamp\0"
LASF18:
	.ascii "dll_export_function_table\0"
LASF12:
	.ascii "dll_opt_header\0"
LASF15:
	.ascii "dll_export_function_table_addr\0"
LASF24:
	.ascii "ppProcInfo\0"
LASF14:
	.ascii "dll_export_table\0"
LASF17:
	.ascii "dll_export_ordinal_table_addr\0"
LASF16:
	.ascii "dll_export_name_table_addr\0"
LASF5:
	.ascii "dwProcessId\0"
LASF6:
	.ascii "pProcInfo\0"
LASF22:
	.ascii "function_name_buff\0"
LASF23:
	.ascii "pszExeName\0"
LASF13:
	.ascii "dll_export_dir\0"
LASF8:
	.ascii "remote_dll_base\0"
LASF21:
	.ascii "__func__\0"
LASF19:
	.ascii "dll_export_name_table\0"
LASF7:
	.ascii "RemoteModuleInfo\0"
LASF4:
	.ascii "SizeOfImage\0"
LASF10:
	.ascii "dll_nt_signature\0"
LASF20:
	.ascii "dll_export_ordinal_table\0"
	.section	.debug_line_str,"dr"
LASF1:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\0"
LASF0:
	.ascii "src/injector/process_info.c\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_CreateToolhelp32Snapshot@8;	.scl	2;	.type	32;	.endef
	.def	_Process32First@8;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_Process32Next@8;	.scl	2;	.type	32;	.endef
	.def	_K32GetModuleInformation@16;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
