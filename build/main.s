	.file	"main.c"
	.text
Ltext0:
	.file 0 "C:/work/c/chicken-sacrifice/test-foreign-dll" "src/injector/main.c"
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
	.globl	_debug_level
	.data
	.align 4
_debug_level:
	.long	2
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\\dll-test.dll\0"
LC1:
	.ascii "launch_chicken@4\0"
LC2:
	.ascii "Darkstone.exe\0"
LC3:
	.ascii "src/injector/main.c\0"
LC4:
	.ascii "ERROR::%s::%d::%s::\0"
	.align 4
LC5:
	.ascii "Failed to get process info with error %d\0"
LC6:
	.ascii "\12\0"
	.align 4
LC7:
	.ascii "DLL inject failed with null handle\12\0"
	.align 4
LC8:
	.ascii "Fail to find function in remote process \"%s\"\12\0"
LC9:
	.ascii "VERBOSE::%s::%d::%s::\0"
	.align 4
LC10:
	.ascii "Found remote address of \"%s\" at 0x%08X\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB114:
	.file 2 "src/injector/main.c"
	.loc 2 13 1
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$68, %esp
	.loc 2 13 1
	call	___main
	.loc 2 15 9
	movl	$LC0, -16(%ebp)
	.loc 2 16 9
	movl	$LC1, -20(%ebp)
	.loc 2 17 7
	movl	$0, -12(%ebp)
	.loc 2 18 16
	movl	$0, -40(%ebp)
	.loc 2 22 15
	movl	$LC2, -24(%ebp)
	.loc 2 25 13
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_proc_info_init
	movl	%eax, -28(%ebp)
	.loc 2 25 6
	cmpl	$0, -28(%ebp)
	je	L4
	.loc 2 27 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L5
	.loc 2 27 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$27, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
L5:
	.loc 2 28 12 is_stmt 1
	movl	-28(%ebp), %eax
	jmp	L14
