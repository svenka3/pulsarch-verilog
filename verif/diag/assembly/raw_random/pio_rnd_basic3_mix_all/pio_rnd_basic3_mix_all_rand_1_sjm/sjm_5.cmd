# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T1 Processor File: sjm_5.cmd
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
CONFIG id=30 iosyncadr=0x7EF00BEEF00
TIMEOUT 10000000
IOSYNC
#==================================================
#==================================================


LABEL_0:

WRITEBLKIO  0x00000619d06f5c40 +
        0x7265a1f6 0xc1749293 0x8e6cae19 0xf0b5baec +
        0xffe71f0e 0x40832dee 0x449bddf7 0xc1cce3a4 +
        0xf2eff047 0x8d692b04 0x60b23c2c 0x83bd886d +
        0x9ad373e7 0xf92b7244 0x04463a72 0xa713833c 

READBLKIO  0x00000619d06f5c40 +
        0x7265a1f6 0xc1749293 0x8e6cae19 0xf0b5baec +
        0xffe71f0e 0x40832dee 0x449bddf7 0xc1cce3a4 +
        0xf2eff047 0x8d692b04 0x60b23c2c 0x83bd886d +
        0x9ad373e7 0xf92b7244 0x04463a72 0xa713833c 

WRITEIO  0x00000613886e9440 8 0x1dc5784c 0xc45ce68e 

WRITEBLK  0x0000001945c75380 +
        0xa97cee58 0x94b90e60 0x2d8daaf9 0xfe89788b +
        0x5cd14e25 0x5ae0d456 0xb1ded4af 0x6a4b8e42 +
        0x878885a7 0x6c3df0f5 0x00b6c2ef 0xa52d487e +
        0xdbf09f16 0x5e73af13 0x35a7e7ab 0x33a686c3 

WRITEIO  0x0000060fb4194e80 8 0x27b79162 0x3e82abb2 

WRITEMSK  0x0000001945c75380 0x0f0f000ff0000f00 +
        0x00000000 0x89366b3e 0x00000000 0x4f71930d +
        0x00000000 0x00000000 0x00000000 0xef74d5c9 +
        0x6b8df17e 0x00000000 0x00000000 0x00000000 +
        0x00000000 0xf1fcb72a 0x00000000 0x00000000 

WRITEMSKIO  0x0000060f6f51a2c0 0x0fff  0x00000000 0xfdaaaec0 0x8f20d02b 0x872928d6 

WRITEIO  0x00000608b6ac5940 8 0x14d53e9d 0x74658074 

WRITEMSKIO  0x000006062ee98780 0xf00f  0x4dc67e8b 0x00000000 0x00000000 0x81020327 

WRITEBLK  0x0000001e0b056600 +
        0x83fddda5 0x6b2151f8 0xee8d9c06 0x1611680f +
        0xc1bfc749 0xf4e1842c 0x6da6ce2e 0x480d8b5e +
        0x40b61372 0x33278e40 0x8aacf609 0xeca2c747 +
        0x8c9bd348 0x5dbefb5e 0x826e736b 0x82856be2 

READMSKIO   0x0000060f6f51a2c0 0x0fff  0x00000000 0xfdaaaec0 0x8f20d02b 0x872928d6 

WRITEBLKIO  0x0000061181b43dc0 +
        0x99832424 0x43ee2a59 0x9df41945 0x9984e402 +
        0x8717b30d 0xe4459565 0x78f85475 0x478c2cc6 +
        0x956d47a3 0x32b481b1 0x3d5fd9da 0x26a5a885 +
        0x84963c56 0x4a0e788e 0x80a69b8a 0x45b2b562 

WRITEMSK  0x0000001945c75380 0xf0000f0f0000f000 +
        0x4a06d5ae 0x00000000 0x00000000 0x00000000 +
        0x00000000 0x04389913 0x00000000 0x88fc7500 +
        0x00000000 0x00000000 0x00000000 0x00000000 +
        0x5ca0e90a 0x00000000 0x00000000 0x00000000 

