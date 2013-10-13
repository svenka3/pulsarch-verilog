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
#==================================================
#==================================================


LABEL_0:

WRITEMSKIO  0x00000613a85bb880 0x0000  0x00000000 0x00000000 0x00000000 0x00000000 

WRITEMSKIO  0x000006165a6df6c0 0x0f00  0x00000000 0x9e521b02 0x00000000 0x00000000 

WRITEBLKIO  0x0000061b3367b5c0 +
        0x0fe15092 0xa2673752 0x2fd13809 0x0ec24520 +
        0x1e371adc 0x232cc555 0x2f3dd61d 0x91783f06 +
        0x02968d00 0xc02bf766 0xdb93c0d5 0x7a3612a7 +
        0x9bd03548 0x632f2ade 0xee66e33d 0xc7135dcc 

WRITEIO  0x0000060375768c80 16 0xdd563c9c 0xf4ebb059 0xae6c46cb 0xe6a26f3a 

READBLKIO  0x0000061b3367b5c0 +
        0x0fe15092 0xa2673752 0x2fd13809 0x0ec24520 +
        0x1e371adc 0x232cc555 0x2f3dd61d 0x91783f06 +
        0x02968d00 0xc02bf766 0xdb93c0d5 0x7a3612a7 +
        0x9bd03548 0x632f2ade 0xee66e33d 0xc7135dcc 

READMSKIO   0x00000613a85bb880 0x0000  0x00000000 0x00000000 0x00000000 0x00000000 

READIO  0x0000060375768c80 16 0xdd563c9c 0xf4ebb059 0xae6c46cb 0xe6a26f3a 
WRITEBLK  0x00000000e3e3aa40 +
        0x1040ef90 0x00f683bd 0x4af08ce6 0xd4215676 +
        0x7102370a 0x9fd9b082 0x15ee0357 0x849fcbf9 +
        0x3c3fa11f 0xbea367c5 0x0423b7fb 0x4184d95f +
        0xa53fc54a 0x2693361a 0x882d9a00 0x1d18c794 

READBLK  0x00000000e3e3aa40 +
        0x1040ef90 0x00f683bd 0x4af08ce6 0xd4215676 +
        0x7102370a 0x9fd9b082 0x15ee0357 0x849fcbf9 +
        0x3c3fa11f 0xbea367c5 0x0423b7fb 0x4184d95f +
        0xa53fc54a 0x2693361a 0x882d9a00 0x1d18c794 

WRITEIO  0x0000060f5e47a240 8 0x01f3ae28 0xac081ac8 

WRITEMSKIO  0x0000061e1cab2e80 0xf0ff  0x290da5a4 0x00000000 0xbca7284f 0x5f79554e 

WRITEBLK  0x0000000c2a7b7300 +
        0xe22ac004 0x4e04d7e6 0xf325678f 0x448175c3 +
        0x4f72a7fc 0xd2dce78e 0xbe659dbc 0x8a0468b1 +
        0x9f2aade2 0xf0cbd34a 0xa2932f0c 0x253ae63e +
        0x5a29ae51 0xe933930c 0x9338d722 0xc667f819 

READIO  0x0000060f5e47a240 8 0x01f3ae28 0xac081ac8 
READBLK  0x0000000c2a7b7300 +
        0xe22ac004 0x4e04d7e6 0xf325678f 0x448175c3 +
        0x4f72a7fc 0xd2dce78e 0xbe659dbc 0x8a0468b1 +
        0x9f2aade2 0xf0cbd34a 0xa2932f0c 0x253ae63e +
        0x5a29ae51 0xe933930c 0x9338d722 0xc667f819 

WRITEIO  0x0000061b86a48140 4 0x1cdf1e00 

WRITEIO  0x0000060d719fa840 16 0x20e707b2 0x028a53cc 0x9957889b 0x17721738 

