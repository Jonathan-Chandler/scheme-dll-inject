	.file	"test_main.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/test/test_main.c"
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
	.globl	_tests_run
	.bss
	.align 4
_tests_run:
	.space 4
	.globl	_debug_level
	.data
	.align 4
_debug_level:
	.long	1
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Unit Test Error: memscan_find_next fails to find search data\0"
	.text
	.globl	_test_memscan_find_next
	.def	_test_memscan_find_next;	.scl	2;	.type	32;	.endef
_test_memscan_find_next:
LFB114:
	.file 2 "src/test/test_main.c"
	.loc 2 15 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 16 8
	movl	$2003133285, -25(%ebp)
	movl	$2020762218, -21(%ebp)
	movl	$1818322544, -17(%ebp)
	movb	$0, -13(%ebp)
	.loc 2 17 13
	movl	$1, -12(%ebp)
	.loc 2 20 9
	jmp	L4
L6:
	.loc 2 22 14
	movl	$12, 8(%esp)
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_memscan_find_next
	movl	%eax, -12(%ebp)
L4:
	.loc 2 20 43
	leal	-25(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	je	L5
	.loc 2 20 43 is_stmt 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L6
L5:
	.loc 2 25 3 is_stmt 1
	leal	-25(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	je	L7
	.loc 2 25 3 is_stmt 0 discriminator 1
	movl	$LC0, %eax
	jmp	L9
L7:
	.loc 2 25 3 discriminator 2
	movl	_tests_run, %eax
	addl	$1, %eax
	movl	%eax, _tests_run
	.loc 2 27 10 is_stmt 1 discriminator 2
	movl	$0, %eax
L9:
	.loc 2 28 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.globl	_all_tests
	.def	_all_tests;	.scl	2;	.type	32;	.endef
_all_tests:
LFB115:
	.loc 2 31 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 2 34 14
	call	_test_memscan_find_next
	movl	%eax, -12(%ebp)
	.loc 2 34 6
	cmpl	$0, -12(%ebp)
	je	L11
	.loc 2 35 12
	movl	-12(%ebp), %eax
	jmp	L12
L11:
	.loc 2 37 10
	movl	$0, %eax
L12:
	.loc 2 38 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE115:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "\12\0"
	.align 4
LC2:
	.ascii "********************************************************************************************************************************************************\12\0"
LC3:
	.ascii "%s\12\0"
LC4:
	.ascii "ALL TESTS PASSED\12\0"
LC5:
	.ascii "Tests run: %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB116:
	.loc 2 41 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 2 41 1
	call	___main
	.loc 2 45 15
	movl	$0, _debug_level
	.loc 2 47 12
	call	_all_tests
	movl	%eax, 28(%esp)
	.loc 2 48 6
	cmpl	$0, 28(%esp)
	je	L14
	.loc 2 50 5
	movl	$LC1, (%esp)
	call	_printf
	.loc 2 51 5
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 52 5
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	.loc 2 53 5
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 54 5
	movl	$LC1, (%esp)
	call	_printf
	jmp	L15
L14:
	.loc 2 58 5
	movl	$LC1, (%esp)
	call	_printf
	.loc 2 59 5
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 60 5
	movl	$LC4, (%esp)
	call	_printf
	.loc 2 61 5
	movl	$LC2, (%esp)
	call	_printf
	.loc 2 62 5
	movl	$LC1, (%esp)
	call	_printf
L15:
	.loc 2 65 3
	movl	_tests_run, %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	.loc 2 66 17
	cmpl	$0, 28(%esp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 67 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE116:
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/corecrt.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/combaseapi.h"
	.file 7 "C:/msys64/mingw32/i686-w64-mingw32/include/wtypes.h"
	.file 8 "inc/debug.h"
	.file 9 "inc/test/minunit.h"
	.file 10 "inc/dll/memscan.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x76e
	.word	0x5
	.byte	0x1
	.byte	0x4
	.secrel32	Ldebug_abbrev0
	.uleb128 0x10
	.ascii "GNU C17 11.2.0 -mtune=generic -march=i686 -g\0"
	.byte	0x1d
	.secrel32	LASF0
	.secrel32	LASF1
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x6
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x66
	.uleb128 0x11
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x12
	.long	0x7e
	.uleb128 0x6
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x6
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x13
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x1a7
	.uleb128 0x3
	.ascii "_ptr\0"
	.byte	0x25
	.byte	0xb
	.long	0xf4
	.byte	0
	.uleb128 0x3
	.ascii "_cnt\0"
	.byte	0x26
	.byte	0x9
	.long	0xba
	.byte	0x4
	.uleb128 0x3
	.ascii "_base\0"
	.byte	0x27
	.byte	0xb
	.long	0xf4
	.byte	0x8
	.uleb128 0x3
	.ascii "_flag\0"
	.byte	0x28
	.byte	0x9
	.long	0xba
	.byte	0xc
	.uleb128 0x3
	.ascii "_file\0"
	.byte	0x29
	.byte	0x9
	.long	0xba
	.byte	0x10
	.uleb128 0x3
	.ascii "_charbuf\0"
	.byte	0x2a
	.byte	0x9
	.long	0xba
	.byte	0x14
	.uleb128 0x3
	.ascii "_bufsiz\0"
	.byte	0x2b
	.byte	0x9
	.long	0xba
	.byte	0x18
	.uleb128 0x3
	.ascii "_tmpfname\0"
	.byte	0x2c
	.byte	0xb
	.long	0xf4
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x11f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x6
	.ascii "uint8_t\0"
	.byte	0x5
	.byte	0x24
	.byte	0x19
	.long	0x10e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.ascii "uint32_t\0"
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0xaa
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x7
	.long	0xf4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x14
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0xaa
	.byte	0x6
	.byte	0x95
	.byte	0xe
	.long	0x277
	.uleb128 0x1
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0xaa
	.byte	0x7
	.word	0x201
	.byte	0x6
	.long	0x503
	.uleb128 0x1
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x1
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x1
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x1
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x1
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x1
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x1
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x1
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x1
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x1
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x1
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x1
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x1
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x1
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x1
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x1
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x1
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x1
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x1
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x1
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x1
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x1
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x1
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x1
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x1
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x1
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x1
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x1
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x1
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x1
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x1
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x1
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x1
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x1
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x1
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x1
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x1
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x1
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x1
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x1
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x1
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x1
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x1
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x4
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x4
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x4
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x4
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x4
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x4
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x4
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x4
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xaa
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.long	0x55b
	.uleb128 0x1
	.ascii "DEBUG_LOG_NONE\0"
	.byte	0
	.uleb128 0x1
	.ascii "DEBUG_LOG_VERBOSE\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "DEBUG_LOG_ERROR\0"
	.byte	0x2
	.uleb128 0x1
	.ascii "DEBUG_LOG_COUNT\0"
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.ascii "debug_level\0"
	.byte	0x8
	.byte	0x17
	.long	0xba
	.uleb128 0xa
	.ascii "tests_run\0"
	.byte	0x9
	.byte	0x5
	.long	0xba
	.uleb128 0xb
	.long	0x56e
	.byte	0x8
	.uleb128 0x5
	.byte	0x3
	.long	_tests_run
	.uleb128 0xb
	.long	0x55b
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.long	_debug_level
	.uleb128 0x9
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0xba
	.long	0x5c4
	.uleb128 0x5
	.long	0x5c9
	.uleb128 0x5
	.long	0x5d3
	.uleb128 0x5
	.long	0x8b
	.byte	0
	.uleb128 0x7
	.long	0x1a7
	.uleb128 0xc
	.long	0x5c4
	.uleb128 0x7
	.long	0x86
	.uleb128 0xc
	.long	0x5ce
	.uleb128 0x9
	.ascii "__acrt_iob_func\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.long	0x5c4
	.long	0x5fa
	.uleb128 0x5
	.long	0xaa
	.byte	0
	.uleb128 0x9
	.ascii "memscan_find_next\0"
	.byte	0xa
	.byte	0x5
	.byte	0xb
	.long	0x628
	.long	0x628
	.uleb128 0x5
	.long	0x1fc
	.uleb128 0x5
	.long	0x62d
	.uleb128 0x5
	.long	0x9b
	.byte	0
	.uleb128 0x7
	.long	0x1fc
	.uleb128 0x7
	.long	0x1df
	.uleb128 0x17
	.ascii "main\0"
	.byte	0x2
	.byte	0x28
	.byte	0x5
	.long	0xba
	.long	LFB116
	.long	LFE116-LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x67b
	.uleb128 0xd
	.ascii "argc\0"
	.byte	0xe
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii "argv\0"
	.byte	0x1b
	.long	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.ascii "result\0"
	.byte	0x2a
	.byte	0x9
	.long	0xf4
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0xe
	.ascii "all_tests\0"
	.byte	0x1e
	.long	0xf4
	.long	LFB115
	.long	LFE115-LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a8
	.uleb128 0x8
	.ascii "res\0"
	.byte	0x20
	.byte	0x9
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.ascii "test_memscan_find_next\0"
	.byte	0xe
	.long	0xf4
	.long	LFB114
	.long	LFE114-LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fb
	.uleb128 0x8
	.ascii "search_data\0"
	.byte	0x10
	.byte	0x8
	.long	0x6fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.ascii "result\0"
	.byte	0x11
	.byte	0xd
	.long	0x628
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	0x7e
	.long	0x70b
	.uleb128 0x19
	.long	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xba
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x5ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0xf
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii "__local_argv\0"
	.word	0x173
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	LVL0
	.long	0x5d8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 40
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.sleb128 7
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.section	.debug_line_str,"dr"
LASF1:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\0"
LASF0:
	.ascii "src/test/test_main.c\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_memscan_find_next;	.scl	2;	.type	32;	.endef
