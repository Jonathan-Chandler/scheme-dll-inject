	.file	"dll-test.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/dll/dll-test.c"
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB93:
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
LFE93:
	.globl	_get_pointer
	.def	_get_pointer;	.scl	2;	.type	32;	.endef
_get_pointer:
LFB243:
	.file 2 "src/dll/dll-test.c"
	.loc 2 9 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 10 10
	movl	8(%ebp), %eax
	.loc 2 11 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE243:
	.globl	_get_char_from_pointer
	.def	_get_char_from_pointer;	.scl	2;	.type	32;	.endef
_get_char_from_pointer:
LFB244:
	.loc 2 14 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 15 10
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	.loc 2 16 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE244:
	.globl	_get_uint8_from_pointer
	.def	_get_uint8_from_pointer;	.scl	2;	.type	32;	.endef
_get_uint8_from_pointer:
LFB245:
	.loc 2 19 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 20 10
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	.loc 2 21 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE245:
	.globl	_get_uint16_from_pointer
	.def	_get_uint16_from_pointer;	.scl	2;	.type	32;	.endef
_get_uint16_from_pointer:
LFB246:
	.loc 2 24 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 25 10
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	.loc 2 26 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE246:
	.globl	_get_uint32_from_pointer
	.def	_get_uint32_from_pointer;	.scl	2;	.type	32;	.endef
_get_uint32_from_pointer:
LFB247:
	.loc 2 29 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 30 10
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 31 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE247:
	.section .rdata,"dr"
LC0:
	.ascii "%c\12\0"
	.text
	.globl	_print_char_from_pointer
	.def	_print_char_from_pointer;	.scl	2;	.type	32;	.endef
_print_char_from_pointer:
LFB248:
	.loc 2 34 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 35 18
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	.loc 2 35 3
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 2 36 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE248:
	.section .rdata,"dr"
LC1:
	.ascii "%hhu\12\0"
	.text
	.globl	_print_uint8_from_pointer
	.def	_print_uint8_from_pointer;	.scl	2;	.type	32;	.endef
_print_uint8_from_pointer:
LFB249:
	.loc 2 39 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 40 20
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	.loc 2 40 3
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 2 41 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE249:
	.section .rdata,"dr"
LC2:
	.ascii "%hu\12\0"
	.text
	.globl	_print_uint16_from_pointer
	.def	_print_uint16_from_pointer;	.scl	2;	.type	32;	.endef
_print_uint16_from_pointer:
LFB250:
	.loc 2 44 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 45 19
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	.loc 2 45 3
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 46 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE250:
	.section .rdata,"dr"
LC3:
	.ascii "%u\12\0"
	.text
	.globl	_print_uint32_from_pointer
	.def	_print_uint32_from_pointer;	.scl	2;	.type	32;	.endef
_print_uint32_from_pointer:
LFB251:
	.loc 2 49 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 50 3
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 51 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE251:
	.section .rdata,"dr"
LC4:
	.ascii "         \0"
LC5:
	.ascii "%02X \0"
LC6:
	.ascii "\12\0"
LC7:
	.ascii "%08X \0"
	.text
	.globl	_print_hex_bytes
	.def	_print_hex_bytes;	.scl	2;	.type	32;	.endef
_print_hex_bytes:
LFB252:
	.loc 2 54 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 55 3
	movl	$LC4, (%esp)
	call	_printf
LBB2:
	.loc 2 56 15
	movl	$0, -12(%ebp)
	.loc 2 56 3
	jmp	L18
L19:
	.loc 2 57 5 discriminator 3
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	.loc 2 56 33 discriminator 3
	addl	$1, -12(%ebp)
L18:
	.loc 2 56 24 discriminator 1
	cmpl	$15, -12(%ebp)
	jbe	L19
LBE2:
	.loc 2 58 3
	movl	$LC6, (%esp)
	call	_printf
LBB3:
	.loc 2 60 15
	movl	$0, -16(%ebp)
	.loc 2 60 3
	jmp	L20