READBLK  0x0000001945c75380 +
        0x4a06d5ae 0x89366b3e 0x2d8daaf9 0x4f71930d +
        0x5cd14e25 0x04389913 0xb1ded4af 0x88fc7500 +
        0x6b8df17e 0x6c3df0f5 0x00b6c2ef 0xa52d487e +
        0x5ca0e90a 0xf1fcb72a 0x35a7e7ab 0x33a686c3 

READIO  0x00000613886e9440 8 0x1dc5784c 0xc45ce68e 
WRITEMSK  0x0000001e0b056600 0xff00fff00ffff0f0 +
        0x7b70cf7f 0x877bf70c 0x00000000 0x00000000 +
        0xfa2ee4c2 0xb929a81a 0xa0eecf84 0x00000000 +
        0x00000000 0xe2be466f 0xcfa4d404 0xef0f3476 +
        0x84d61182 0x00000000 0xf30bf72e 0x00000000 

WRITEBLKIO  0x0000061bfca5f440 +
        0xcc31d0c0 0xc8cb0d8e 0x25af5de4 0xe88b6c59 +
        0x9f877894 0x8905c0ec 0x2c091c21 0x2768f87a +
        0x05e950df 0xe6de3d8a 0x8014c243 0xd2634c7b +
        0x2f343648 0xf2d65ca8 0xb3a89cf9 0x0154c03a 

READMSKIO   0x000006062ee98780 0xf00f  0x4dc67e8b 0x00000000 0x00000000 0x81020327 

READBLK  0x0000001e0b056600 +
        0x7b70cf7f 0x877bf70c 0xee8d9c06 0x1611680f +
        0xfa2ee4c2 0xb929a81a 0xa0eecf84 0x480d8b5e +
        0x40b61372 0xe2be466f 0xcfa4d404 0xef0f3476 +
        0x84d61182 0x5dbefb5e 0xf30bf72e 0x82856be2 

READIO  0x0000060fb4194e80 8 0x27b79162 0x3e82abb2 
READIO  0x00000608b6ac5940 8 0x14d53e9d 0x74658074 
READBLKIO  0x0000061181b43dc0 +
        0x99832424 0x43ee2a59 0x9df41945 0x9984e402 +
        0x8717b30d 0xe4459565 0x78f85475 0x478c2cc6 +
        0x956d47a3 0x32b481b1 0x3d5fd9da 0x26a5a885 +
        0x84963c56 0x4a0e788e 0x80a69b8a 0x45b2b562 

READBLKIO  0x0000061bfca5f440 +
        0xcc31d0c0 0xc8cb0d8e 0x25af5de4 0xe88b6c59 +
        0x9f877894 0x8905c0ec 0x2c091c21 0x2768f87a +
        0x05e950df 0xe6de3d8a 0x8014c243 0xd2634c7b +
        0x2f343648 0xf2d65ca8 0xb3a89cf9 0x0154c03a 

WRITEBLKIO  0x0000061d3ca3efc0 +
        0x39e40bab 0xc6ee5456 0xebb3a558 0x49c16ff9 +
        0x381357e2 0xac5ff700 0x0a25b672 0x11b3f7e4 +
        0x27ac5697 0xdacc73d7 0xaecb67eb 0x04a5bd90 +
        0xf41cf7b7 0xf2dc019d 0x8dbc333c 0x40bc6f63 

READBLKIO  0x0000061d3ca3efc0 +
        0x39e40bab 0xc6ee5456 0xebb3a558 0x49c16ff9 +
        0x381357e2 0xac5ff700 0x0a25b672 0x11b3f7e4 +
        0x27ac5697 0xdacc73d7 0xaecb67eb 0x04a5bd90 +
        0xf41cf7b7 0xf2dc019d 0x8dbc333c 0x40bc6f63 

WRITEIO  0x00000607773c9e00 4 0x255f9fff 