WRITEBLK  0x0000001da8bc0680 +
        0x6a40ab7f 0x42d9190a 0xc2313d63 0xc086679c +
        0xf4d1399a 0xbdddbfff 0x6dd8300a 0x21739619 +
        0x0ffafce6 0xfc48b8e4 0xf086d244 0x2a04e52f +
        0x7ea37662 0xb68530b4 0xe6ab5707 0x9aa1ce45 

WRITEBLKIO  0x000006177b212740 +
        0xf8569bb3 0x431083a1 0x887a0db0 0x6ac9c21d +
        0xf0225933 0xa14323d0 0x2baa0e8b 0x4d46e3f2 +
        0x79902b90 0xa912e272 0xec5ae7ad 0xa3121729 +
        0x4d30a394 0x946c1de9 0xd7927423 0x49be4c31 

READIO  0x0000061b86a48140 4 0x1cdf1e00 
WRITEMSKIO  0x0000060bddbf3f80 0xf0f0  0xb7a3cfb8 0x00000000 0x10b4e299 0x00000000 

READIO  0x0000060d719fa840 16 0x20e707b2 0x028a53cc 0x9957889b 0x17721738 
READBLK  0x0000001da8bc0680 +
        0x6a40ab7f 0x42d9190a 0xc2313d63 0xc086679c +
        0xf4d1399a 0xbdddbfff 0x6dd8300a 0x21739619 +
        0x0ffafce6 0xfc48b8e4 0xf086d244 0x2a04e52f +
        0x7ea37662 0xb68530b4 0xe6ab5707 0x9aa1ce45 

READMSKIO   0x000006165a6df6c0 0x0f00  0x00000000 0x9e521b02 0x00000000 0x00000000 

WRITEBLKIO  0x0000060261f705c0 +
        0xe97b7167 0x20699b11 0x33910093 0x3048c1c3 +
        0xfec59b0a 0x48df121b 0x4f1ecb9d 0x03db5877 +
        0xbc26cadf 0xdb9feb46 0xa146e066 0x3c264aaa +
        0x1d26106c 0xd6e8ba13 0x6e69c271 0xeb041f23 

WRITEBLK  0x0000001ec5892640 +
        0x92485b92 0x23df6577 0x496baba4 0x0f07ed24 +
        0x6b386183 0x2b39abd9 0xe33c6ed2 0x4f8811f5 +
        0xf5dd06ba 0x6395e810 0x400b4bcf 0xce864be7 +
        0x04b8507a 0x9dc405e1 0xca4341df 0xbf2d73b9 

WRITEBLK  0x000000140a9c0d40 +
        0x90d1420a 0xdeb6cbc9 0x624977e8 0x6b648e73 +
        0x43a3468a 0x6b993e46 0x67734541 0xe4302b2a +
        0xf9a5e9d2 0x7d021ad4 0xbee17e63 0xfc306963 +
        0x031e9463 0x00b3f228 0x5a009bfd 0xc386bc86 

READBLK  0x0000001ec5892640 +
        0x92485b92 0x23df6577 0x496baba4 0x0f07ed24 +
        0x6b386183 0x2b39abd9 0xe33c6ed2 0x4f8811f5 +
        0xf5dd06ba 0x6395e810 0x400b4bcf 0xce864be7 +
        0x04b8507a 0x9dc405e1 0xca4341df 0xbf2d73b9 

WRITEBLK  0x0000000ee2859840 +
        0xf62aeb2d 0xa61449fe 0x6ba6a5de 0x8edf8a5c +
        0x35de08d4 0x2b4948d0 0x47e1343e 0x4fab118f +
        0x2f3112dc 0x75dfafe8 0xf9fc5973 0x37b5993b +
        0xdf30d891 0x3fb011ba 0x65e7e6a2 0x61459a28 