L24:
	.loc 2 62 21
	movl	12(%ebp), %edx
	.loc 2 62 5
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
LBB4:
	.loc 2 63 17
	movl	$0, -20(%ebp)
	.loc 2 63 5
	jmp	L21
L23:
	.loc 2 64 33 discriminator 4
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	.loc 2 64 30 discriminator 4
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	.loc 2 64 7 discriminator 4
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	.loc 2 63 51 discriminator 4
	addl	$1, -20(%ebp)
L21:
	.loc 2 63 33 discriminator 1
	cmpl	$15, -20(%ebp)
	ja	L22
	.loc 2 63 37 discriminator 3
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	.loc 2 63 33 discriminator 3
	cmpl	%eax, 8(%ebp)
	ja	L23
L22:
LBE4:
	.loc 2 65 5 discriminator 2
	movl	$LC6, (%esp)
	call	_printf
	.loc 2 60 36 discriminator 2
	addl	$16, -16(%ebp)
L20:
	.loc 2 60 24 discriminator 1
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jb	L24
LBE3:
	.loc 2 67 1
	nop
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE252:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\\chicken-server.scm\0"
LC9:
	.ascii "r\0"
LC10:
	.ascii "Fail to open %s\12\0"
LC11:
	.ascii "%s\0"
LC12:
	.ascii "%s\12\0"
LC13:
	.ascii "close file\12\0"
	.text
	.globl	_launch_chicken@4
	.def	_launch_chicken@4;	.scl	2;	.type	32;	.endef
