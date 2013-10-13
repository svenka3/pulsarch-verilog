/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: tlu_tl_lvl_1.s
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
/*
********************************************************************************
   random seed:	129547119
   Jal tlu_asi_access.j:	
********************************************************************************/


#define PCONTEXT	0x10
#define SCONTEXT	0x10

#define MAIN_PAGE_NUCLEUS_ALSO
#define MAIN_PAGE_HV_ALSO

#define ALL_MY_INTR_HANDLERS
#include "my_intr_handlers.s"
#include "my_trap_handlers.s"

#include "enable_traps.h"
#include "boot.s"

.text
.global main

main:

! Register init code

	setx 0xad33e5250fe21945, %g1, %g0
	setx 0x54b9e006a1646716, %g1, %g1
	setx 0x0e2db2abf7ac653e, %g1, %g2
	setx 0x860695cd1d34ca82, %g1, %g3
	setx 0xb001c79f60123864, %g1, %g4
	setx 0x74453ffe72041b51, %g1, %g5
	setx 0x6acb2d99e1b8d03f, %g1, %g6
	setx 0x99ab5c79d5b90c43, %g1, %g7
	setx 0xfa676d39201fbccc, %g1, %r16
	setx 0xf6fdb5b38f22c753, %g1, %r17
	setx 0xd7b6fcac8410a923, %g1, %r18
	setx 0xa631a91d377ac02f, %g1, %r19
	setx 0xe29bad3d70294b40, %g1, %r20
	setx 0xc3894a2bb82d2ac9, %g1, %r21
	setx 0x43115515b0204094, %g1, %r22
	setx 0x75e61a96ceabd858, %g1, %r23
	setx 0xe34a707c6cf27cce, %g1, %r24
	setx 0x8660aa6dce4566cb, %g1, %r25
	setx 0xf06d9e4b4df2e568, %g1, %r26
	setx 0xac3fad2cd14eb9f9, %g1, %r27
	setx 0xaa9c76175e692d29, %g1, %r28
	setx 0xb22a5dd6e0dcb9ec, %g1, %r29
	setx 0x490b385d3b27c3a4, %g1, %r30
	setx 0x6b05b65eaa705dc5, %g1, %r31
	mov	0x1, %r22
	th_fork(main_th)

main_th_0:
main_th_1:
main_th_2:
main_th_3:
	ta	T_CHANGE_PRIV	! macro
	rdpr	%tl, %g1
	add	%g0, 0, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 1, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 2, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 3, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 4, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 5, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 6, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 7, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 8, %g1
	wrpr	%g1, %g0, %tl
	ta	T_CHANGE_HPRIV	! macro
	rdpr	%pstate, %l0
	wrpr	%l0, 4, %pstate
	rdpr	%tl, %g1
	add	%g0, 0, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 1, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 2, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 3, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 4, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 5, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 6, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 7, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 8, %g1
	wrpr	%g1, %g0, %tl
	rdpr	%tl, %g1
	rdpr	%tba, %l0
	wrhpr	%l0, %htba
	rdhpr	%hpstate, %g2
	wrhpr	%g2, 0x800, %hpstate
	rdpr	%tl, %g1
	add	%g0, 0, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 1, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 2, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 3, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 4, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 5, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 6, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 7, %g1
	wrpr	%g1, %g0, %tl
	add	%g0, 8, %g1
	wrpr	%g1, %g0, %tl
	nop
	ta	T_GOOD_TRAP

.data
	.xword 0x1234567887654321

