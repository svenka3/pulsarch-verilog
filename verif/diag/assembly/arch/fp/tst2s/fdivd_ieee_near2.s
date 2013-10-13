/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: fdivd_ieee_near2.s
* Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
* 
* The above named program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License version 2 as published by the Free Software Foundation.
* 
* The above named program is distributed in the hope that it will be 
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public
* License along with this work; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
* 
* ========== Copyright Header End ============================================
*/
/***********************************************************************
* Name:   fdivd_ieee_near2.s
* Date:   11/6/02
*
*
**********************************************************************/

#define ENABLE_T0_Fp_disabled_0x20
#include "boot.s"

.global sam_fast_immu_miss
.global sam_fast_dmmu_miss

.text
.global main

! Testing fdivd with rounding mode near



main:

	! Common code

	wr		%g0, 0x4, %fprs		! make sure fef is 1 
	setx		source1, %l0, %l1
	setx		source2, %l0, %l2
	setx		result, %l0, %l3
	setx		fcc_result, %l0, %l4
	setx		cexc_flag, %l0, %l5
	setx		fsr_rounding_mode, %l0, %l6
	setx		scratch, %l0, %l7


	set		60, %g1		! Set loop count
	set		0x0, %g2		! Set loop iterator


fdivd_loop:
	ldx		[%l6+0x0], %fsr


	! instruction specific code

	sll		%g2, 0x3, %g3

	ldx		[%l6], %fsr		! Load fsr with rounding mode
	ldd		[%l1+%g3], %f0		! Load source 1
	ldd		[%l2+%g3], %f2		! Load source 2
	fdivd		%f0, %f2, %f4		! Perform the operation
	std		%f4, [%l7+0x0]		! Store the result for comparison
	stx		%fsr, [%l7+0x8]		! Store the fsr for comparison
	ldx		[%l7+0x0], %g4		! Load result from memory for comparison

        ldx     [%l7+0x8], %g5   ! Load fsr from memory for comparison
        sll     %g2, 0x3, %g3
        ldx     [%l5+%g3], %g6   ! Load fsr with expected cexc mode
        mov     0x0f, %g3              ! Mask for nv
        and     %g3, %g6, %g7          ! Mask off nv
        srl     %g7, 0x3, %g7          ! Shift to get of
        or      %g7, %g6, %g6          ! Generate correct nx with of
        mov     0x01, %g3              ! Mask to get nx
        and     %g3, %g6, %g7          ! Mask off all but nx
        sll     %g7, 0x2, %g7          ! Shift to align nx and uf
        or      %g7, 0x1b, %g7         ! Mask for all cexc bits
        and     %g7, %g6, %g6          ! Generate correct uf for denorm
	      sll     %g6, 0x5, %g7          ! Generate aexc
	      or      %g6, %g7, %g7          ! Generate expected fsr
	      ldx     [%l6], %g6        ! Load fsr with rounding mode
	      or      %g6, %g7, %g7          ! Generate expected fsr

	sll		%g2, 0x3, %g3
	ldx		[%l3+%g3], %g6		! Load expected result

	subcc		%g4, %g6, %g0		! Compare
	bne,a		test_fail		! If not equal, test failed
	nop
	subcc		%g5, %g7, %g0		! Compare
	bne,a		test_fail		! If not equal, test failed
	nop


	add		%g2, 0x1, %g2		! Increment loop iterator
	subcc		%g2, %g1, %g0		! Compare
	bne,a		fdivd_loop		! Loop
	nop


/*******************************************************
 * Exit code
 *******************************************************/

test_pass:
	ta		T_GOOD_TRAP

test_fail:
	ta		T_BAD_TRAP




/*******************************************************
* Data section
*******************************************************/
.data


fsr_rounding_mode:
	.xword		0x0000000000000000