_launch_chicken@4:
LFB253:
	.loc 2 71 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$548, %esp
	.cfi_offset 7, -12
	.loc 2 72 15
	movl	$LC8, -12(%ebp)
	.loc 2 73 8
	movl	$0, -276(%ebp)
	leal	-272(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 74 8
	movl	$0, -532(%ebp)
	leal	-528(%ebp), %edx
	movl	$0, %eax
	movl	$63, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 2 78 26
	movl	$LC9, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	.loc 2 79 6
	cmpl	$0, -16(%ebp)
	jne	L26
	.loc 2 81 5
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	.loc 2 82 15
	call	_getchar
	.loc 2 82 13
	movb	%al, -532(%ebp)
	.loc 2 83 5
	movl	$1, (%esp)
	call	_exit
L26:
	.loc 2 87 3
	movl	$_C_default_5fstub_toplevel, (%esp)
	call	_CHICKEN_run
	.loc 2 90 9
	jmp	L27
L31:
	.loc 2 93 10
	movzbl	-532(%ebp), %eax
	movzbl	%al, %eax
	negl	%eax
	.loc 2 93 8
	testl	%eax, %eax
	je	L27
	.loc 2 93 37 discriminator 2
	leal	-532(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_strcmp
	.loc 2 93 33 discriminator 2
	testl	%eax, %eax
	jne	L29
	.loc 2 94 7 discriminator 3
	jmp	L27
L29:
	.loc 2 95 5
	leal	-532(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	.loc 2 97 14
	movl	$255, 8(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	_CHICKEN_eval_string_to_string
	movl	%eax, -20(%ebp)
	.loc 2 98 8
	cmpl	$0, -20(%ebp)
	jne	L30
	.loc 2 100 7
	movl	$255, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	_CHICKEN_get_error_message
	.loc 2 101 7
	leal	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	jmp	L27
L30:
	.loc 2 105 7
	leal	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
L27:
	.loc 2 90 10
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgets
	.loc 2 90 58
	testl	%eax, %eax
	jne	L31
	.loc 2 109 3
	movl	$LC13, (%esp)
	call	_printf
	.loc 2 110 3
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	.loc 2 112 10
	movl	$0, %eax
	.loc 2 113 1
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE253:
	.globl	_DllMain@12
	.def	_DllMain@12;	.scl	2;	.type	32;	.endef
_DllMain@12:
LFB254:
	.loc 2 117 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 118 3
	cmpl	$3, 12(%ebp)
	je	L40
	cmpl	$3, 12(%ebp)
	ja	L41
	cmpl	$2, 12(%ebp)
	je	L42
	cmpl	$2, 12(%ebp)
	ja	L41
	cmpl	$0, 12(%ebp)
	je	L43
	cmpl	$1, 12(%ebp)
	.loc 2 129 7
	jmp	L41
L40:
	.loc 2 127 7
	nop
	jmp	L38
L41:
	.loc 2 129 7
	nop
	jmp	L38
L42:
	.loc 2 125 7
	nop
	jmp	L38
L43:
	.loc 2 123 7
	nop
L38:
	.loc 2 132 10
	movl	$1, %eax
	.loc 2 133 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE254:
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/corecrt.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 7 "C:/msys64/mingw32/include/chicken/chicken.h"
	.file 8 "C:/msys64/mingw32/i686-w64-mingw32/include/string.h"
	.file 9 "C:/msys64/mingw32/i686-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x89e
	.word	0x5
	.byte	0x1
	.byte	0x4
	.secrel32	Ldebug_abbrev0
	.uleb128 0x12
	.ascii "GNU C17 11.2.0 -mtune=generic -march=i686 -g\0"
	.byte	0x1d
	.secrel32	LASF0
	.secrel32	LASF1
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x3
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x66
	.uleb128 0x13
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x14
	.long	0x7e
	.uleb128 0x3
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x25
	.byte	0x16
	.long	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x7
	.long	0x7e
	.uleb128 0xc
	.long	0xf4
	.uleb128 0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x3
	.ascii "BOOL\0"
	.byte	0x5
	.byte	0x83
	.byte	0xf
	.long	0xba
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x1d
	.long	0x103
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3
	.ascii "LPVOID\0"
	.byte	0x5
	.byte	0x99
	.byte	0x11
	.long	0x129
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xe
	.ascii "HINSTANCE__\0"
	.byte	0x4
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0x1ba
	.uleb128 0x5
	.ascii "unused\0"
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0xba
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "HINSTANCE\0"
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0x1cc
	.uleb128 0x7
	.long	0x194
	.uleb128 0x3
	.ascii "HMODULE\0"
	.byte	0x5
	.byte	0xd6
	.byte	0x15
	.long	0x1ba
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x6
	.byte	0x24
	.byte	0x19
	.long	0x118
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x6
	.byte	0x26
	.byte	0x19
	.long	0xc1
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x6
	.byte	0x28
	.byte	0x14
	.long	0xaa
	.uleb128 0xe
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x2c9
	.uleb128 0x5
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0xf4
	.byte	0
	.uleb128 0x5
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0xba
	.byte	0x4
	.uleb128 0x5
	.ascii "_base\0"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.long	0xf4
	.byte	0x8
	.uleb128 0x5
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0xba
	.byte	0xc
	.uleb128 0x5
	.ascii "_file\0"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.long	0xba
	.byte	0x10
	.uleb128 0x5
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.long	0xba
	.byte	0x14
	.uleb128 0x5
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.long	0xba
	.byte	0x18
	.uleb128 0x5
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.long	0xf4
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x239
	.uleb128 0x7
	.long	0x86
	.uleb128 0xc
	.long	0x2d6
	.uleb128 0x8
	.ascii "fclose\0"
	.byte	0x1
	.word	0x263
	.byte	0xf
	.long	0xba
	.long	0x2fa
	.uleb128 0x1
	.long	0x2fa
	.byte	0
	.uleb128 0x7
	.long	0x2c9
	.uleb128 0xc
	.long	0x2fa
	.uleb128 0x8
	.ascii "fgets\0"
	.byte	0x1
	.word	0x271
	.byte	0x11
	.long	0xf4
	.long	0x327
	.uleb128 0x1
	.long	0xf9
	.uleb128 0x1
	.long	0xba
	.uleb128 0x1
	.long	0x2ff
	.byte	0
	.uleb128 0x16
	.ascii "CHICKEN_get_error_message\0"
	.byte	0x7
	.word	0x879
	.byte	0x14
	.long	0x355
	.uleb128 0x1
	.long	0xf4
	.uleb128 0x1
	.long	0xba
	.byte	0
	.uleb128 0x8
	.ascii "CHICKEN_eval_string_to_string\0"
	.byte	0x7
	.word	0x87e
	.byte	0x13
	.long	0xba
	.long	0x390
	.uleb128 0x1
	.long	0xf4
	.uleb128 0x1
	.long	0xf4
	.uleb128 0x1
	.long	0xba
	.byte	0
	.uleb128 0xd
	.ascii "strcmp\0"
	.byte	0x8
	.byte	0x3f
	.byte	0xf
	.long	0xba
	.long	0x3ae
	.uleb128 0x1
	.long	0x2d6
	.uleb128 0x1
	.long	0x2d6
	.byte	0
	.uleb128 0xf
	.ascii "C_default_5fstub_toplevel\0"
	.byte	0x7
	.word	0x884
	.byte	0xd
	.long	0x3dc
	.uleb128 0x1
	.long	0xba
	.uleb128 0x1
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.ascii "CHICKEN_run\0"
	.byte	0x7
	.word	0x6c7
	.byte	0x14
	.long	0xba
	.long	0x3fb
	.uleb128 0x1
	.long	0x129
	.byte	0
	.uleb128 0xf
	.ascii "exit\0"
	.byte	0x9
	.word	0x184
	.byte	0x20
	.long	0x40f
	.uleb128 0x1
	.long	0xba
	.byte	0
	.uleb128 0x17
	.ascii "getchar\0"
	.byte	0x1
	.word	0x2ad
	.byte	0xf
	.long	0xba
	.uleb128 0x8
	.ascii "fopen\0"
	.byte	0x1
	.word	0x278
	.byte	0x11
	.long	0x2fa
	.long	0x43e
	.uleb128 0x1
	.long	0x2db
	.uleb128 0x1
	.long	0x2db
	.byte	0
	.uleb128 0xd
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0xba
	.long	0x46b
	.uleb128 0x1
	.long	0x2ff
	.uleb128 0x1
	.long	0x2db
	.uleb128 0x1
	.long	0x8b
	.byte	0
	.uleb128 0xd
	.ascii "__acrt_iob_func\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.long	0x2fa
	.long	0x48d
	.uleb128 0x1
	.long	0xaa
	.byte	0
	.uleb128 0x18
	.ascii "DllMain\0"
	.byte	0x2
	.byte	0x74
	.byte	0xd
	.ascii "DllMain@12\0"
	.long	0x12b
	.long	LFB254
	.long	LFE254-LFB254
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f1
	.uleb128 0x9
	.ascii "hModule\0"
	.byte	0x74
	.byte	0x1d
	.long	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "dwReason\0"
	.byte	0x74
	.byte	0x2c
	.long	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii "lpReserved\0"
	.byte	0x74
	.byte	0x3d
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x19
	.ascii "launch_chicken\0"
	.byte	0x2
	.byte	0x46
	.byte	0x24
	.ascii "launch_chicken@4\0"
	.long	0x138
	.long	LFB253
	.long	LFE253-LFB253
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a2
	.uleb128 0x9
	.ascii "hModule\0"
	.byte	0x46
	.byte	0x3b
	.long	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "script_path\0"
	.byte	0x48
	.byte	0xf
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.ascii "buffer\0"
	.byte	0x49
	.byte	0x8
	.long	0x5a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x6
	.ascii "line\0"
	.byte	0x4a
	.byte	0x8
	.long	0x5a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x6
	.ascii "status\0"
	.byte	0x4b
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.ascii "launch_server_script\0"
	.byte	0x4c
	.byte	0x9
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	0x7e
	.long	0x5b2
	.uleb128 0x1b
	.long	0xaa
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.ascii "print_hex_bytes\0"
	.byte	0x35
	.long	LFB252
	.long	LFE252-LFB252
	.uleb128 0x1
	.byte	0x9c
	.long	0x638
	.uleb128 0x9
	.ascii "nBytes\0"
	.byte	0x35
	.byte	0x3b
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x35
	.byte	0x4c
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x60b
	.uleb128 0x6
	.ascii "x\0"
	.byte	0x38
	.byte	0xf
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x6
	.ascii "i\0"
	.byte	0x3c
	.byte	0xf
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0x6
	.ascii "x\0"
	.byte	0x3f
	.byte	0x11
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x207
	.uleb128 0xa
	.ascii "print_uint32_from_pointer\0"
	.byte	0x30
	.long	LFB251
	.long	LFE251-LFB251
	.uleb128 0x1
	.byte	0x9c
	.long	0x676
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x30
	.byte	0x44
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.ascii "print_uint16_from_pointer\0"
	.byte	0x2b
	.long	LFB250
	.long	LFE250-LFB250
	.uleb128 0x1
	.byte	0x9c
	.long	0x6af
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x2b
	.byte	0x44
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.ascii "print_uint8_from_pointer\0"
	.byte	0x26
	.long	LFB249
	.long	LFE249-LFB249
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e7
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x26
	.byte	0x43
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.ascii "print_char_from_pointer\0"
	.byte	0x21
	.long	LFB248
	.long	LFE248-LFB248
	.uleb128 0x1
	.byte	0x9c
	.long	0x71e
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x21
	.byte	0x42
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.ascii "get_uint32_from_pointer\0"
	.byte	0x1c
	.byte	0x28
	.long	0x228
	.long	LFB247
	.long	LFE247-LFB247
	.uleb128 0x1
	.byte	0x9c
	.long	0x75a
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x1c
	.byte	0x46
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.ascii "get_uint16_from_pointer\0"
	.byte	0x17
	.byte	0x28
	.long	0x217
	.long	LFB246
	.long	LFE246-LFB246
	.uleb128 0x1
	.byte	0x9c
	.long	0x796
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x17
	.byte	0x46
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.ascii "get_uint8_from_pointer\0"
	.byte	0x12
	.byte	0x27
	.long	0x207
	.long	LFB245
	.long	LFE245-LFB245
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d1
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x12
	.byte	0x44
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.ascii "get_char_from_pointer\0"
	.byte	0xd
	.byte	0x24
	.long	0x7e
	.long	LFB244
	.long	LFE244-LFB244
	.uleb128 0x1
	.byte	0x9c
	.long	0x80b
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0xd
	.byte	0x40
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.ascii "get_pointer\0"
	.byte	0x8
	.byte	0x25
	.long	0xf4
	.long	LFB243
	.long	LFE243-LFB243
	.uleb128 0x1
	.byte	0x9c
	.long	0x83b
	.uleb128 0x4
	.secrel32	LASF2
	.byte	0x8
	.byte	0x3a
	.long	0x228
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xba
	.long	LFB93
	.long	LFE93-LFB93
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x11
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii "__local_argv\0"
	.word	0x173
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	LVL0
	.long	0x46b
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
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
	.sleb128 36
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF2:
	.ascii "pointer\0"
	.section	.debug_line_str,"dr"
LASF1:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\0"
LASF0:
	.ascii "src/dll/dll-test.c\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_C_default_5fstub_toplevel;	.scl	2;	.type	32;	.endef
	.def	_CHICKEN_run;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_CHICKEN_eval_string_to_string;	.scl	2;	.type	32;	.endef
	.def	_CHICKEN_get_error_message;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"DllMain@12\""
	.ascii " -export:\"launch_chicken@4\""
	.ascii " -export:\"print_hex_bytes\""
	.ascii " -export:\"print_uint32_from_pointer\""
	.ascii " -export:\"print_uint16_from_pointer\""
	.ascii " -export:\"print_uint8_from_pointer\""
	.ascii " -export:\"print_char_from_pointer\""
	.ascii " -export:\"get_uint32_from_pointer\""
	.ascii " -export:\"get_uint16_from_pointer\""
	.ascii " -export:\"get_uint8_from_pointer\""
	.ascii " -export:\"get_char_from_pointer\""
	.ascii " -export:\"get_pointer\""