WRITEBLKIO  0x00000609ad2e6a40 +
        0xef66c4e8 0x7a4298de 0x51865f0e 0x1f5ff09a +
        0x755943ce 0x09f5e98c 0xd19480b3 0xdac4d90b +
        0x557a4e2a 0x8dd2ed72 0x2db57f83 0x79ab0096 +
        0x525c33b9 0x6fa9a97c 0x5a76eec1 0xa5e8251f 

WRITEBLKIO  0x00000615d3c38d40 +
        0x733dbd7c 0xf3acfbdf 0xc7f7105b 0xab4cc593 +
        0x52245d33 0xf3181c41 0x6a4848d8 0xeee9ede7 +
        0xf50aa2ff 0x0167c22e 0x145131da 0xc16c05a7 +
        0x6b9f8d3b 0x2d4b83ec 0x26e6bb84 0x16daa72a 

READBLKIO  0x00000609ad2e6a40 +
        0xef66c4e8 0x7a4298de 0x51865f0e 0x1f5ff09a +
        0x755943ce 0x09f5e98c 0xd19480b3 0xdac4d90b +
        0x557a4e2a 0x8dd2ed72 0x2db57f83 0x79ab0096 +
        0x525c33b9 0x6fa9a97c 0x5a76eec1 0xa5e8251f 

READIO  0x00000607773c9e00 4 0x255f9fff 
WRITEMSKIO  0x000006125af37080 0xfff0  0x30f44ba0 0x2f66a621 0x95b8db65 0x00000000 

WRITEBLK  0x0000000d1fbbd480 +
        0xd93bb31a 0xddead668 0x2aaf4534 0x7f400646 +
        0x3c7f8c8f 0x43575276 0x82999a11 0x153d3b01 +
        0x9f3626b5 0x1e09064e 0x94b3963c 0x445ffd91 +
        0x492b8202 0x8e2934d5 0x689c46fb 0x5ddf3969 

WRITEMSKIO  0x000006037cfd6040 0x0f0f  0x00000000 0x4358c2ca 0x00000000 0x7784a93f 

READBLK  0x0000000d1fbbd480 +
        0xd93bb31a 0xddead668 0x2aaf4534 0x7f400646 +
        0x3c7f8c8f 0x43575276 0x82999a11 0x153d3b01 +
        0x9f3626b5 0x1e09064e 0x94b3963c 0x445ffd91 +
        0x492b8202 0x8e2934d5 0x689c46fb 0x5ddf3969 

WRITEBLKIO  0x00000603f8cf7600 +
        0x678d8cf6 0x77718146 0x7e956e6c 0x17d8b7e9 +
        0x8365515c 0xd96cb2b3 0x31478114 0xdb8ed800 +
        0x1d16f394 0x3a725d02 0x1c36c002 0x8c6ee22f +
        0xd5441254 0x10b37a3c 0x8fbf934d 0xed9499b5 

WRITEBLKIO  0x0000060ffb104080 +
        0xc6724f27 0xfd8436e6 0x7cfcec59 0x6f5c9ac8 +
        0xc073a343 0x586b2a21 0x05e418a8 0x09a69278 +
        0x63eb0dd7 0x2295b7a9 0xc5a0d105 0x31d6d74d +
        0x25119373 0xe1c261c8 0x30d06012 0xcc9934cd 

WRITEMSKIO  0x000006124d7f3fc0 0x00ff  0x00000000 0x00000000 0x6e6aafd5 0x7ee82059 

WRITEIO  0x0000060a6ca43c00 4 0x51d4baf0 

WRITEBLK  0x00000014ddf1b4c0 +
        0x3e535762 0x9e02ce8b 0xd1fd0657 0xd8242fe7 +
        0x1b251ff1 0xb749075a 0x40287895 0xf8f2d431 +
        0x6d6574c7 0x6a9a0792 0x2bbf8a1d 0xa53a4a13 +
        0xfdad7b62 0x56769bb4 0x30cbd85d 0x0f1a812f 