READBLK  0x000000140a9c0d40 +
        0x90d1420a 0xdeb6cbc9 0x624977e8 0x6b648e73 +
        0x43a3468a 0x6b993e46 0x67734541 0xe4302b2a +
        0xf9a5e9d2 0x7d021ad4 0xbee17e63 0xfc306963 +
        0x031e9463 0x00b3f228 0x5a009bfd 0xc386bc86 

WRITEMSK  0x0000000ee2859840 0xf0ff00ff0fff0f0f +
        0x79e53f53 0x00000000 0x96f8d635 0x65166a94 +
        0x00000000 0x00000000 0xd87409c4 0x4b50d545 +
        0x00000000 0xb68079a1 0x63d6e341 0x4c80f397 +
        0x00000000 0x7601d150 0x00000000 0x140711de 

READBLKIO  0x000006177b212740 +
        0xf8569bb3 0x431083a1 0x887a0db0 0x6ac9c21d +
        0xf0225933 0xa14323d0 0x2baa0e8b 0x4d46e3f2 +
        0x79902b90 0xa912e272 0xec5ae7ad 0xa3121729 +
        0x4d30a394 0x946c1de9 0xd7927423 0x49be4c31 

READBLK  0x0000000ee2859840 +
        0x79e53f53 0xa61449fe 0x96f8d635 0x65166a94 +
        0x35de08d4 0x2b4948d0 0xd87409c4 0x4b50d545 +
        0x2f3112dc 0xb68079a1 0x63d6e341 0x4c80f397 +
        0xdf30d891 0x7601d150 0x65e7e6a2 0x140711de 

READMSKIO   0x0000061e1cab2e80 0xf0ff  0x290da5a4 0x00000000 0xbca7284f 0x5f79554e 

WRITEBLK  0x000000161ebbeb80 +
        0x863e86e0 0x1207b691 0xe09a7889 0xc3935d95 +
        0xa2cf7dcb 0x16e6bbd2 0x2be7cdbf 0x76c03c3d +
        0x08265932 0x384bf198 0x4ec3ab22 0x8bd8dd13 +
        0xf96d129d 0x93ad1579 0x02be3161 0x4b6383aa 

WRITEBLK  0x0000001b253c7400 +
        0x9c7648c4 0x776d8eb9 0xec353988 0x701f31f2 +
        0x18932da4 0x41594606 0xc725dec6 0xaf2d8712 +
        0x0db4f1cf 0x7e75305f 0x5a146568 0x228cd2e8 +
        0xbd42119a 0x0f2cf2a7 0xcdda8490 0x6e99973e 

READBLKIO  0x0000060261f705c0 +
        0xe97b7167 0x20699b11 0x33910093 0x3048c1c3 +
        0xfec59b0a 0x48df121b 0x4f1ecb9d 0x03db5877 +
        0xbc26cadf 0xdb9feb46 0xa146e066 0x3c264aaa +
        0x1d26106c 0xd6e8ba13 0x6e69c271 0xeb041f23 

READMSKIO   0x0000060bddbf3f80 0xf0f0  0xb7a3cfb8 0x00000000 0x10b4e299 0x00000000 

WRITEBLK  0x000000189e03ecc0 +
        0x60179c2d 0x5f257285 0x193c9a7b 0xcee7a4e3 +
        0xcea97710 0x04e10247 0x5f16fc84 0xff90291c +
        0x21d29aed 0x55df83d4 0x212dd6b4 0xa6d29a23 +
        0xc75ca0c8 0xf500a1f0 0x24e315c4 0x0c9b83f7 

WRITEBLKIO  0x0000060512d1c740 +
        0x60450039 0xbd4e5380 0xa088afad 0x289c655a +
        0x98d441cd 0x35facf06 0x4b7263aa 0x2d836631 +
        0xb63ae03e 0x6f13c14c 0x13143ca3 0x6e6e829e +
        0x33cbe73a 0x38ca0e02 0x6f6be473 0x8673435e 


BA LABEL_0
