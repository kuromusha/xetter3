0 '������������������������������������
0 '�                                  �
0 '�             XETTER 3             �
0 '�                                  �
0 '�    Programmed by K.Kuromusha     �
0 '�                                  �
0 '�    1990/3/8            No.16     �
0 '�                                  �
0 '������������������������������������
1000 CLEAR&HE000:PLAY 250:SOUND 7,63
1010 WIDTH 40:CLS4:INIT:SCREEN:CLICK OFF:REPEAT OFF
1020 LOCATE 11,12:PRINT"Wait a minute."
1030 OPTIONSCREEN 2:INIT"MEM:"
1040 LOADM"XETTER 3.Dat":SAVEM"MEM:XETTER 3.Dat",&HE000,&HFDFF
1050 DEFCHR$(32)=HEXCHR$("000000000000000000000000000000000000000000000000")
1060 DEFCHR$(33)=HEXCHR$("0000000000000000EEEEEE00BBBBBB000000000000000000")
1070 DEFCHR$(34)=HEXCHR$("A5DBE7BDFF24E7E7A5DBE7BDFF24A54218245A2400000000")
1080 DEFCHR$(35)=HEXCHR$("BD66C3C3FF24A5420024424200000000BD7EDBDBFF24A542")
1090 DEFCHR$(36)=HEXCHR$("183C7EFFFF7E3C18000000181800000000183C7E7E3C1800")
1100 DEFCHR$(37)=HEXCHR$("007E7E7E7E7E7E007EFFC3DBCBC3FF7E7E81BDBDBDBD817E")
1110 DEFCHR$(38)=HEXCHR$("001020482004100820285AB5FEFEEE7C0000100000500000")
1120 DEFCHR$(39)=HEXCHR$("383808300000000038380830000000003838083000000000")
1130 DEFCHR$(40)=HEXCHR$("8FEFEFEFEFEF83FF8FEFEFEFEFEF83FF8FEFEFEFEFEF83FF")
1140 DEFCHR$(41)=HEXCHR$("81FDFD819F9F81FF81FDFD819F9F81FF81FDFD819F9F81FF")
1150 DEFCHR$(42)=HEXCHR$("3F1F1F1F1F1F3F0000000000000000003F19191919193F00")
1160 DEFCHR$(43)=HEXCHR$("FCF8F8F8F8F8FC000000000000000000FC9898989898FC00")
1170 DEFCHR$(44)=HEXCHR$("000000003838083000000000383808300000000038380830")
1180 DEFCHR$(45)=HEXCHR$("00007E7E0000000000007E7E0000000000007E7E00000000")
1190 DEFCHR$(46)=HEXCHR$("000000003838380000000000383838000000000038383800")
1200 DEFCHR$(47)=HEXCHR$("181818181800180018181818180018001818181818001800")
1210 DEFCHR$(48)=HEXCHR$("7C444C5464647C007C444C5464647C007C444C5464647C00")
1220 DEFCHR$(49)=HEXCHR$("7010101010107C007010101010107C007010101010107C00")
1230 DEFCHR$(50)=HEXCHR$("7E02027E60607E007E02027E60607E007E02027E60607E00")
1240 DEFCHR$(51)=HEXCHR$("3E02023E06067E003E02023E06067E003E02023E06067E00")
1250 DEFCHR$(52)=HEXCHR$("044444447E0C0C00044444447E0C0C00044444447E0C0C00")
1260 DEFCHR$(53)=HEXCHR$("7E40407E06467E007E40407E06467E007E40407E06467E00")
1270 DEFCHR$(54)=HEXCHR$("7E42407E62627E007E42407E62627E007E42407E62627E00")
1280 DEFCHR$(55)=HEXCHR$("7E420408181818007E420408181818007E42040818181800")
1290 DEFCHR$(56)=HEXCHR$("7E42427E62627E007E42427E62627E007E42427E62627E00")
1300 DEFCHR$(57)=HEXCHR$("7E42427E06467E007E42427E06467E007E42427E06467E00")
1310 DEFCHR$(58)=HEXCHR$("AA55AA55AA55AA55AA55AA55AA55AA55AA55AA55AA55AA55")
1320 DEFCHR$(59)=HEXCHR$("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF")
1330 DEFCHR$(60)=HEXCHR$("001804040000000000188585818100003C7E7E7E7E3C24FF")
1340 DEFCHR$(61)=HEXCHR$("002400000000000000248181998100003C7E5A7E663C24FF")
1350 DEFCHR$(62)=HEXCHR$("00200000040A0000002008080C0E00003C7E567672303CFF")
1360 DEFCHR$(63)=HEXCHR$("000400002050000000041010307000003C7E6A6E4E0C3CFF")
1370 DEFCHR$(65)=HEXCHR$("7C447E42626262007C447E42626262007C447E4262626200")
1380 DEFCHR$(66)=HEXCHR$("7C447E4262627E007C447E4262627E007C447E4262627E00")
1390 DEFCHR$(67)=HEXCHR$("7E42406060627E007E42406060627E007E42406060627E00")
1400 DEFCHR$(68)=HEXCHR$("7C42426262627C007C42426262627C007C42426262627C00")
1410 DEFCHR$(69)=HEXCHR$("7E40784060607E007E40784060607E007E40784060607E00")
1420 DEFCHR$(70)=HEXCHR$("7E407C40606060007E407C40606060007E407C4060606000")
1430 DEFCHR$(71)=HEXCHR$("7E42404E62627E007E42404E62627E007E42404E62627E00")
1440 DEFCHR$(72)=HEXCHR$("4242427E426262004242427E426262004242427E42626200")
1450 DEFCHR$(73)=HEXCHR$("101010181818180010101018181818001010101818181800")
1460 DEFCHR$(74)=HEXCHR$("0202020606463C000202020606463C000202020606463C00")
1470 DEFCHR$(75)=HEXCHR$("424448786462620042444878646262004244487864626200")
1480 DEFCHR$(76)=HEXCHR$("4040406060607E004040406060607E004040406060607E00")
1490 DEFCHR$(77)=HEXCHR$("FC929292D2D2D200FC929292D2D2D200FC929292D2D2D200")
1500 DEFCHR$(78)=HEXCHR$("724A4A4A6A6A6600724A4A4A6A6A6600724A4A4A6A6A6600")
1510 DEFCHR$(79)=HEXCHR$("7E42424262627E007E42424262627E007E42424262627E00")
1520 DEFCHR$(80)=HEXCHR$("7E42427E606060007E42427E606060007E42427E60606000")
1530 DEFCHR$(81)=HEXCHR$("7E42424A6A647A007E42424A6A647A007E42424A6A647A00")
1540 DEFCHR$(82)=HEXCHR$("7E42427E646262007E42427E646262007E42427E64626200")
1550 DEFCHR$(83)=HEXCHR$("7E40407E06067E007E40407E06067E007E40407E06067E00")
1560 DEFCHR$(84)=HEXCHR$("7E101010181818007E101010181818007E10101018181800")
1570 DEFCHR$(85)=HEXCHR$("4242426262627E004242426262627E004242426262627E00")
1580 DEFCHR$(86)=HEXCHR$("424262622214080042426262221408004242626222140800")
1590 DEFCHR$(87)=HEXCHR$("42424A4A6A6A7E0042424A4A6A6A7E0042424A4A6A6A7E00")
1600 DEFCHR$(88)=HEXCHR$("422418182442420042241818244242004224181824424200")
1610 DEFCHR$(89)=HEXCHR$("4242427E101818004242427E101818004242427E10181800")
1620 DEFCHR$(90)=HEXCHR$("7E04081020607E007E04081020607E007E04081020607E00")
1630 DEFCHR$(91)=HEXCHR$("3C30303030303C003C30303030303C003C30303030303C00")
1640 DEFCHR$(93)=HEXCHR$("781818181818780078181818181878007818181818187800")
1650 DEFCHR$(97)=HEXCHR$("00003E023E223E0000003E023E223E0000003E023E223E00")
1660 DEFCHR$(98)=HEXCHR$("20203E2222223E0020203E2222223E0020203E2222223E00")
1670 DEFCHR$(99)=HEXCHR$("00003E2020203E0000003E2020203E0000003E2020203E00")
1680 DEFCHR$(100)=HEXCHR$("02023E2222223E0002023E2222223E0002023E2222223E00")
1690 DEFCHR$(101)=HEXCHR$("00003E223E203E0000003E223E203E0000003E223E203E00")
1700 DEFCHR$(102)=HEXCHR$("3C207820202020003C207820202020003C20782020202000")
1710 DEFCHR$(103)=HEXCHR$("00003E22223E023E00003E22223E023E00003E22223E023E")
1720 DEFCHR$(104)=HEXCHR$("20203E222222220020203E222222220020203E2222222200")
1730 DEFCHR$(105)=HEXCHR$("001800181818180000180018181818000018001818181800")
1740 DEFCHR$(106)=HEXCHR$("000200020202121E000200020202121E000200020202121E")
1750 DEFCHR$(107)=HEXCHR$("202024283028240020202428302824002020242830282400")
1760 DEFCHR$(108)=HEXCHR$("181818181818180018181818181818001818181818181800")
1770 DEFCHR$(109)=HEXCHR$("0000FE92929292000000FE92929292000000FE9292929200")
1780 DEFCHR$(110)=HEXCHR$("00003E222222220000003E222222220000003E2222222200")
1790 DEFCHR$(111)=HEXCHR$("00007E4242427E0000007E4242427E0000007E4242427E00")
1800 DEFCHR$(112)=HEXCHR$("00003E22223E202000003E22223E202000003E22223E2020")
1810 DEFCHR$(113)=HEXCHR$("00003E22223E020200003E22223E020200003E22223E0202")
1820 DEFCHR$(114)=HEXCHR$("00003E222020200000003E222020200000003E2220202000")
1830 DEFCHR$(115)=HEXCHR$("00003E203E023E0000003E203E023E0000003E203E023E00")
1840 DEFCHR$(116)=HEXCHR$("00103E1010101E0000103E1010101E0000103E1010101E00")
1850 DEFCHR$(117)=HEXCHR$("0000121212121E000000121212121E000000121212121E00")
1860 DEFCHR$(118)=HEXCHR$("000044444428100000004444442810000000444444281000")
1870 DEFCHR$(119)=HEXCHR$("0000414149497F000000414149497F000000414149497F00")
1880 DEFCHR$(120)=HEXCHR$("000022140814220000002214081422000000221408142200")
1890 DEFCHR$(121)=HEXCHR$("00002222223E023E00002222223E023E00002222223E023E")
1900 DEFCHR$(122)=HEXCHR$("00003E0408103E0000003E0408103E0000003E0408103E00")
1910 DEFCHR$(161)=HEXCHR$("000000003828380000000000382838000000000038283800")
1920 DEFCHR$(162)=HEXCHR$("382020000000000038202000000000003820200000000000")
1930 DEFCHR$(163)=HEXCHR$("000000000808380000000000080838000000000008083800")
1940 DEFCHR$(164)=HEXCHR$("000000002010080000000000201008000000000020100800")
1950 DEFCHR$(165)=HEXCHR$("000030300000000000003030000000000000303000000000")
1960 DEFCHR$(166)=HEXCHR$("007C047C04081000007C047C04081000007C047C04081000")
1970 DEFCHR$(167)=HEXCHR$("00007C041810200000007C041810200000007C0418102000")
1980 DEFCHR$(168)=HEXCHR$("000008103050100000000810305010000000081030501000")
1990 DEFCHR$(169)=HEXCHR$("0000107C440418000000107C440418000000107C44041800")
2000 DEFCHR$(170)=HEXCHR$("0000007C10107C000000007C10107C000000007C10107C00")
2010 DEFCHR$(171)=HEXCHR$("0000087C182848000000087C182848000000087C18284800")
2020 DEFCHR$(172)=HEXCHR$("0000207C242820000000207C242820000000207C24282000")
2030 DEFCHR$(173)=HEXCHR$("0000003808087C000000003808087C000000003808087C00")
2040 DEFCHR$(174)=HEXCHR$("000078087808780000007808780878000000780878087800")
2050 DEFCHR$(175)=HEXCHR$("0000005454041C000000005454041C000000005454041C00")
2060 DEFCHR$(176)=HEXCHR$("0000007C000000000000007C000000000000007C00000000")
2070 DEFCHR$(177)=HEXCHR$("7C041418101020007C041418101020007C04141810102000")
2080 DEFCHR$(178)=HEXCHR$("040810305010100004081030501010000408103050101000")
2090 DEFCHR$(179)=HEXCHR$("107C444404081000107C444404081000107C444404081000")
2100 DEFCHR$(180)=HEXCHR$("007C101010107C00007C101010107C00007C101010107C00")
2110 DEFCHR$(181)=HEXCHR$("087C081828480800087C081828480800087C081828480800")
2120 DEFCHR$(182)=HEXCHR$("207C242424244800207C242424244800207C242424244800")
2130 DEFCHR$(183)=HEXCHR$("107C107C10101000107C107C10101000107C107C10101000")
2140 DEFCHR$(184)=HEXCHR$("003C244404083000003C244404083000003C244404083000")
2150 DEFCHR$(185)=HEXCHR$("203C480808081000203C480808081000203C480808081000")
2160 DEFCHR$(186)=HEXCHR$("007C040404047C00007C040404047C00007C040404047C00")
2170 DEFCHR$(187)=HEXCHR$("287C282808102000287C282808102000287C282808102000")
2180 DEFCHR$(188)=HEXCHR$("006004640408700000600464040870000060046404087000")
2190 DEFCHR$(189)=HEXCHR$("007C040810284400007C040810284400007C040810284400")
2200 DEFCHR$(190)=HEXCHR$("207C242820201C00207C242820201C00207C242820201C00")
2210 DEFCHR$(191)=HEXCHR$("004444240408300000444424040830000044442404083000")
2220 DEFCHR$(192)=HEXCHR$("003C24540C083000003C24540C083000003C24540C083000")
2230 DEFCHR$(193)=HEXCHR$("0870107C101020000870107C101020000870107C10102000")
2240 DEFCHR$(194)=HEXCHR$("005454540408100000545454040810000054545404081000")
2250 DEFCHR$(195)=HEXCHR$("38007C101010200038007C101010200038007C1010102000")
2260 DEFCHR$(196)=HEXCHR$("202020302820200020202030282020002020203028202000")
2270 DEFCHR$(197)=HEXCHR$("10107C101020400010107C101020400010107C1010204000")
2280 DEFCHR$(198)=HEXCHR$("0000380000007C000000380000007C000000380000007C00")
2290 DEFCHR$(199)=HEXCHR$("007C042810284000007C042810284000007C042810284000")
2300 DEFCHR$(200)=HEXCHR$("107C081038541000107C081038541000107C081038541000")
2310 DEFCHR$(201)=HEXCHR$("080808080810200008080808081020000808080808102000")
2320 DEFCHR$(202)=HEXCHR$("001008444444440000100844444444000010084444444400")
2330 DEFCHR$(203)=HEXCHR$("40407C4040407C0040407C4040407C0040407C4040407C00")
2340 DEFCHR$(204)=HEXCHR$("007C040404083000007C040404083000007C040404083000")
2350 DEFCHR$(205)=HEXCHR$("002050080404000000205008040400000020500804040000")
2360 DEFCHR$(206)=HEXCHR$("107C101054541000107C101054541000107C101054541000")
2370 DEFCHR$(207)=HEXCHR$("007C040428100800007C040428100800007C040428100800")
2380 DEFCHR$(208)=HEXCHR$("003800380078040000380038007804000038003800780400")
2390 DEFCHR$(209)=HEXCHR$("00102040447C040000102040447C040000102040447C0400")
2400 DEFCHR$(210)=HEXCHR$("000404281028400000040428102840000004042810284000")
2410 DEFCHR$(211)=HEXCHR$("007C207C20201C00007C207C20201C00007C207C20201C00")
2420 DEFCHR$(212)=HEXCHR$("20207C242820200020207C242820200020207C2428202000")
2430 DEFCHR$(213)=HEXCHR$("0038080808087C000038080808087C000038080808087C00")
2440 DEFCHR$(214)=HEXCHR$("007C047C04047C00007C047C04047C00007C047C04047C00")
2450 DEFCHR$(215)=HEXCHR$("38007C040408100038007C040408100038007C0404081000")
2460 DEFCHR$(216)=HEXCHR$("242424242408100024242424240810002424242424081000")
2470 DEFCHR$(217)=HEXCHR$("001050505454580000105050545458000010505054545800")
2480 DEFCHR$(218)=HEXCHR$("004040444850600000404044485060000040404448506000")
2490 DEFCHR$(219)=HEXCHR$("007C444444447C00007C444444447C00007C444444447C00")
2500 DEFCHR$(220)=HEXCHR$("007C444404081000007C444404081000007C444404081000")
2510 DEFCHR$(221)=HEXCHR$("006000040408700000600004040870000060000404087000")
2520 DEFCHR$(222)=HEXCHR$("104820000000000010482000000000001048200000000000")
2530 DEFCHR$(223)=HEXCHR$("382838000000000038283800000000003828380000000000")
2540 COLOR0:KEY0,"CLE.&HD000"+CHR$(13)+"LO.M"+CHR$(34)+"XETTER 3.Obj"+CHR$(13)+"LO.M"+CHR$(34)+"XETTER 3.MSC"+CHR$(13)+"R."+CHR$(34)+"XETTER 3.Bas"+CHR$(13)
2550 NEW