READBLKIO  0x00000615d3c38d40 +
        0x733dbd7c 0xf3acfbdf 0xc7f7105b 0xab4cc593 +
        0x52245d33 0xf3181c41 0x6a4848d8 0xeee9ede7 +
        0xf50aa2ff 0x0167c22e 0x145131da 0xc16c05a7 +
        0x6b9f8d3b 0x2d4b83ec 0x26e6bb84 0x16daa72a 

READMSKIO   0x000006125af37080 0xfff0  0x30f44ba0 0x2f66a621 0x95b8db65 0x00000000 

READBLK  0x00000014ddf1b4c0 +
        0x3e535762 0x9e02ce8b 0xd1fd0657 0xd8242fe7 +
        0x1b251ff1 0xb749075a 0x40287895 0xf8f2d431 +
        0x6d6574c7 0x6a9a0792 0x2bbf8a1d 0xa53a4a13 +
        0xfdad7b62 0x56769bb4 0x30cbd85d 0x0f1a812f 

WRITEBLKIO  0x000006105d989ec0 +
        0x1e262096 0x65165624 0x2eedac65 0x644e619f +
        0x4f9671d7 0x144e45d6 0x53135656 0x98a6192b +
        0x891016f3 0xe93c51f7 0x06b63637 0xbeda6e29 +
        0xc5ac5913 0xa3103eb6 0xf0ccff6b 0x5a4f6d33 

WRITEBLK  0x0000001bf0f388c0 +
        0x3c66efd2 0x8d1068a1 0xcb6a83b6 0x11d4d11f +
        0xba73add4 0x2098a7cc 0x1aea699c 0xca5acfca +
        0xc663e864 0x67b812d3 0xaed898c8 0x51e25037 +
        0xa92e1e00 0xf508eb94 0xfbec59af 0xa8005fd9 

READBLK  0x0000001bf0f388c0 +
        0x3c66efd2 0x8d1068a1 0xcb6a83b6 0x11d4d11f +
        0xba73add4 0x2098a7cc 0x1aea699c 0xca5acfca +
        0xc663e864 0x67b812d3 0xaed898c8 0x51e25037 +
        0xa92e1e00 0xf508eb94 0xfbec59af 0xa8005fd9 

WRITEIO  0x000006102f037f00 8 0xa68b8d9d 0x35a79d19 

WRITEIO  0x000006120bc456c0 4 0x38ca2df7 

READBLKIO  0x00000603f8cf7600 +
        0x678d8cf6 0x77718146 0x7e956e6c 0x17d8b7e9 +
        0x8365515c 0xd96cb2b3 0x31478114 0xdb8ed800 +
        0x1d16f394 0x3a725d02 0x1c36c002 0x8c6ee22f +
        0xd5441254 0x10b37a3c 0x8fbf934d 0xed9499b5 

WRITEBLK  0x0000001566d01100 +
        0xc6df7fa8 0x1b8b5c19 0xb745ab3a 0x4e1da156 +
        0x557a0029 0xc06e9d6f 0x9f196eed 0x7d962db6 +
        0x50b0dee4 0xa1817b3a 0x6b53f465 0xd63dbc66 +
        0xb8d625e9 0xc47ea077 0xf81a55a2 0x352905c1 

READBLK  0x0000001566d01100 +
        0xc6df7fa8 0x1b8b5c19 0xb745ab3a 0x4e1da156 +
        0x557a0029 0xc06e9d6f 0x9f196eed 0x7d962db6 +
        0x50b0dee4 0xa1817b3a 0x6b53f465 0xd63dbc66 +
        0xb8d625e9 0xc47ea077 0xf81a55a2 0x352905c1 

READIO  0x0000060a6ca43c00 4 0x51d4baf0 
WRITEMSKIO  0x00000606ea8d8640 0xf000  0x654bef68 0x00000000 0x00000000 0x00000000 

