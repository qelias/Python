	.file	"classes_and_objects.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	_Z8DrawLineiiii
	.type	_Z8DrawLineiiii, @function
_Z8DrawLineiiii:
.LFB1590:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE1590:
	.size	_Z8DrawLineiiii, .-_Z8DrawLineiiii
	.p2align 4
	.globl	_Z8DrawLine5PointS_
	.type	_Z8DrawLine5PointS_, @function
_Z8DrawLine5PointS_:
.LFB1591:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE1591:
	.size	_Z8DrawLine5PointS_, .-_Z8DrawLine5PointS_
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1592:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1592
	endbr64
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 72[rsp], rax
	xor	eax, eax
	lea	rbp, 12[rsp]
	lea	r13, 24[rsp]
.LEHB0:
	call	_ZN3Car9ShowCountEv@PLT
	movss	xmm0, DWORD PTR .LC0[rip]
	mov	rdi, rbp
	call	_ZN3CarC1Ef@PLT
.LEHE0:
	movss	xmm1, DWORD PTR .LC0[rip]
	mov	esi, 9
	mov	rdi, r13
	movss	xmm0, DWORD PTR .LC1[rip]
.LEHB1:
	call	_ZN3CarC1Effi@PLT
.LEHE1:
	lea	r14, 36[rsp]
	mov	rdi, r14
.LEHB2:
	call	_ZN3CarC1Ev@PLT
.LEHE2:
	lea	r15, 48[rsp]
	mov	rdi, r15
.LEHB3:
	call	_ZN3CarC1Ev@PLT
.LEHE3:
	mov	rax, QWORD PTR 24[rsp]
	movss	xmm0, DWORD PTR .LC2[rip]
	mov	rdi, rbp
	lea	r12, 60[rsp]
	mov	QWORD PTR 60[rsp], rax
	mov	eax, DWORD PTR 32[rsp]
	mov	DWORD PTR 68[rsp], eax
.LEHB4:
	call	_ZN3Car8FillFuelEf@PLT
	mov	rdi, rbp
	lea	r12, 60[rsp]
	call	_ZN3Car10AccelerateEv@PLT
	mov	rdi, rbp
	lea	r12, 60[rsp]
	call	_ZN3Car10AccelerateEv@PLT
	mov	rdi, rbp
	lea	r12, 60[rsp]
	call	_ZN3Car10AccelerateEv@PLT
	mov	rdi, rbp
	lea	r12, 60[rsp]
	call	_ZN3Car10AccelerateEv@PLT
	mov	rdi, rbp
	lea	r12, 60[rsp]
	call	_ZN3Car9DashboardEv@PLT
	lea	r12, 60[rsp]
	mov	rdi, r12
	call	_ZN3Car9DashboardEv@PLT
	call	_ZN3Car9ShowCountEv@PLT
.LEHE4:
	mov	rdi, r12
	call	_ZN3CarD1Ev@PLT
	mov	rdi, r15
	call	_ZN3CarD1Ev@PLT
	mov	rdi, r14
	call	_ZN3CarD1Ev@PLT
	mov	rdi, r13
	call	_ZN3CarD1Ev@PLT
	mov	rdi, rbp
	call	_ZN3CarD1Ev@PLT
	mov	rax, QWORD PTR 72[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L16
	add	rsp, 88
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L13:
	endbr64
	mov	rbx, rax
	jmp	.L5
.L12:
	endbr64
	mov	r12, rax
	jmp	.L6
.L11:
	endbr64
	mov	r12, rax
	jmp	.L7
.L10:
	endbr64
	mov	r12, rax
	jmp	.L8
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1592:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1592-.LLSDACSB1592
.LLSDACSB1592:
	.uleb128 .LEHB0-.LFB1592
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1592
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB1592
	.uleb128 0
	.uleb128 .LEHB2-.LFB1592
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB1592
	.uleb128 0
	.uleb128 .LEHB3-.LFB1592
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L12-.LFB1592
	.uleb128 0
	.uleb128 .LEHB4-.LFB1592
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L13-.LFB1592
	.uleb128 0
.LLSDACSE1592:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1592
	.type	main.cold, @function
main.cold:
.LFSB1592:
.L5:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rdi, r12
	mov	r12, rbx
	call	_ZN3CarD1Ev@PLT
	mov	rdi, r15
	call	_ZN3CarD1Ev@PLT
.L6:
	mov	rdi, r14
	call	_ZN3CarD1Ev@PLT
.L7:
	mov	rdi, r13
	call	_ZN3CarD1Ev@PLT
.L8:
	mov	rdi, rbp
	call	_ZN3CarD1Ev@PLT
	mov	rdi, r12
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE1592:
	.section	.gcc_except_table
.LLSDAC1592:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1592-.LLSDACSBC1592
.LLSDACSBC1592:
	.uleb128 .LEHB5-.LCOLDB3
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC1592:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.p2align 4
	.type	_GLOBAL__sub_I__Z8DrawLineiiii, @function
_GLOBAL__sub_I__Z8DrawLineiiii:
.LFB2073:
	.cfi_startproc
	endbr64
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	lea	rdi, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	add	rsp, 8
	.cfi_def_cfa_offset 8
	lea	rdx, __dso_handle[rip]
	lea	rsi, _ZStL8__ioinit[rip]
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2073:
	.size	_GLOBAL__sub_I__Z8DrawLineiiii, .-_GLOBAL__sub_I__Z8DrawLineiiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8DrawLineiiii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1090519040
	.align 4
.LC1:
	.long	1088421888
	.align 4
.LC2:
	.long	1086324736
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