source1:
	.xword		0x4008000000000002
	.xword		0xc008000000000002
	.xword		0x4008000000000002
	.xword		0xc008000000000002
	.xword		0x000c000000000001
	.xword		0x800c000000000001
	.xword		0x000c000000000001
	.xword		0x800c000000000001
	.xword		0x3ff0000000000000
	.xword		0x3ff0000000000000
	.xword		0x3ff0000000000000
	.xword		0x3ff0000000000000
	.xword		0xbff0000000000000
	.xword		0xbff0000000000000
	.xword		0x3ff0000000000000
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffe
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffe
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffa
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000005
	.xword		0x0008000000000000
	.xword		0x8008000000000000
	.xword		0x8008000000000000
	.xword		0x0008000000000000
	.xword		0x3ff8000000000001
	.xword		0xbff8000000000001
	.xword		0xbff8000000000001
	.xword		0x3ff8000000000001
	.xword		0x3ff0000000000002
	.xword		0xbff0000000000002
	.xword		0xbff0000000000002
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000004
	.xword		0x3ff0000000000007
	.xword		0x3ff0000000000009
	.xword		0x3feffffffffffffe
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffff8
	.xword		0x3feffffffffffff7
	.xword		0x3feffffffffffff8
	.xword		0x3feffffffffffff7
	.xword		0x000ffffffffffffe
	.xword		0x800ffffffffffffe
	.xword		0x800ffffffffffffe
	.xword		0x000ffffffffffffe
.align 8


source2:
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0x0010000000000001
	.xword		0x8010000000000001
	.xword		0x8010000000000001
	.xword		0x0010000000000001
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffb
	.xword		0x3feffffffffffff7
	.xword		0x3fefffffffffffff
	.xword		0xbfefffffffffffff
	.xword		0x3fefffffffffffff
	.xword		0xbfefffffffffffff
	.xword		0x3feffffffffffffe
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffff9
	.xword		0x3feffffffffffff9
	.xword		0x3feffffffffffff9
	.xword		0x3fefffffffffffff
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffd
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffb
	.xword		0x3fefffffffffffff
	.xword		0x001fffffffffffff
	.xword		0x801fffffffffffff
	.xword		0x001fffffffffffff
	.xword		0x801fffffffffffff
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000008
	.xword		0x3fefffffffffffff
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffe
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffe
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffe
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffb
	.xword		0x001fffffffffffff
	.xword		0x801fffffffffffff
	.xword		0x001fffffffffffff
	.xword		0x801fffffffffffff
.align 8


result:
	.xword		0x4008000000000000
	.xword		0x4008000000000000
	.xword		0xc008000000000000
	.xword		0xc008000000000000
	.xword		0x3fe8000000000000
	.xword		0x3fe8000000000000
	.xword		0xbfe8000000000000
	.xword		0xbfe8000000000000
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000005
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000004
	.xword		0x3ff0000000000004
	.xword		0x3ff0000000000005
	.xword		0x3ff0000000000004
	.xword		0x3ff0000000000006
	.xword		0x3fd0000000000001
	.xword		0x3fd0000000000001
	.xword		0xbfd0000000000001
	.xword		0xbfd0000000000001
	.xword		0x3ff8000000000000
	.xword		0x3ff8000000000000
	.xword		0xbff8000000000000
	.xword		0xbff8000000000000
	.xword		0x3ff0000000000001
	.xword		0x3ff0000000000001
	.xword		0xbff0000000000001
	.xword		0xbff0000000000001
	.xword		0x3ff0000000000002
	.xword		0x3ff0000000000003
	.xword		0x3ff0000000000005
	.xword		0x3ff0000000000001
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffe
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffd
	.xword		0x3feffffffffffffe
	.xword		0x3fefffffffffffff
	.xword		0x3feffffffffffffb
	.xword		0x3feffffffffffff9
	.xword		0x3feffffffffffffc
	.xword		0x3feffffffffffffc
	.xword		0x3fdffffffffffffd
	.xword		0x3fdffffffffffffd
	.xword		0xbfdffffffffffffd
	.xword		0xbfdffffffffffffd
.align 8
fcc_result:


cexc_flag:
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
	.xword		0x0000000000000001
.align 8


scratch:
	.xword		0x0000000000000000
	.xword		0x0000000000000000