READBLKIO  0x0000060ffb104080 +
        0xc6724f27 0xfd8436e6 0x7cfcec59 0x6f5c9ac8 +
        0xc073a343 0x586b2a21 0x05e418a8 0x09a69278 +
        0x63eb0dd7 0x2295b7a9 0xc5a0d105 0x31d6d74d +
        0x25119373 0xe1c261c8 0x30d06012 0xcc9934cd 

READIO  0x000006102f037f00 8 0xa68b8d9d 0x35a79d19 
READBLKIO  0x000006105d989ec0 +
        0x1e262096 0x65165624 0x2eedac65 0x644e619f +
        0x4f9671d7 0x144e45d6 0x53135656 0x98a6192b +
        0x891016f3 0xe93c51f7 0x06b63637 0xbeda6e29 +
        0xc5ac5913 0xa3103eb6 0xf0ccff6b 0x5a4f6d33 

WRITEBLKIO  0x0000061dae903000 +
        0x7189285c 0x504325e9 0xd0d36ad4 0xdbec1f8e +
        0x24fcac06 0x6b9867c5 0xb572643c 0x77b1d025 +
        0xf9f9d4b7 0xd921cd61 0x1807a57c 0xed9b3249 +
        0x3ebdc225 0xa263a6dc 0x1f0d8cbb 0xd9835d49 

WRITEIO  0x0000061581f03a80 8 0xc557f8c4 0xa29f1624 

WRITEBLKIO  0x0000061bc5938140 +
        0x6498cc8b 0xbcd8ee67 0x3fe27d6b 0x3763e45f +
        0x496afe67 0x35197795 0x38f40d6a 0x2c62203c +
        0x3e86f68b 0x01b182be 0x0160855f 0x16456da4 +
        0xbde4ffd0 0xe31f2668 0xbad7dffd 0xfcdf06cf 

READMSKIO   0x000006037cfd6040 0x0f0f  0x00000000 0x4358c2ca 0x00000000 0x7784a93f 

WRITEBLKIO  0x000006110b141440 +
        0x67130f09 0xe730acc9 0x7e7f6ab4 0xbe3047eb +
        0xab4dca5e 0x01916833 0xcd4a9185 0xd88cad19 +
        0xdce165aa 0x5879ef7f 0xfe5b7df6 0xa925c750 +
        0xc7068247 0x6a0788f2 0xba873c33 0xb70e82fd 

READMSKIO   0x000006124d7f3fc0 0x00ff  0x00000000 0x00000000 0x6e6aafd5 0x7ee82059 

WRITEBLK  0x000000038df4ac80 +
        0x9514c722 0xa42e969d 0x1be9239e 0x6cea856f +
        0x15230b4b 0x49495273 0x3f154e5d 0xb9d04dc8 +
        0xe6b5f995 0x418a1eea 0x01dd1ff8 0x779a1a84 +
        0x62a16cef 0x05c6fa76 0xc182b8db 0x81831bff 

WRITEIO  0x0000060f2a072d80 4 0x3a57c985 

WRITEBLK  0x00000005c7cae700 +
        0xc19d47ca 0xd5dd199e 0x4facf443 0x394e8f66 +
        0xfe177cf7 0x68609832 0xc115c6eb 0x804a6c58 +
        0xc8705ab3 0x923c2587 0xc334bfe8 0x38b5d5b0 +
        0xc993a881 0xf967c201 0x695f8684 0xd0d11889 

READMSKIO   0x00000606ea8d8640 0xf000  0x654bef68 0x00000000 0x00000000 0x00000000 

WRITEBLKIO  0x0000060db848ebc0 +
        0x0723cd6e 0xe60d090f 0x7245cbf4 0x7df133c6 +
        0x64097751 0xef3afc7c 0x0c12efca 0xac112fdd +
        0x68a22745 0xc33a59f0 0xde2b5986 0x298a889e +
        0x68884118 0xe56a4ff6 0xa407205e 0x2248fb83 

