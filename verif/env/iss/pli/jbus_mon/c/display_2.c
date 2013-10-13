/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: display_2.c
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
    // Errors and warnings have to be handled differently.
    if (indx == 48) {
      warncnt++;
      if (warncnt == maxwarn) {
        if (dowarn == VRLG_STOP) {
          tf_dostop();
        } else if (dowarn == VRLG_FINISH) {
          tf_dofinish();
        }
      }
    } else if (indx == 49) {
      errcnt++;
      if (errcnt == maxerr) {
        if (doerr == VRLG_STOP) {
          tf_dostop();
        } else if (doerr == VRLG_FINISH) {
          tf_dofinish();
        }
      }
    }
  }
