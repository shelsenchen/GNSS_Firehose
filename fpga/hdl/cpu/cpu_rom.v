/*
 * cpu_rom generated by KCAsm at Sat Sep 06 07:44:28 PDT 2014
 */

module cpu_rom(address, instruction, clk);
input [9:0] address;
output [17:0] instruction;
input clk;
RAMB16_S18 ram_1024_x_18(
	.DI (16'b0),
	.DIP (2'b0),
	.EN (1'b1),
	.WE (1'b0),
	.SSR (1'b0),
	.CLK (clk),
	.ADDR (address),
	.DO (instruction[15:0]),
	.DOP (instruction[17:16])
);
/*	synthesis
	init_00 = "02B2C01E0001009AA000008F0073E308500B53406408432C400100040031000C"
	init_01 = "01310002020C014100010140000401400003014000020140000102B2C01E0000"
	init_02 = "E00B0001E0090000029903030299030202990301080007F0020C01330003020C"
	init_03 = "005854414072A0000056543D4077A00000545439406D0061B00040004021A000"
	init_04 = "01060106A00FA0000188544D4070A000005E54494073A000005B54454078A000"
	init_05 = "006A7020A000006A1020A000006A5020A000D120A0001210A000D10001060106"
	init_06 = "CF220F01C020506A4F004F22A000CF210F00CF210F01402050614F004F21A000"
	init_07 = "408B548048005480470054834600028202910301B0004300630BA000CF220F00"
	init_08 = "6309A0005477430483010299A8008701408B54884803548847FF408AE800C701"
	init_09 = "0000010C0360020401020080A000C515E50A050E050EA504018F0301B4004300"
	init_0A = "010C010C0363020401000000010C010C03620080010C010C0361010C010C0100"
	init_0B = "010C0307020001000001010C0306020001660006010C010C0365010C010C0364"
	init_0C = "0034010C030A024001000010010C0349025501550055010C0308020001110011"
	init_0D = "01000002010C036D02060102003B010C036C0200010C0013010C030B02000100"
	init_0E = "020001A80083010C0318020001000000010C03100204015500C1010C030E0200"
	init_0F = "03FE020301000002010C03FD020301800000010C031C020001100000010C031A"
	init_10 = "012A040005001400A00002B8010C010002B8010C030B02000101003402B8010C"
	init_11 = "45088501012A040005001420551545088501012A040005001410550E45088501"
	init_12 = "09060802413009040800592EA0000137552345088501012A040005001430551C"
	init_13 = "A00002A8C80002A8C90002A8C80009010800A00002A8C80002A8C90002A8C800"
	init_14 = "031B02050162031B02040162030602030162031A020101620303020001580101"
	init_15 = "D9800909415F0901555E41009800080BA0000162038802080162032802060162"
	init_16 = "0A00556A4A078A0101790B000B001B200A0001790100010001580100A00002A8"
	init_17 = "0C0B09070803417F09050801597DA0000158010155714A088A0101790B001B30"
	init_18 = "01E6A000006A1050006A1040018F1320A00002A8D8C002A8D9C002A8D8C09C00"
	init_19 = "870101EE06000700060006000600163001E601E601E601E601E601E601EA01EA"
	init_1A = "A00055A5471087010400050741AC0400050659AA01FB070001FB01FB559D4705"
	init_1B = "05000400031F01C215201410130001C205010400031FA00001B5020001F0001C"
	init_1C = "0700060006000600163001E601E601E601E601E601EA01E601EA01E6A00001C2"
	init_1D = "0700165055D94708870101EE06000700164001E601EA55D04705870101EE0600"
	init_1E = "080159F2A00001EE06000680A00001EE06000600A00055E04708870101EE0600"
	init_1F = "02A8C804090408004602A00002A8C80402A8C90402A8C8040907080341F40905"
	init_20 = "0237030202050232A00006000600A000060006805209A60202A8C80402A8C904"
	init_21 = "020B02370300020A023703060209023703670208023703CC0207023703400206"
	init_22 = "0300020002370300020402370300020302370310020202371310020102370308"
	init_23 = "1520026F025D090002640607050605600271A0000254040102490401A0000237"
	init_24 = "AEFD0D061D405EF08F11CF011F00A0000276026F026406081530026F02640608"
	init_25 = "040102491490A00002A8DEF0DE40AEFE5EF08F11CF011F00A00002A8DEF0DED0"
	init_26 = "027BA00056655A608A01025D0901426A09005A6905000A00A000025404000254"
	init_27 = "04000254040102490401A0000249040102540401A0000254040002490400A000"
	init_28 = "0601A00006005A8FD4505A8FD45055F08F0154F08F140F06CF011F30A0000254"
	init_29 = "D8F08F01D7F08F060F06CF011F30A00078F08F0177F08F000F06CF011F30A000"
	init_2A = "4FD08F010F00A00056A94F1A8F010F00A000F8F08F01F7F08F000F06CF011F30"
	init_2B = "00000000A00056B94D0A8D0102B20D00A00056B34EFA8E0102AD0E00A00056AE"
	init_2C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2F = "0000000000000000000000000000000000000000000000000000000000000000"
	init_30 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_31 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_32 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_33 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_34 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_35 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_36 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_37 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_38 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_39 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3F = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_00 = "F777C9288B4A20D2CB2CA88AA2F6F6F6F6F6F79288CCC0C30C333338E3BED0FF"
	initp_01 = "00C0300C0300C0300C0300C0300C0300C0300F3CF00F0F3C300AA8C92D75F775"
	initp_02 = "030ECD7835E838CB8CD4B0C30C30C30CBBB82EEE0C3BD7835E0D7835E0BCF00F"
	initp_03 = "E02EEE0C3B8B8B5E0D783F5E2A3FFFFB030302C0B5AEBCFD78A8FFFFECCCBBB9"
	initp_04 = "332CCB32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3A28CEE"
	initp_05 = "000000000000000000000000000000000B5CB5CB52D4A664999211922374464B"
	initp_06 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_07 = "0000000000000000000000000000000000000000000000000000000000000000"
*/
defparam ram_1024_x_18.INIT_00 = 256'h02B2C01E0001009AA000008F0073E308500B53406408432C400100040031000C;
defparam ram_1024_x_18.INIT_01 = 256'h01310002020C014100010140000401400003014000020140000102B2C01E0000;
defparam ram_1024_x_18.INIT_02 = 256'hE00B0001E0090000029903030299030202990301080007F0020C01330003020C;
defparam ram_1024_x_18.INIT_03 = 256'h005854414072A0000056543D4077A00000545439406D0061B00040004021A000;
defparam ram_1024_x_18.INIT_04 = 256'h01060106A00FA0000188544D4070A000005E54494073A000005B54454078A000;
defparam ram_1024_x_18.INIT_05 = 256'h006A7020A000006A1020A000006A5020A000D120A0001210A000D10001060106;
defparam ram_1024_x_18.INIT_06 = 256'hCF220F01C020506A4F004F22A000CF210F00CF210F01402050614F004F21A000;
defparam ram_1024_x_18.INIT_07 = 256'h408B548048005480470054834600028202910301B0004300630BA000CF220F00;
defparam ram_1024_x_18.INIT_08 = 256'h6309A0005477430483010299A8008701408B54884803548847FF408AE800C701;
defparam ram_1024_x_18.INIT_09 = 256'h0000010C0360020401020080A000C515E50A050E050EA504018F0301B4004300;
defparam ram_1024_x_18.INIT_0A = 256'h010C010C0363020401000000010C010C03620080010C010C0361010C010C0100;
defparam ram_1024_x_18.INIT_0B = 256'h010C0307020001000001010C0306020001660006010C010C0365010C010C0364;
defparam ram_1024_x_18.INIT_0C = 256'h0034010C030A024001000010010C0349025501550055010C0308020001110011;
defparam ram_1024_x_18.INIT_0D = 256'h01000002010C036D02060102003B010C036C0200010C0013010C030B02000100;
defparam ram_1024_x_18.INIT_0E = 256'h020001A80083010C0318020001000000010C03100204015500C1010C030E0200;
defparam ram_1024_x_18.INIT_0F = 256'h03FE020301000002010C03FD020301800000010C031C020001100000010C031A;
defparam ram_1024_x_18.INIT_10 = 256'h012A040005001400A00002B8010C010002B8010C030B02000101003402B8010C;
defparam ram_1024_x_18.INIT_11 = 256'h45088501012A040005001420551545088501012A040005001410550E45088501;
defparam ram_1024_x_18.INIT_12 = 256'h09060802413009040800592EA0000137552345088501012A040005001430551C;
defparam ram_1024_x_18.INIT_13 = 256'hA00002A8C80002A8C90002A8C80009010800A00002A8C80002A8C90002A8C800;
defparam ram_1024_x_18.INIT_14 = 256'h031B02050162031B02040162030602030162031A020101620303020001580101;
defparam ram_1024_x_18.INIT_15 = 256'hD9800909415F0901555E41009800080BA0000162038802080162032802060162;
defparam ram_1024_x_18.INIT_16 = 256'h0A00556A4A078A0101790B000B001B200A0001790100010001580100A00002A8;
defparam ram_1024_x_18.INIT_17 = 256'h0C0B09070803417F09050801597DA0000158010155714A088A0101790B001B30;
defparam ram_1024_x_18.INIT_18 = 256'h01E6A000006A1050006A1040018F1320A00002A8D8C002A8D9C002A8D8C09C00;
defparam ram_1024_x_18.INIT_19 = 256'h870101EE06000700060006000600163001E601E601E601E601E601E601EA01EA;
defparam ram_1024_x_18.INIT_1A = 256'hA00055A5471087010400050741AC0400050659AA01FB070001FB01FB559D4705;
defparam ram_1024_x_18.INIT_1B = 256'h05000400031F01C215201410130001C205010400031FA00001B5020001F0001C;
defparam ram_1024_x_18.INIT_1C = 256'h0700060006000600163001E601E601E601E601E601EA01E601EA01E6A00001C2;
defparam ram_1024_x_18.INIT_1D = 256'h0700165055D94708870101EE06000700164001E601EA55D04705870101EE0600;
defparam ram_1024_x_18.INIT_1E = 256'h080159F2A00001EE06000680A00001EE06000600A00055E04708870101EE0600;
defparam ram_1024_x_18.INIT_1F = 256'h02A8C804090408004602A00002A8C80402A8C90402A8C8040907080341F40905;
defparam ram_1024_x_18.INIT_20 = 256'h0237030202050232A00006000600A000060006805209A60202A8C80402A8C904;
defparam ram_1024_x_18.INIT_21 = 256'h020B02370300020A023703060209023703670208023703CC0207023703400206;
defparam ram_1024_x_18.INIT_22 = 256'h0300020002370300020402370300020302370310020202371310020102370308;
defparam ram_1024_x_18.INIT_23 = 256'h1520026F025D090002640607050605600271A0000254040102490401A0000237;
defparam ram_1024_x_18.INIT_24 = 256'hAEFD0D061D405EF08F11CF011F00A0000276026F026406081530026F02640608;
defparam ram_1024_x_18.INIT_25 = 256'h040102491490A00002A8DEF0DE40AEFE5EF08F11CF011F00A00002A8DEF0DED0;
defparam ram_1024_x_18.INIT_26 = 256'h027BA00056655A608A01025D0901426A09005A6905000A00A000025404000254;
defparam ram_1024_x_18.INIT_27 = 256'h04000254040102490401A0000249040102540401A0000254040002490400A000;
defparam ram_1024_x_18.INIT_28 = 256'h0601A00006005A8FD4505A8FD45055F08F0154F08F140F06CF011F30A0000254;
defparam ram_1024_x_18.INIT_29 = 256'hD8F08F01D7F08F060F06CF011F30A00078F08F0177F08F000F06CF011F30A000;
defparam ram_1024_x_18.INIT_2A = 256'h4FD08F010F00A00056A94F1A8F010F00A000F8F08F01F7F08F000F06CF011F30;
defparam ram_1024_x_18.INIT_2B = 256'h00000000A00056B94D0A8D0102B20D00A00056B34EFA8E0102AD0E00A00056AE;
defparam ram_1024_x_18.INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'hF777C9288B4A20D2CB2CA88AA2F6F6F6F6F6F79288CCC0C30C333338E3BED0FF;
defparam ram_1024_x_18.INITP_01 = 256'h00C0300C0300C0300C0300C0300C0300C0300F3CF00F0F3C300AA8C92D75F775;
defparam ram_1024_x_18.INITP_02 = 256'h030ECD7835E838CB8CD4B0C30C30C30CBBB82EEE0C3BD7835E0D7835E0BCF00F;
defparam ram_1024_x_18.INITP_03 = 256'hE02EEE0C3B8B8B5E0D783F5E2A3FFFFB030302C0B5AEBCFD78A8FFFFECCCBBB9;
defparam ram_1024_x_18.INITP_04 = 256'h332CCB32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3A28CEE;
defparam ram_1024_x_18.INITP_05 = 256'h000000000000000000000000000000000B5CB5CB52D4A664999211922374464B;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
// synthesis attribute INIT_00 of ram_1024_x_18 is "02B2C01E0001009AA000008F0073E308500B53406408432C400100040031000C"
// synthesis attribute INIT_01 of ram_1024_x_18 is "01310002020C014100010140000401400003014000020140000102B2C01E0000"
// synthesis attribute INIT_02 of ram_1024_x_18 is "E00B0001E0090000029903030299030202990301080007F0020C01330003020C"
// synthesis attribute INIT_03 of ram_1024_x_18 is "005854414072A0000056543D4077A00000545439406D0061B00040004021A000"
// synthesis attribute INIT_04 of ram_1024_x_18 is "01060106A00FA0000188544D4070A000005E54494073A000005B54454078A000"
// synthesis attribute INIT_05 of ram_1024_x_18 is "006A7020A000006A1020A000006A5020A000D120A0001210A000D10001060106"
// synthesis attribute INIT_06 of ram_1024_x_18 is "CF220F01C020506A4F004F22A000CF210F00CF210F01402050614F004F21A000"
// synthesis attribute INIT_07 of ram_1024_x_18 is "408B548048005480470054834600028202910301B0004300630BA000CF220F00"
// synthesis attribute INIT_08 of ram_1024_x_18 is "6309A0005477430483010299A8008701408B54884803548847FF408AE800C701"
// synthesis attribute INIT_09 of ram_1024_x_18 is "0000010C0360020401020080A000C515E50A050E050EA504018F0301B4004300"
// synthesis attribute INIT_0A of ram_1024_x_18 is "010C010C0363020401000000010C010C03620080010C010C0361010C010C0100"
// synthesis attribute INIT_0B of ram_1024_x_18 is "010C0307020001000001010C0306020001660006010C010C0365010C010C0364"
// synthesis attribute INIT_0C of ram_1024_x_18 is "0034010C030A024001000010010C0349025501550055010C0308020001110011"
// synthesis attribute INIT_0D of ram_1024_x_18 is "01000002010C036D02060102003B010C036C0200010C0013010C030B02000100"
// synthesis attribute INIT_0E of ram_1024_x_18 is "020001A80083010C0318020001000000010C03100204015500C1010C030E0200"
// synthesis attribute INIT_0F of ram_1024_x_18 is "03FE020301000002010C03FD020301800000010C031C020001100000010C031A"
// synthesis attribute INIT_10 of ram_1024_x_18 is "012A040005001400A00002B8010C010002B8010C030B02000101003402B8010C"
// synthesis attribute INIT_11 of ram_1024_x_18 is "45088501012A040005001420551545088501012A040005001410550E45088501"
// synthesis attribute INIT_12 of ram_1024_x_18 is "09060802413009040800592EA0000137552345088501012A040005001430551C"
// synthesis attribute INIT_13 of ram_1024_x_18 is "A00002A8C80002A8C90002A8C80009010800A00002A8C80002A8C90002A8C800"
// synthesis attribute INIT_14 of ram_1024_x_18 is "031B02050162031B02040162030602030162031A020101620303020001580101"
// synthesis attribute INIT_15 of ram_1024_x_18 is "D9800909415F0901555E41009800080BA0000162038802080162032802060162"
// synthesis attribute INIT_16 of ram_1024_x_18 is "0A00556A4A078A0101790B000B001B200A0001790100010001580100A00002A8"
// synthesis attribute INIT_17 of ram_1024_x_18 is "0C0B09070803417F09050801597DA0000158010155714A088A0101790B001B30"
// synthesis attribute INIT_18 of ram_1024_x_18 is "01E6A000006A1050006A1040018F1320A00002A8D8C002A8D9C002A8D8C09C00"
// synthesis attribute INIT_19 of ram_1024_x_18 is "870101EE06000700060006000600163001E601E601E601E601E601E601EA01EA"
// synthesis attribute INIT_1A of ram_1024_x_18 is "A00055A5471087010400050741AC0400050659AA01FB070001FB01FB559D4705"
// synthesis attribute INIT_1B of ram_1024_x_18 is "05000400031F01C215201410130001C205010400031FA00001B5020001F0001C"
// synthesis attribute INIT_1C of ram_1024_x_18 is "0700060006000600163001E601E601E601E601E601EA01E601EA01E6A00001C2"
// synthesis attribute INIT_1D of ram_1024_x_18 is "0700165055D94708870101EE06000700164001E601EA55D04705870101EE0600"
// synthesis attribute INIT_1E of ram_1024_x_18 is "080159F2A00001EE06000680A00001EE06000600A00055E04708870101EE0600"
// synthesis attribute INIT_1F of ram_1024_x_18 is "02A8C804090408004602A00002A8C80402A8C90402A8C8040907080341F40905"
// synthesis attribute INIT_20 of ram_1024_x_18 is "0237030202050232A00006000600A000060006805209A60202A8C80402A8C904"
// synthesis attribute INIT_21 of ram_1024_x_18 is "020B02370300020A023703060209023703670208023703CC0207023703400206"
// synthesis attribute INIT_22 of ram_1024_x_18 is "0300020002370300020402370300020302370310020202371310020102370308"
// synthesis attribute INIT_23 of ram_1024_x_18 is "1520026F025D090002640607050605600271A0000254040102490401A0000237"
// synthesis attribute INIT_24 of ram_1024_x_18 is "AEFD0D061D405EF08F11CF011F00A0000276026F026406081530026F02640608"
// synthesis attribute INIT_25 of ram_1024_x_18 is "040102491490A00002A8DEF0DE40AEFE5EF08F11CF011F00A00002A8DEF0DED0"
// synthesis attribute INIT_26 of ram_1024_x_18 is "027BA00056655A608A01025D0901426A09005A6905000A00A000025404000254"
// synthesis attribute INIT_27 of ram_1024_x_18 is "04000254040102490401A0000249040102540401A0000254040002490400A000"
// synthesis attribute INIT_28 of ram_1024_x_18 is "0601A00006005A8FD4505A8FD45055F08F0154F08F140F06CF011F30A0000254"
// synthesis attribute INIT_29 of ram_1024_x_18 is "D8F08F01D7F08F060F06CF011F30A00078F08F0177F08F000F06CF011F30A000"
// synthesis attribute INIT_2A of ram_1024_x_18 is "4FD08F010F00A00056A94F1A8F010F00A000F8F08F01F7F08F000F06CF011F30"
// synthesis attribute INIT_2B of ram_1024_x_18 is "00000000A00056B94D0A8D0102B20D00A00056B34EFA8E0102AD0E00A00056AE"
// synthesis attribute INIT_2C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_30 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_31 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_32 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_33 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_34 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_35 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_36 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_37 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_38 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_39 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "F777C9288B4A20D2CB2CA88AA2F6F6F6F6F6F79288CCC0C30C333338E3BED0FF"
// synthesis attribute INITP_01 of ram_1024_x_18 is "00C0300C0300C0300C0300C0300C0300C0300F3CF00F0F3C300AA8C92D75F775"
// synthesis attribute INITP_02 of ram_1024_x_18 is "030ECD7835E838CB8CD4B0C30C30C30CBBB82EEE0C3BD7835E0D7835E0BCF00F"
// synthesis attribute INITP_03 of ram_1024_x_18 is "E02EEE0C3B8B8B5E0D783F5E2A3FFFFB030302C0B5AEBCFD78A8FFFFECCCBBB9"
// synthesis attribute INITP_04 of ram_1024_x_18 is "332CCB32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3A28CEE"
// synthesis attribute INITP_05 of ram_1024_x_18 is "000000000000000000000000000000000B5CB5CB52D4A664999211922374464B"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_07 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
endmodule