L4:
	.loc 2 32 15
	movl	-40(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_proc_info_inject_dll
	movl	%eax, -32(%ebp)
	.loc 2 32 6
	cmpl	$0, -32(%ebp)
	jne	L7
	.loc 2 34 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L8
	.loc 2 34 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$34, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
L8:
	.loc 2 35 12 is_stmt 1
	movl	$-1, -12(%ebp)
	.loc 2 36 5
	jmp	L9
L7:
	.loc 2 40 23
	movl	-40(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_proc_info_get_remote_function_addr
	movl	%eax, -36(%ebp)
	.loc 2 40 6
	cmpl	$0, -36(%ebp)
	jne	L10
	.loc 2 42 5
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L15
	.loc 2 42 5 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$42, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
	.loc 2 43 5 is_stmt 1 discriminator 1
	jmp	L15
L10:
	.loc 2 45 3
	movl	_debug_level, %eax
	testl	%eax, %eax
	jle	L12
	.loc 2 45 3 is_stmt 0 discriminator 1
	movl	$___func__.0, 12(%esp)
	movl	$45, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
L12:
	.loc 2 48 3 is_stmt 1
	movl	-36(%ebp), %edx
	.loc 2 48 34
	movl	-40(%ebp), %eax
	.loc 2 48 3
	movl	4(%eax), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__CreateRemoteThread@28, %eax
	call	*%eax
LVL1:
	subl	$28, %esp
	.loc 2 49 3
	movl	$2, (%esp)
	movl	__imp__Sleep@4, %eax
	call	*%eax
LVL2:
	subl	$4, %esp
	jmp	L9
L15:
	.loc 2 43 5
	nop
L9:
	.loc 2 53 7
	movl	-40(%ebp), %eax
	.loc 2 53 6
	testl	%eax, %eax
	je	L13
	.loc 2 54 5
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_proc_info_destroy
L13:
	.loc 2 56 10
	movl	-12(%ebp), %eax
L14:
	.loc 2 57 1 discriminator 1
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
	.align 4
___func__.0:
	.ascii "main\0"
	.text
Letext0:
	.file 3 "C:/msys64/mingw32/i686-w64-mingw32/include/vadefs.h"
	.file 4 "C:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 5 "C:/msys64/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 6 "C:/msys64/mingw32/i686-w64-mingw32/include/basetsd.h"
	.file 7 "C:/msys64/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 8 "C:/msys64/mingw32/i686-w64-mingw32/include/windef.h"
	.file 9 "C:/msys64/mingw32/i686-w64-mingw32/include/minwinbase.h"
	.file 10 "C:/msys64/mingw32/i686-w64-mingw32/include/combaseapi.h"
	.file 11 "C:/msys64/mingw32/i686-w64-mingw32/include/wtypes.h"
	.file 12 "inc/injector/process_info.h"
	.file 13 "C:/msys64/mingw32/i686-w64-mingw32/include/synchapi.h"
	.file 14 "inc/debug.h"
	.file 15 "C:/msys64/mingw32/i686-w64-mingw32/include/processthreadsapi.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xaaa
	.word	0x5
	.byte	0x1
	.byte	0x4
	.secrel32	Ldebug_abbrev0
	.uleb128 0xf
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
	.uleb128 0x10
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x7e
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xc
	.long	0x7e
	.uleb128 0x3
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x4f
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x6
	.long	0x7e
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x5
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x4
	.byte	0x27
	.byte	0xe
	.long	0xab
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x4
	.byte	0x28
	.byte	0x14
	.long	0x9b
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xa
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x213
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0xe5
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0xab
	.byte	0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.long	0xe5
	.byte	0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0xab
	.byte	0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.long	0xab
	.byte	0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.long	0xab
	.byte	0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.long	0xab
	.byte	0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.long	0xe5
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x183
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.ascii "WINBOOL\0"
	.byte	0x5
	.byte	0x7f
	.byte	0xd
	.long	0xab
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x1d
	.long	0xea
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.long	0x232
	.uleb128 0x3
	.ascii "LPDWORD\0"
	.byte	0x5
	.byte	0x98
	.byte	0x12
	.long	0x249
	.uleb128 0x3
	.ascii "LPVOID\0"
	.byte	0x5
	.byte	0x99
	.byte	0x11
	.long	0x220
	.uleb128 0x3
	.ascii "ULONG_PTR\0"
	.byte	0x6
	.byte	0x37
	.byte	0x19
	.long	0xea
	.uleb128 0x3
	.ascii "SIZE_T\0"
	.byte	0x6
	.byte	0x93
	.byte	0x27
	.long	0x26d
	.uleb128 0x12
	.ascii "HANDLE\0"
	.byte	0x7
	.word	0x195
	.byte	0x11
	.long	0x220
	.uleb128 0xa
	.ascii "HINSTANCE__\0"
	.byte	0x4
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0x2c4
	.uleb128 0x4
	.ascii "unused\0"
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0xab
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "HINSTANCE\0"
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.long	0x2d6
	.uleb128 0x6
	.long	0x29e
	.uleb128 0x3
	.ascii "HMODULE\0"
	.byte	0x5
	.byte	0xd6
	.byte	0x15
	.long	0x2c4
	.uleb128 0xa
	.ascii "HWND__\0"
	.byte	0x4
	.byte	0x8
	.byte	0x1a
	.byte	0x1
	.long	0x30c
	.uleb128 0x4
	.ascii "unused\0"
	.byte	0x8
	.byte	0x1a
	.byte	0x1
	.long	0xab
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "HWND\0"
	.byte	0x8
	.byte	0x1a
	.byte	0x1
	.long	0x319
	.uleb128 0x6
	.long	0x2eb
	.uleb128 0xa
	.ascii "_SECURITY_ATTRIBUTES\0"
	.byte	0xc
	.byte	0x9
	.byte	0xd
	.byte	0x12
	.long	0x384
	.uleb128 0x4
	.ascii "nLength\0"
	.byte	0x9
	.byte	0xe
	.byte	0xb
	.long	0x232
	.byte	0
	.uleb128 0x4
	.ascii "lpSecurityDescriptor\0"
	.byte	0x9
	.byte	0xf
	.byte	0xc
	.long	0x25e
	.byte	0x4
	.uleb128 0x4
	.ascii "bInheritHandle\0"
	.byte	0x9
	.byte	0x10
	.byte	0xd
	.long	0x222
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x31e
	.uleb128 0x3
	.ascii "LPSECURITY_ATTRIBUTES\0"
	.byte	0x9
	.byte	0x11
	.byte	0x32
	.long	0x384
	.uleb128 0x3
	.ascii "PTHREAD_START_ROUTINE\0"
	.byte	0x9
	.byte	0xea
	.byte	0x1a
	.long	0x3c5
	.uleb128 0x6
	.long	0x3ca
	.uleb128 0x13
	.long	0x232
	.long	0x3d9
	.uleb128 0x2
	.long	0x25e
	.byte	0
	.uleb128 0x3
	.ascii "LPTHREAD_START_ROUTINE\0"
	.byte	0x9
	.byte	0xeb
	.byte	0x21
	.long	0x3a7
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x14
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0x9b
	.byte	0xa
	.byte	0x95
	.byte	0xe
	.long	0x43a
	.uleb128 0x1
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0x9b
	.byte	0xb
	.word	0x201
	.byte	0x6
	.long	0x6c6
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
	.uleb128 0x7
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x7
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x7
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x7
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x7
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x7
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x7
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x7
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x9b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.long	0x71e
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
	.uleb128 0x17
	.ascii "debug_level\0"
	.byte	0xe
	.byte	0x17
	.byte	0xc
	.long	0xab
	.uleb128 0x18
	.byte	0xc
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.long	0x774
	.uleb128 0x4
	.ascii "hWindow\0"
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x30c
	.byte	0
	.uleb128 0x4
	.ascii "hProcess\0"
	.byte	0xc
	.byte	0xb
	.byte	0xa
	.long	0x28e
	.byte	0x4
	.uleb128 0x4
	.ascii "dwProcessId\0"
	.byte	0xc
	.byte	0xc
	.byte	0x9
	.long	0x232
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.ascii "proc_info_t\0"
	.byte	0xc
	.byte	0xd
	.byte	0x3
	.long	0x732
	.uleb128 0x19
	.long	0x71e
	.byte	0x2
	.byte	0xa
	.byte	0x5
	.uleb128 0x5
	.byte	0x3
	.long	_debug_level
	.uleb128 0x9
	.ascii "__mingw_vfprintf\0"
	.byte	0x1
	.byte	0xc1
	.byte	0xf
	.long	0xab
	.long	0x7c3
	.uleb128 0x2
	.long	0x7c8
	.uleb128 0x2
	.long	0x7d2
	.uleb128 0x2
	.long	0x8b
	.byte	0
	.uleb128 0x6
	.long	0x213
	.uleb128 0xd
	.long	0x7c3
	.uleb128 0x6
	.long	0x86
	.uleb128 0xd
	.long	0x7cd
	.uleb128 0x9
	.ascii "__acrt_iob_func\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.long	0x7c3
	.long	0x7f9
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x9
	.ascii "proc_info_destroy\0"
	.byte	0xc
	.byte	0x10
	.byte	0x9
	.long	0x148
	.long	0x81d
	.uleb128 0x2
	.long	0x81d
	.byte	0
	.uleb128 0x6
	.long	0x822
	.uleb128 0x6
	.long	0x774
	.uleb128 0x1a
	.ascii "Sleep\0"
	.byte	0xd
	.byte	0x7f
	.byte	0x1a
	.ascii "Sleep@4\0"
	.long	0x843
	.uleb128 0x2
	.long	0x232
	.byte	0
	.uleb128 0x1b
	.ascii "CreateRemoteThread\0"
	.byte	0xf
	.byte	0xc0
	.byte	0x1c
	.ascii "CreateRemoteThread@28\0"
	.long	0x28e
	.long	0x89c
	.uleb128 0x2
	.long	0x28e
	.uleb128 0x2
	.long	0x389
	.uleb128 0x2
	.long	0x27f
	.uleb128 0x2
	.long	0x3d9
	.uleb128 0x2
	.long	0x25e
	.uleb128 0x2
	.long	0x232
	.uleb128 0x2
	.long	0x24e
	.byte	0
	.uleb128 0x9
	.ascii "proc_info_get_remote_function_addr\0"
	.byte	0xc
	.byte	0x18
	.byte	0xa
	.long	0x158
	.long	0x8db
	.uleb128 0x2
	.long	0x822
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x7cd
	.byte	0
	.uleb128 0x9
	.ascii "proc_info_inject_dll\0"
	.byte	0xc
	.byte	0x1a
	.byte	0x8
	.long	0x28e
	.long	0x907
	.uleb128 0x2
	.long	0x822
	.uleb128 0x2
	.long	0xe5
	.byte	0
	.uleb128 0x9
	.ascii "proc_info_init\0"
	.byte	0xc
	.byte	0xf
	.byte	0x9
	.long	0x148
	.long	0x92d
	.uleb128 0x2
	.long	0x81d
	.uleb128 0x2
	.long	0x7cd
	.byte	0
	.uleb128 0x1c
	.ascii "main\0"
	.byte	0x2
	.byte	0xc
	.byte	0x5
	.long	0xab
	.long	LFB114
	.long	LFE114-LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0xa32
	.uleb128 0x8
	.ascii "hDll\0"
	.byte	0xe
	.byte	0xa
	.long	0x28e
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x8
	.ascii "pcLaunchChickenDllPath\0"
	.byte	0xf
	.byte	0x9
	.long	0xe5
	.uleb128 0x2
	.byte	0x75
	.sleb128 -16
	.uleb128 0x8
	.ascii "pcAppMainDllFunction\0"
	.byte	0x10
	.byte	0x9
	.long	0xe5
	.uleb128 0x2
	.byte	0x75
	.sleb128 -20
	.uleb128 0x8
	.ascii "retval\0"
	.byte	0x11
	.byte	0x7
	.long	0xab
	.uleb128 0x2
	.byte	0x75
	.sleb128 -12
	.uleb128 0x8
	.ascii "pProcessInfo\0"
	.byte	0x12
	.byte	0x10
	.long	0x822
	.uleb128 0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x8
	.ascii "pDllFunction\0"
	.byte	0x13
	.byte	0xc
	.long	0x158
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x8
	.ascii "rc\0"
	.byte	0x14
	.byte	0xb
	.long	0x148
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x8
	.ascii "pszExeName\0"
	.byte	0x16
	.byte	0xf
	.long	0x7cd
	.uleb128 0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x1d
	.ascii "__func__\0"
	.long	0xa42
	.uleb128 0x5
	.byte	0x3
	.long	___func__.0
	.uleb128 0x1e
	.ascii "close_exit\0"
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.long	L9
	.uleb128 0xb
	.long	LVL1
	.long	0x843
	.uleb128 0xb
	.long	LVL2
	.long	0x827
	.byte	0
	.uleb128 0x1f
	.long	0x86
	.long	0xa42
	.uleb128 0x20
	.long	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0xa32
	.uleb128 0x21
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.long	0xab
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.uleb128 0xe
	.ascii "__retval\0"
	.word	0x172
	.byte	0x7
	.long	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.ascii "__local_argv\0"
	.word	0x173
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	LVL0
	.long	0x7d7
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
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
	.ascii "src/injector/main.c\0"
	.ident	"GCC: (Rev8, Built by MSYS2 project) 11.2.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_proc_info_init;	.scl	2;	.type	32;	.endef
	.def	_proc_info_inject_dll;	.scl	2;	.type	32;	.endef
	.def	_proc_info_get_remote_function_addr;	.scl	2;	.type	32;	.endef
	.def	_proc_info_destroy;	.scl	2;	.type	32;	.endef