READBLKIO  0x0000061dae903000 +
        0x7189285c 0x504325e9 0xd0d36ad4 0xdbec1f8e +
        0x24fcac06 0x6b9867c5 0xb572643c 0x77b1d025 +
        0xf9f9d4b7 0xd921cd61 0x1807a57c 0xed9b3249 +
        0x3ebdc225 0xa263a6dc 0x1f0d8cbb 0xd9835d49 

READBLKIO  0x0000061bc5938140 +
        0x6498cc8b 0xbcd8ee67 0x3fe27d6b 0x3763e45f +
        0x496afe67 0x35197795 0x38f40d6a 0x2c62203c +
        0x3e86f68b 0x01b182be 0x0160855f 0x16456da4 +
        0xbde4ffd0 0xe31f2668 0xbad7dffd 0xfcdf06cf 

WRITEMSKIO  0x00000605cfe9bbc0 0x0000  0x00000000 0x00000000 0x00000000 0x00000000 

READBLKIO  0x000006110b141440 +
        0x67130f09 0xe730acc9 0x7e7f6ab4 0xbe3047eb +
        0xab4dca5e 0x01916833 0xcd4a9185 0xd88cad19 +
        0xdce165aa 0x5879ef7f 0xfe5b7df6 0xa925c750 +
        0xc7068247 0x6a0788f2 0xba873c33 0xb70e82fd 

READBLK  0x000000038df4ac80 +
        0x9514c722 0xa42e969d 0x1be9239e 0x6cea856f +
        0x15230b4b 0x49495273 0x3f154e5d 0xb9d04dc8 +
        0xe6b5f995 0x418a1eea 0x01dd1ff8 0x779a1a84 +
        0x62a16cef 0x05c6fa76 0xc182b8db 0x81831bff 

WRITEBLK  0x00000005b221e540 +
        0x4e2b201d 0x0ebb0197 0x79d4ab4d 0x969079a1 +
        0x8b052845 0x8107ad58 0x3f568141 0xb432593c +
        0xc3dfbf38 0x28f8ec92 0xdbc8fe29 0x08dd90f9 +
        0x8b5a5ec3 0x79976810 0x7644c19b 0xebef2f4f 

READBLKIO  0x0000060db848ebc0 +
        0x0723cd6e 0xe60d090f 0x7245cbf4 0x7df133c6 +
        0x64097751 0xef3afc7c 0x0c12efca 0xac112fdd +
        0x68a22745 0xc33a59f0 0xde2b5986 0x298a889e +
        0x68884118 0xe56a4ff6 0xa407205e 0x2248fb83 

READMSKIO   0x00000605cfe9bbc0 0x0000  0x00000000 0x00000000 0x00000000 0x00000000 

WRITEIO  0x0000061d9a275d00 8 0x88c9f123 0x0f718dbc 

READIO  0x000006120bc456c0 4 0x38ca2df7 
WRITEMSK  0x00000005c7cae700 0xff00f0f0f00fff00 +
        0xd0ef8abb 0xb8c32633 0x00000000 0x00000000 +
        0x798caebb 0x00000000 0x01cf4831 0x00000000 +
        0xfd5c2ae8 0x00000000 0x00000000 0xa8c9ec3f +
        0x1375130d 0x4ea62254 0x00000000 0x00000000 

WRITEBLK  0x00000009c34065c0 +
        0x439e7fb4 0x2f53e067 0xa257467d 0x8c7c5243 +
        0x1a91ceb9 0xd049a13a 0x57fb7cfe 0x651b8c7d +
        0x24fad3b8 0x9776f01e 0x6386fa8b 0xa77a55a6 +
        0xbe237a59 0x7c0d2904 0x54529226 0x4e1970fe 

WRITEMSKIO  0x000006114edc1a40 0xff0f  0x20b1c6fa 0xed2f0426 0x00000000 0x449c2b9e 

READIO  0x0000061581f03a80 8 0xc557f8c4 0xa29f1624 

BA LABEL_0
