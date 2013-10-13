# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T1 Processor File: sjm_4.cmd
# Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
# 
# The above named program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public
# License version 2 as published by the Free Software Foundation.
# 
# The above named program is distributed in the hope that it will be 
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public
# License along with this work; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
# 
# ========== Copyright Header End ============================================
CONFIG id=28 iosyncadr=0x7CF00BEEF00
TIMEOUT 10000000
IOSYNC

LABEL00:
READIO 0x611d0100040 4 0x00000000 setcc
BE LABEL00

READBLK 0x11d0100000  +
	0x00000001 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 

WRITEIO 0x611d0100040 4 0x00000000

LABEL01:
READIO 0x611d0100040 4 0x00000000 setcc
BE LABEL01

READBLK 0x11d0100000  +
	0x00000002 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 

WRITEIO 0x611d0100040 4 0x00000000

LABEL02:
READIO 0x611d0100040 4 0x00000000 setcc
BE LABEL02

READBLK 0x11d0100000  +
	0x00000003 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 +
	0x00000000 0x00000000 0x00000000 0x00000000 

WRITEIO 0x611d0100040 4 0x00000000

DONE
