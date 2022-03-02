circuit cmac_pad :
    module cmac_pad :
        input clk: Clock
        input rst: UInt<1>

        input s_axis_tdata: UInt<512>
        input s_axis_tkeep: UInt<64>
        input s_axis_tvalid: UInt<1>
        output s_axis_tready: UInt<1>
        input s_axis_tlast: UInt<1>
        input s_axis_tuser: UInt<1>

        output m_axis_tdata: UInt<512>
        output m_axis_tkeep: UInt<64>
        output m_axis_tvalid: UInt<1>
        input m_axis_tready: UInt<1>
        output m_axis_tlast: UInt<1>
        output m_axis_tuser: UInt<1>

        reg frame_reg: UInt<1>, clk with :
            reset => (rst, UInt<1>("h0"))

        node _T = and(s_axis_tvalid, s_axis_tready)
        node _frame_reg_T = mux(_T, not(s_axis_tlast), frame_reg)
        frame_reg <= _frame_reg_T

        node _m_axis_tdata_T1 = mux(bits(s_axis_tkeep, 0, 0), bits(s_axis_tdata, 7, 0), UInt<8>("h0"))
        node _m_axis_tdata_T2 = mux(bits(s_axis_tkeep, 1, 1), bits(s_axis_tdata, 15, 8), UInt<8>("h0"))
        node _m_axis_tdata_T3 = mux(bits(s_axis_tkeep, 2, 2), bits(s_axis_tdata, 23, 16), UInt<8>("h0"))
        node _m_axis_tdata_T4 = mux(bits(s_axis_tkeep, 3, 3), bits(s_axis_tdata, 31, 24), UInt<8>("h0"))
        node _m_axis_tdata_T5 = mux(bits(s_axis_tkeep, 4, 4), bits(s_axis_tdata, 39, 32), UInt<8>("h0"))
        node _m_axis_tdata_T6 = mux(bits(s_axis_tkeep, 5, 5), bits(s_axis_tdata, 47, 40), UInt<8>("h0"))
        node _m_axis_tdata_T7 = mux(bits(s_axis_tkeep, 6, 6), bits(s_axis_tdata, 55, 48), UInt<8>("h0"))
        node _m_axis_tdata_T8 = mux(bits(s_axis_tkeep, 7, 7), bits(s_axis_tdata, 63, 56), UInt<8>("h0"))
        node _m_axis_tdata_T9 = mux(bits(s_axis_tkeep, 8, 8), bits(s_axis_tdata, 71, 64), UInt<8>("h0"))
        node _m_axis_tdata_T10 = mux(bits(s_axis_tkeep, 9, 9), bits(s_axis_tdata, 79, 72), UInt<8>("h0"))
        node _m_axis_tdata_T11 = mux(bits(s_axis_tkeep, 10, 10), bits(s_axis_tdata, 87, 80), UInt<8>("h0"))
        node _m_axis_tdata_T12 = mux(bits(s_axis_tkeep, 11, 11), bits(s_axis_tdata, 95, 88), UInt<8>("h0"))
        node _m_axis_tdata_T13 = mux(bits(s_axis_tkeep, 12, 12), bits(s_axis_tdata, 103, 96), UInt<8>("h0"))
        node _m_axis_tdata_T14 = mux(bits(s_axis_tkeep, 13, 13), bits(s_axis_tdata, 111, 104), UInt<8>("h0"))
        node _m_axis_tdata_T15 = mux(bits(s_axis_tkeep, 14, 14), bits(s_axis_tdata, 119, 112), UInt<8>("h0"))
        node _m_axis_tdata_T16 = mux(bits(s_axis_tkeep, 15, 15), bits(s_axis_tdata, 127, 120), UInt<8>("h0"))
        node _m_axis_tdata_T17 = mux(bits(s_axis_tkeep, 16, 16), bits(s_axis_tdata, 135, 128), UInt<8>("h0"))
        node _m_axis_tdata_T18 = mux(bits(s_axis_tkeep, 17, 17), bits(s_axis_tdata, 143, 136), UInt<8>("h0"))
        node _m_axis_tdata_T19 = mux(bits(s_axis_tkeep, 18, 18), bits(s_axis_tdata, 151, 144), UInt<8>("h0"))
        node _m_axis_tdata_T20 = mux(bits(s_axis_tkeep, 19, 19), bits(s_axis_tdata, 159, 152), UInt<8>("h0"))
        node _m_axis_tdata_T21 = mux(bits(s_axis_tkeep, 20, 20), bits(s_axis_tdata, 167, 160), UInt<8>("h0"))
        node _m_axis_tdata_T22 = mux(bits(s_axis_tkeep, 21, 21), bits(s_axis_tdata, 175, 168), UInt<8>("h0"))
        node _m_axis_tdata_T23 = mux(bits(s_axis_tkeep, 22, 22), bits(s_axis_tdata, 183, 176), UInt<8>("h0"))
        node _m_axis_tdata_T24 = mux(bits(s_axis_tkeep, 23, 23), bits(s_axis_tdata, 191, 184), UInt<8>("h0"))
        node _m_axis_tdata_T25 = mux(bits(s_axis_tkeep, 24, 24), bits(s_axis_tdata, 199, 192), UInt<8>("h0"))
        node _m_axis_tdata_T26 = mux(bits(s_axis_tkeep, 25, 25), bits(s_axis_tdata, 207, 200), UInt<8>("h0"))
        node _m_axis_tdata_T27 = mux(bits(s_axis_tkeep, 26, 26), bits(s_axis_tdata, 215, 208), UInt<8>("h0"))
        node _m_axis_tdata_T28 = mux(bits(s_axis_tkeep, 27, 27), bits(s_axis_tdata, 223, 216), UInt<8>("h0"))
        node _m_axis_tdata_T29 = mux(bits(s_axis_tkeep, 28, 28), bits(s_axis_tdata, 231, 224), UInt<8>("h0"))
        node _m_axis_tdata_T30 = mux(bits(s_axis_tkeep, 29, 29), bits(s_axis_tdata, 239, 232), UInt<8>("h0"))
        node _m_axis_tdata_T31 = mux(bits(s_axis_tkeep, 30, 30), bits(s_axis_tdata, 247, 240), UInt<8>("h0"))
        node _m_axis_tdata_T32 = mux(bits(s_axis_tkeep, 31, 31), bits(s_axis_tdata, 255, 248), UInt<8>("h0"))
        node _m_axis_tdata_T33 = mux(bits(s_axis_tkeep, 32, 32), bits(s_axis_tdata, 263, 256), UInt<8>("h0"))
        node _m_axis_tdata_T34 = mux(bits(s_axis_tkeep, 33, 33), bits(s_axis_tdata, 271, 264), UInt<8>("h0"))
        node _m_axis_tdata_T35 = mux(bits(s_axis_tkeep, 34, 34), bits(s_axis_tdata, 279, 272), UInt<8>("h0"))
        node _m_axis_tdata_T36 = mux(bits(s_axis_tkeep, 35, 35), bits(s_axis_tdata, 287, 280), UInt<8>("h0"))
        node _m_axis_tdata_T37 = mux(bits(s_axis_tkeep, 36, 36), bits(s_axis_tdata, 295, 288), UInt<8>("h0"))
        node _m_axis_tdata_T38 = mux(bits(s_axis_tkeep, 37, 37), bits(s_axis_tdata, 303, 296), UInt<8>("h0"))
        node _m_axis_tdata_T39 = mux(bits(s_axis_tkeep, 38, 38), bits(s_axis_tdata, 311, 304), UInt<8>("h0"))
        node _m_axis_tdata_T40 = mux(bits(s_axis_tkeep, 39, 39), bits(s_axis_tdata, 319, 312), UInt<8>("h0"))
        node _m_axis_tdata_T41 = mux(bits(s_axis_tkeep, 40, 40), bits(s_axis_tdata, 327, 320), UInt<8>("h0"))
        node _m_axis_tdata_T42 = mux(bits(s_axis_tkeep, 41, 41), bits(s_axis_tdata, 335, 328), UInt<8>("h0"))
        node _m_axis_tdata_T43 = mux(bits(s_axis_tkeep, 42, 42), bits(s_axis_tdata, 343, 336), UInt<8>("h0"))
        node _m_axis_tdata_T44 = mux(bits(s_axis_tkeep, 43, 43), bits(s_axis_tdata, 351, 344), UInt<8>("h0"))
        node _m_axis_tdata_T45 = mux(bits(s_axis_tkeep, 44, 44), bits(s_axis_tdata, 359, 352), UInt<8>("h0"))
        node _m_axis_tdata_T46 = mux(bits(s_axis_tkeep, 45, 45), bits(s_axis_tdata, 367, 360), UInt<8>("h0"))
        node _m_axis_tdata_T47 = mux(bits(s_axis_tkeep, 46, 46), bits(s_axis_tdata, 375, 368), UInt<8>("h0"))
        node _m_axis_tdata_T48 = mux(bits(s_axis_tkeep, 47, 47), bits(s_axis_tdata, 383, 376), UInt<8>("h0"))
        node _m_axis_tdata_T49 = mux(bits(s_axis_tkeep, 48, 48), bits(s_axis_tdata, 391, 384), UInt<8>("h0"))
        node _m_axis_tdata_T50 = mux(bits(s_axis_tkeep, 49, 49), bits(s_axis_tdata, 399, 392), UInt<8>("h0"))
        node _m_axis_tdata_T51 = mux(bits(s_axis_tkeep, 50, 50), bits(s_axis_tdata, 407, 400), UInt<8>("h0"))
        node _m_axis_tdata_T52 = mux(bits(s_axis_tkeep, 51, 51), bits(s_axis_tdata, 415, 408), UInt<8>("h0"))
        node _m_axis_tdata_T53 = mux(bits(s_axis_tkeep, 52, 52), bits(s_axis_tdata, 423, 416), UInt<8>("h0"))
        node _m_axis_tdata_T54 = mux(bits(s_axis_tkeep, 53, 53), bits(s_axis_tdata, 431, 424), UInt<8>("h0"))
        node _m_axis_tdata_T55 = mux(bits(s_axis_tkeep, 54, 54), bits(s_axis_tdata, 439, 432), UInt<8>("h0"))
        node _m_axis_tdata_T56 = mux(bits(s_axis_tkeep, 55, 55), bits(s_axis_tdata, 447, 440), UInt<8>("h0"))
        node _m_axis_tdata_T57 = mux(bits(s_axis_tkeep, 56, 56), bits(s_axis_tdata, 455, 448), UInt<8>("h0"))
        node _m_axis_tdata_T58 = mux(bits(s_axis_tkeep, 57, 57), bits(s_axis_tdata, 463, 456), UInt<8>("h0"))
        node _m_axis_tdata_T59 = mux(bits(s_axis_tkeep, 58, 58), bits(s_axis_tdata, 471, 464), UInt<8>("h0"))
        node _m_axis_tdata_T60 = mux(bits(s_axis_tkeep, 59, 59), bits(s_axis_tdata, 479, 472), UInt<8>("h0"))
        node _m_axis_tdata_T61 = mux(bits(s_axis_tkeep, 60, 60), bits(s_axis_tdata, 487, 480), UInt<8>("h0"))
        node _m_axis_tdata_T62 = mux(bits(s_axis_tkeep, 61, 61), bits(s_axis_tdata, 495, 488), UInt<8>("h0"))
        node _m_axis_tdata_T63 = mux(bits(s_axis_tkeep, 62, 62), bits(s_axis_tdata, 503, 496), UInt<8>("h0"))
        node _m_axis_tdata_T64 = mux(bits(s_axis_tkeep, 63, 63), bits(s_axis_tdata, 511, 504), UInt<8>("h0"))

        node _m_axis_tdata_T65 = cat(_m_axis_tdata_T2, _m_axis_tdata_T1)
        node _m_axis_tdata_T66 = cat(_m_axis_tdata_T3, _m_axis_tdata_T65)
        node _m_axis_tdata_T67 = cat(_m_axis_tdata_T4, _m_axis_tdata_T66)
        node _m_axis_tdata_T68 = cat(_m_axis_tdata_T5, _m_axis_tdata_T67)
        node _m_axis_tdata_T69 = cat(_m_axis_tdata_T6, _m_axis_tdata_T68)
        node _m_axis_tdata_T70 = cat(_m_axis_tdata_T7, _m_axis_tdata_T69)
        node _m_axis_tdata_T71 = cat(_m_axis_tdata_T8, _m_axis_tdata_T70)
        node _m_axis_tdata_T72 = cat(_m_axis_tdata_T9, _m_axis_tdata_T71)
        node _m_axis_tdata_T73 = cat(_m_axis_tdata_T10, _m_axis_tdata_T72)
        node _m_axis_tdata_T74 = cat(_m_axis_tdata_T11, _m_axis_tdata_T73)
        node _m_axis_tdata_T75 = cat(_m_axis_tdata_T12, _m_axis_tdata_T74)
        node _m_axis_tdata_T76 = cat(_m_axis_tdata_T13, _m_axis_tdata_T75)
        node _m_axis_tdata_T77 = cat(_m_axis_tdata_T14, _m_axis_tdata_T76)
        node _m_axis_tdata_T78 = cat(_m_axis_tdata_T15, _m_axis_tdata_T77)
        node _m_axis_tdata_T79 = cat(_m_axis_tdata_T16, _m_axis_tdata_T78)
        node _m_axis_tdata_T80 = cat(_m_axis_tdata_T17, _m_axis_tdata_T79)
        node _m_axis_tdata_T81 = cat(_m_axis_tdata_T18, _m_axis_tdata_T80)
        node _m_axis_tdata_T82 = cat(_m_axis_tdata_T19, _m_axis_tdata_T81)
        node _m_axis_tdata_T83 = cat(_m_axis_tdata_T20, _m_axis_tdata_T82)
        node _m_axis_tdata_T84 = cat(_m_axis_tdata_T21, _m_axis_tdata_T83)
        node _m_axis_tdata_T85 = cat(_m_axis_tdata_T22, _m_axis_tdata_T84)
        node _m_axis_tdata_T86 = cat(_m_axis_tdata_T23, _m_axis_tdata_T85)
        node _m_axis_tdata_T87 = cat(_m_axis_tdata_T24, _m_axis_tdata_T86)
        node _m_axis_tdata_T88 = cat(_m_axis_tdata_T25, _m_axis_tdata_T87)
        node _m_axis_tdata_T89 = cat(_m_axis_tdata_T26, _m_axis_tdata_T88)
        node _m_axis_tdata_T90 = cat(_m_axis_tdata_T27, _m_axis_tdata_T89)
        node _m_axis_tdata_T91 = cat(_m_axis_tdata_T28, _m_axis_tdata_T90)
        node _m_axis_tdata_T92 = cat(_m_axis_tdata_T29, _m_axis_tdata_T91)
        node _m_axis_tdata_T93 = cat(_m_axis_tdata_T30, _m_axis_tdata_T92)
        node _m_axis_tdata_T94 = cat(_m_axis_tdata_T31, _m_axis_tdata_T93)
        node _m_axis_tdata_T95 = cat(_m_axis_tdata_T32, _m_axis_tdata_T94)
        node _m_axis_tdata_T96 = cat(_m_axis_tdata_T33, _m_axis_tdata_T95)
        node _m_axis_tdata_T97 = cat(_m_axis_tdata_T34, _m_axis_tdata_T96)
        node _m_axis_tdata_T98 = cat(_m_axis_tdata_T35, _m_axis_tdata_T97)
        node _m_axis_tdata_T99 = cat(_m_axis_tdata_T36, _m_axis_tdata_T98)
        node _m_axis_tdata_T100 = cat(_m_axis_tdata_T37, _m_axis_tdata_T99)
        node _m_axis_tdata_T101 = cat(_m_axis_tdata_T38, _m_axis_tdata_T100)
        node _m_axis_tdata_T102 = cat(_m_axis_tdata_T39, _m_axis_tdata_T101)
        node _m_axis_tdata_T103 = cat(_m_axis_tdata_T40, _m_axis_tdata_T102)
        node _m_axis_tdata_T104 = cat(_m_axis_tdata_T41, _m_axis_tdata_T103)
        node _m_axis_tdata_T105 = cat(_m_axis_tdata_T42, _m_axis_tdata_T104)
        node _m_axis_tdata_T106 = cat(_m_axis_tdata_T43, _m_axis_tdata_T105)
        node _m_axis_tdata_T107 = cat(_m_axis_tdata_T44, _m_axis_tdata_T106)
        node _m_axis_tdata_T108 = cat(_m_axis_tdata_T45, _m_axis_tdata_T107)
        node _m_axis_tdata_T109 = cat(_m_axis_tdata_T46, _m_axis_tdata_T108)
        node _m_axis_tdata_T110 = cat(_m_axis_tdata_T47, _m_axis_tdata_T109)
        node _m_axis_tdata_T111 = cat(_m_axis_tdata_T48, _m_axis_tdata_T110)
        node _m_axis_tdata_T112 = cat(_m_axis_tdata_T49, _m_axis_tdata_T111)
        node _m_axis_tdata_T113 = cat(_m_axis_tdata_T50, _m_axis_tdata_T112)
        node _m_axis_tdata_T114 = cat(_m_axis_tdata_T51, _m_axis_tdata_T113)
        node _m_axis_tdata_T115 = cat(_m_axis_tdata_T52, _m_axis_tdata_T114)
        node _m_axis_tdata_T116 = cat(_m_axis_tdata_T53, _m_axis_tdata_T115)
        node _m_axis_tdata_T117 = cat(_m_axis_tdata_T54, _m_axis_tdata_T116)
        node _m_axis_tdata_T118 = cat(_m_axis_tdata_T55, _m_axis_tdata_T117)
        node _m_axis_tdata_T119 = cat(_m_axis_tdata_T56, _m_axis_tdata_T118)
        node _m_axis_tdata_T120 = cat(_m_axis_tdata_T57, _m_axis_tdata_T119)
        node _m_axis_tdata_T121 = cat(_m_axis_tdata_T58, _m_axis_tdata_T120)
        node _m_axis_tdata_T122 = cat(_m_axis_tdata_T59, _m_axis_tdata_T121)
        node _m_axis_tdata_T123 = cat(_m_axis_tdata_T60, _m_axis_tdata_T122)
        node _m_axis_tdata_T124 = cat(_m_axis_tdata_T61, _m_axis_tdata_T123)
        node _m_axis_tdata_T125 = cat(_m_axis_tdata_T62, _m_axis_tdata_T124)
        node _m_axis_tdata_T126 = cat(_m_axis_tdata_T63, _m_axis_tdata_T125)
        node _m_axis_tdata_T127 = cat(_m_axis_tdata_T64, _m_axis_tdata_T126)

        node _m_axis_tkeep_T1 = mux(frame_reg, UInt<60>("h0"), UInt<60>("hfffffffffffffff"))
        node _m_axis_tkeep_T = or(_m_axis_tkeep_T1, s_axis_tkeep)

        m_axis_tdata <= _m_axis_tdata_T127
        m_axis_tkeep <= _m_axis_tkeep_T
        m_axis_tvalid <= s_axis_tvalid
        s_axis_tready <= m_axis_tready
        m_axis_tlast <= s_axis_tlast
        m_axis_tuser <= s_axis_tuser
