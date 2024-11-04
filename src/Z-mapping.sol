//SPDX-License-Identifier: MIT

// Solidity contract for z-table mapping from -3.49 to 3.49
pragma solidity ^0.8.0;

contract ZTableMapping {

    // Define a mapping where the key is the scaled phi value (phi * 100)
    mapping(int => int) public zTable;

    constructor() {
        zTable[-349] = 2;    // z = -3.49 -> 0.0002
        zTable[-348] = 3;    // z = -3.48 -> 0.0003
        zTable[-347] = 3;    // z = -3.47 -> 0.0003
        zTable[-346] = 3;    // z = -3.46 -> 0.0003
        zTable[-345] = 3;    // z = -3.45 -> 0.0003
        zTable[-344] = 3;    // z = -3.44 -> 0.0003
        zTable[-343] = 3;    // z = -3.43 -> 0.0003
        zTable[-342] = 3;    // z = -3.42 -> 0.0003
        zTable[-341] = 3;    // z = -3.41 -> 0.0003
        zTable[-340] = 3;    // z = -3.40 -> 0.0003
        zTable[-339] = 3;    // z = -3.39 -> 0.0003
        zTable[-338] = 4;    // z = -3.38 -> 0.0004
        zTable[-337] = 4;    // z = -3.37 -> 0.0004
        zTable[-336] = 4;    // z = -3.36 -> 0.0004
        zTable[-335] = 4;    // z = -3.35 -> 0.0004
        zTable[-334] = 4;    // z = -3.34 -> 0.0004
        zTable[-333] = 4;    // z = -3.33 -> 0.0004
        zTable[-332] = 5;    // z = -3.32 -> 0.0005
        zTable[-331] = 5;    // z = -3.31 -> 0.0005
        zTable[-330] = 5;    // z = -3.30 -> 0.0005
        zTable[-329] = 5;    // z = -3.29 -> 0.0005
        zTable[-328] = 5;    // z = -3.28 -> 0.0005
        zTable[-327] = 5;    // z = -3.27 -> 0.0005
        zTable[-326] = 6;    // z = -3.26 -> 0.0006
        zTable[-325] = 6;    // z = -3.25 -> 0.0006
        zTable[-324] = 6;    // z = -3.24 -> 0.0006
        zTable[-323] = 6;    // z = -3.23 -> 0.0006
        zTable[-322] = 6;    // z = -3.22 -> 0.0006
        zTable[-321] = 7;    // z = -3.21 -> 0.0007
        zTable[-320] = 7;    // z = -3.20 -> 0.0007
        zTable[-319] = 7;    // z = -3.19 -> 0.0007
        zTable[-318] = 7;    // z = -3.18 -> 0.0007
        zTable[-317] = 8;    // z = -3.17 -> 0.0008
        zTable[-316] = 8;    // z = -3.16 -> 0.0008
        zTable[-315] = 8;    // z = -3.15 -> 0.0008
        zTable[-314] = 8;    // z = -3.14 -> 0.0008
        zTable[-313] = 9;    // z = -3.13 -> 0.0009
        zTable[-312] = 9;    // z = -3.12 -> 0.0009
        zTable[-311] = 9;    // z = -3.11 -> 0.0009
        zTable[-310] = 10;   // z = -3.10 -> 0.0010
        zTable[-309] = 10;   // z = -3.09 -> 0.0010
        zTable[-308] = 10;   // z = -3.08 -> 0.0010
        zTable[-307] = 11;   // z = -3.07 -> 0.0011
        zTable[-306] = 11;   // z = -3.06 -> 0.0011
        zTable[-305] = 11;   // z = -3.05 -> 0.0011
        zTable[-304] = 12;   // z = -3.04 -> 0.0012
        zTable[-303] = 12;   // z = -3.03 -> 0.0012
        zTable[-302] = 13;   // z = -3.02 -> 0.0013
        zTable[-301] = 13;   // z = -3.01 -> 0.0013
        zTable[-300] = 13;   // z = -3.00 -> 0.0013
        zTable[-299] = 14;   // z = -2.99 -> 0.0014
        zTable[-298] = 14;   // z = -2.98 -> 0.0014
        zTable[-297] = 15;   // z = -2.97 -> 0.0015
        zTable[-296] = 15;   // z = -2.96 -> 0.0015
        zTable[-295] = 16;   // z = -2.95 -> 0.0016
        zTable[-294] = 16;   // z = -2.94 -> 0.0016
        zTable[-293] = 17;   // z = -2.93 -> 0.0017
        zTable[-292] = 18;   // z = -2.92 -> 0.0018
        zTable[-291] = 18;   // z = -2.91 -> 0.0018
        zTable[-290] = 19;   // z = -2.90 -> 0.0019
        zTable[-289] = 19;   // z = -2.89 -> 0.0019
        zTable[-288] = 20;   // z = -2.88 -> 0.0020
        zTable[-287] = 21;   // z = -2.87 -> 0.0021
        zTable[-286] = 21;   // z = -2.86 -> 0.0021
        zTable[-285] = 22;   // z = -2.85 -> 0.0022
        zTable[-284] = 23;   // z = -2.84 -> 0.0023
        zTable[-283] = 23;   // z = -2.83 -> 0.0023
        zTable[-282] = 24;   // z = -2.82 -> 0.0024
        zTable[-281] = 25;   // z = -2.81 -> 0.0025
        zTable[-280] = 26;   // z = -2.80 -> 0.0026
        zTable[-279] = 26;   // z = -2.79 -> 0.0026
        zTable[-278] = 27;   // z = -2.78 -> 0.0027
        zTable[-277] = 28;   // z = -2.77 -> 0.0028
        zTable[-276] = 29;   // z = -2.76 -> 0.0029
        zTable[-275] = 30;   // z = -2.75 -> 0.0030
        zTable[-274] = 31;   // z = -2.74 -> 0.0031
        zTable[-273] = 32;   // z = -2.73 -> 0.0032
        zTable[-272] = 33;   // z = -2.72 -> 0.0033
        zTable[-271] = 34;   // z = -2.71 -> 0.0034
        zTable[-270] = 35;   // z = -2.70 -> 0.0035
        zTable[-269] = 36;   // z = -2.69 -> 0.0036
        zTable[-268] = 37;   // z = -2.68 -> 0.0037
        zTable[-267] = 38;   // z = -2.67 -> 0.0038
        zTable[-266] = 39;   // z = -2.66 -> 0.0039
        zTable[-265] = 40;   // z = -2.65 -> 0.0040
        zTable[-264] = 41;   // z = -2.64 -> 0.0041
        zTable[-263] = 43;   // z = -2.63 -> 0.0043
        zTable[-262] = 44;   // z = -2.62 -> 0.0044
        zTable[-261] = 45;   // z = -2.61 -> 0.0045
        zTable[-260] = 47;   // z = -2.60 -> 0.0047
        zTable[-259] = 48;   // z = -2.59 -> 0.0048
        zTable[-258] = 49;   // z = -2.58 -> 0.0049
        zTable[-257] = 51;   // z = -2.57 -> 0.0051
        zTable[-256] = 52;   // z = -2.56 -> 0.0052
        zTable[-255] = 54;   // z = -2.55 -> 0.0054
        zTable[-254] = 55;   // z = -2.54 -> 0.0055
        zTable[-253] = 57;   // z = -2.53 -> 0.0057
        zTable[-252] = 59;   // z = -2.52 -> 0.0059
        zTable[-251] = 60;   // z = -2.51 -> 0.0060
        zTable[-250] = 62;   // z = -2.50 -> 0.0062
        zTable[-249] = 64;   // z = -2.49 -> 0.0064
        zTable[-248] = 66;   // z = -2.48 -> 0.0066
        zTable[-247] = 68;   // z = -2.47 -> 0.0068
        zTable[-246] = 69;   // z = -2.46 -> 0.0069
        zTable[-245] = 71;   // z = -2.45 -> 0.0071
        zTable[-244] = 73;   // z = -2.44 -> 0.0073
        zTable[-243] = 75;   // z = -2.43 -> 0.0075
        zTable[-242] = 78;   // z = -2.42 -> 0.0078
        zTable[-241] = 80;   // z = -2.41 -> 0.0080
        zTable[-240] = 82;   // z = -2.40 -> 0.0082
        zTable[-239] = 84;   // z = -2.39 -> 0.0084
        zTable[-238] = 87;   // z = -2.38 -> 0.0087
        zTable[-237] = 89;   // z = -2.37 -> 0.0089
        zTable[-236] = 91;   // z = -2.36 -> 0.0091
        zTable[-235] = 94;   // z = -2.35 -> 0.0094
        zTable[-234] = 96;   // z = -2.34 -> 0.0096
        zTable[-233] = 99;   // z = -2.33 -> 0.0099
        zTable[-232] = 102;  // z = -2.32 -> 0.0102
        zTable[-231] = 104;  // z = -2.31 -> 0.0104
        zTable[-230] = 107;  // z = -2.30 -> 0.0107
        zTable[-229] = 110;  // z = -2.29 -> 0.0110
        zTable[-228] = 113;  // z = -2.28 -> 0.0113
        zTable[-227] = 116;  // z = -2.27 -> 0.0116
        zTable[-226] = 119;  // z = -2.26 -> 0.0119
        zTable[-225] = 122;  // z = -2.25 -> 0.0122
        zTable[-224] = 125;  // z = -2.24 -> 0.0125
        zTable[-223] = 129;  // z = -2.23 -> 0.0129
        zTable[-222] = 132;  // z = -2.22 -> 0.0132
        zTable[-221] = 136;  // z = -2.21 -> 0.0136
        zTable[-220] = 139;  // z = -2.20 -> 0.0139
        zTable[-219] = 143;  // z = -2.19 -> 0.0143
        zTable[-218] = 146;  // z = -2.18 -> 0.0146
        zTable[-217] = 150;  // z = -2.17 -> 0.0150
        zTable[-216] = 154;  // z = -2.16 -> 0.0154
        zTable[-215] = 158;  // z = -2.15 -> 0.0158
        zTable[-214] = 162;  // z = -2.14 -> 0.0162
        zTable[-213] = 166;  // z = -2.13 -> 0.0166
        zTable[-212] = 170;  // z = -2.12 -> 0.0170
        zTable[-211] = 174;  // z = -2.11 -> 0.0174
        zTable[-210] = 179;  // z = -2.10 -> 0.0179
        zTable[-209] = 183;  // z = -2.09 -> 0.0183
        zTable[-208] = 188;  // z = -2.08 -> 0.0188
        zTable[-207] = 192;  // z = -2.07 -> 0.0192
        zTable[-206] = 197;  // z = -2.06 -> 0.0197
        zTable[-205] = 202;  // z = -2.05 -> 0.0202
        zTable[-204] = 207;  // z = -2.04 -> 0.0207
        zTable[-203] = 212;  // z = -2.03 -> 0.0212
        zTable[-202] = 217;  // z = -2.02 -> 0.0217
        zTable[-201] = 222;  // z = -2.01 -> 0.0222
        zTable[-200] = 228;  // z = -2.00 -> 0.0228
        zTable[-199] = 233;  // z = -1.99 -> 0.0233
        zTable[-198] = 239;  // z = -1.98 -> 0.0239
        zTable[-197] = 244;  // z = -1.97 -> 0.0244
        zTable[-196] = 250;  // z = -1.96 -> 0.0250
        zTable[-195] = 256;  // z = -1.95 -> 0.0256
        zTable[-194] = 262;  // z = -1.94 -> 0.0262
        zTable[-193] = 268;  // z = -1.93 -> 0.0268
        zTable[-192] = 274;  // z = -1.92 -> 0.0274
        zTable[-191] = 281;  // z = -1.91 -> 0.0281
        zTable[-190] = 287;  // z = -1.90 -> 0.0287
        zTable[-189] = 294;  // z = -1.89 -> 0.0294
        zTable[-188] = 301;  // z = -1.88 -> 0.0301
        zTable[-187] = 307;  // z = -1.87 -> 0.0307
        zTable[-186] = 314;  // z = -1.86 -> 0.0314
        zTable[-185] = 322;  // z = -1.85 -> 0.0322
        zTable[-184] = 329;  // z = -1.84 -> 0.0329
        zTable[-183] = 336;  // z = -1.83 -> 0.0336
        zTable[-182] = 344;  // z = -1.82 -> 0.0344
        zTable[-181] = 351;  // z = -1.81 -> 0.0351
        zTable[-180] = 359;  // z = -1.80 -> 0.0359
        zTable[-179] = 367;  // z = -1.79 -> 0.0367
        zTable[-178] = 375;  // z = -1.78 -> 0.0375
        zTable[-177] = 384;  // z = -1.77 -> 0.0384
        zTable[-176] = 392;  // z = -1.76 -> 0.0392
        zTable[-175] = 401;  // z = -1.75 -> 0.0401
        zTable[-174] = 409;  // z = -1.74 -> 0.0409
        zTable[-173] = 418;  // z = -1.73 -> 0.0418
        zTable[-172] = 427;  // z = -1.72 -> 0.0427
        zTable[-171] = 436;  // z = -1.71 -> 0.0436
        zTable[-170] = 446;  // z = -1.70 -> 0.0446
        zTable[-169] = 455;  // z = -1.69 -> 0.0455
        zTable[-168] = 465;  // z = -1.68 -> 0.0465
        zTable[-167] = 475;  // z = -1.67 -> 0.0475
        zTable[-166] = 485;  // z = -1.66 -> 0.0485
        zTable[-165] = 495;  // z = -1.65 -> 0.0495
        zTable[-164] = 505;  // z = -1.64 -> 0.0505
        zTable[-163] = 516;  // z = -1.63 -> 0.0516
        zTable[-162] = 526;  // z = -1.62 -> 0.0526
        zTable[-161] = 537;  // z = -1.61 -> 0.0537
        zTable[-160] = 548;  // z = -1.60 -> 0.0548
        zTable[-159] = 559;  // z = -1.59 -> 0.0559
        zTable[-158] = 571;  // z = -1.58 -> 0.0571
        zTable[-157] = 582;  // z = -1.57 -> 0.0582
        zTable[-156] = 594;  // z = -1.56 -> 0.0594
        zTable[-155] = 606;  // z = -1.55 -> 0.0606
        zTable[-154] = 618;  // z = -1.54 -> 0.0618
        zTable[-153] = 630;  // z = -1.53 -> 0.0630
        zTable[-152] = 643;  // z = -1.52 -> 0.0643
        zTable[-151] = 655;  // z = -1.51 -> 0.0655
        zTable[-150] = 668;  // z = -1.50 -> 0.0668
        zTable[-149] = 681;  // z = -1.49 -> 0.0681
        zTable[-148] = 694;  // z = -1.48 -> 0.0694
        zTable[-147] = 708;  // z = -1.47 -> 0.0708
        zTable[-146] = 721;  // z = -1.46 -> 0.0721
        zTable[-145] = 735;  // z = -1.45 -> 0.0735
        zTable[-144] = 749;  // z = -1.44 -> 0.0749
        zTable[-143] = 764;  // z = -1.43 -> 0.0764
        zTable[-142] = 778;  // z = -1.42 -> 0.0778
        zTable[-141] = 793;  // z = -1.41 -> 0.0793
        zTable[-140] = 808;  // z = -1.40 -> 0.0808
        zTable[-139] = 823;  // z = -1.39 -> 0.0823
        zTable[-138] = 838;  // z = -1.38 -> 0.0838
        zTable[-137] = 853;  // z = -1.37 -> 0.0853
        zTable[-136] = 869;  // z = -1.36 -> 0.0869
        zTable[-135] = 885;  // z = -1.35 -> 0.0885
        zTable[-134] = 901;  // z = -1.34 -> 0.0901
        zTable[-133] = 918;  // z = -1.33 -> 0.0918
        zTable[-132] = 934;  // z = -1.32 -> 0.0934
        zTable[-131] = 951;  // z = -1.31 -> 0.0951
        zTable[-130] = 968;  // z = -1.30 -> 0.0968
        zTable[-129] = 985;  // z = -1.29 -> 0.0985
        zTable[-128] = 1003; // z = -1.28 -> 0.1003
        zTable[-127] = 1020; // z = -1.27 -> 0.1020
        zTable[-126] = 1038; // z = -1.26 -> 0.1038
        zTable[-125] = 1056; // z = -1.25 -> 0.1056
        zTable[-124] = 1075; // z = -1.24 -> 0.1075
        zTable[-123] = 1093; // z = -1.23 -> 0.1093
        zTable[-122] = 1112; // z = -1.22 -> 0.1112
        zTable[-121] = 1131; // z = -1.21 -> 0.1131
        zTable[-120] = 1151; // z = -1.20 -> 0.1151
        zTable[-119] = 1170; // z = -1.19 -> 0.1170
        zTable[-118] = 1190; // z = -1.18 -> 0.1190
        zTable[-117] = 1210; // z = -1.17 -> 0.1210
        zTable[-116] = 1230; // z = -1.16 -> 0.1230
        zTable[-115] = 1251; // z = -1.15 -> 0.1251
        zTable[-114] = 1271; // z = -1.14 -> 0.1271
        zTable[-113] = 1292; // z = -1.13 -> 0.1292
        zTable[-112] = 1314; // z = -1.12 -> 0.1314
        zTable[-111] = 1335; // z = -1.11 -> 0.1335
        zTable[-110] = 1357; // z = -1.10 -> 0.1357
        zTable[-109] = 1379; // z = -1.09 -> 0.1379
        zTable[-108] = 1401; // z = -1.08 -> 0.1401
        zTable[-107] = 1423; // z = -1.07 -> 0.1423
        zTable[-106] = 1446; // z = -1.06 -> 0.1446
        zTable[-105] = 1469; // z = -1.05 -> 0.1469
        zTable[-104] = 1492; // z = -1.04 -> 0.1492
        zTable[-103] = 1515; // z = -1.03 -> 0.1515
        zTable[-102] = 1539; // z = -1.02 -> 0.1539
        zTable[-101] = 1562; // z = -1.01 -> 0.1562
        zTable[-100] = 1587; // z = -1.00 -> 0.1587
        zTable[-99] = 1611;  // z = -0.99 -> 0.1611
        zTable[-98] = 1635;  // z = -0.98 -> 0.1635
        zTable[-97] = 1660;  // z = -0.97 -> 0.1660
        zTable[-96] = 1685;  // z = -0.96 -> 0.1685
        zTable[-95] = 1711;  // z = -0.95 -> 0.1711
        zTable[-94] = 1736;  // z = -0.94 -> 0.1736
        zTable[-93] = 1762;  // z = -0.93 -> 0.1762
        zTable[-92] = 1788;  // z = -0.92 -> 0.1788
        zTable[-91] = 1814;  // z = -0.91 -> 0.1814
        zTable[-90] = 1841;  // z = -0.90 -> 0.1841
        zTable[-89] = 1867;  // z = -0.89 -> 0.1867
        zTable[-88] = 1894;  // z = -0.88 -> 0.1894
        zTable[-87] = 1922;  // z = -0.87 -> 0.1922
        zTable[-86] = 1949;  // z = -0.86 -> 0.1949
        zTable[-85] = 1977;  // z = -0.85 -> 0.1977
        zTable[-84] = 2005;  // z = -0.84 -> 0.2005
        zTable[-83] = 2033;  // z = -0.83 -> 0.2033
        zTable[-82] = 2061;  // z = -0.82 -> 0.2061
        zTable[-81] = 2090;  // z = -0.81 -> 0.2090
        zTable[-80] = 2119;  // z = -0.80 -> 0.2119
        zTable[-79] = 2148;  // z = -0.79 -> 0.2148
        zTable[-78] = 2177;  // z = -0.78 -> 0.2177
        zTable[-77] = 2206;  // z = -0.77 -> 0.2206
        zTable[-76] = 2236;  // z = -0.76 -> 0.2236
        zTable[-75] = 2266;  // z = -0.75 -> 0.2266
        zTable[-74] = 2296;  // z = -0.74 -> 0.2296
        zTable[-73] = 2327;  // z = -0.73 -> 0.2327
        zTable[-72] = 2358;  // z = -0.72 -> 0.2358
        zTable[-71] = 2389;  // z = -0.71 -> 0.2389
        zTable[-70] = 2420;  // z = -0.70 -> 0.2420
        zTable[-69] = 2451;  // z = -0.69 -> 0.2451
        zTable[-68] = 2483;  // z = -0.68 -> 0.2483
        zTable[-67] = 2514;  // z = -0.67 -> 0.2514
        zTable[-66] = 2546;  // z = -0.66 -> 0.2546
        zTable[-65] = 2578;  // z = -0.65 -> 0.2578
        zTable[-64] = 2611;  // z = -0.64 -> 0.2611
        zTable[-63] = 2643;  // z = -0.63 -> 0.2643
        zTable[-62] = 2676;  // z = -0.62 -> 0.2676
        zTable[-61] = 2709;  // z = -0.61 -> 0.2709
        zTable[-60] = 2743;  // z = -0.60 -> 0.2743
        zTable[-59] = 2776;  // z = -0.59 -> 0.2776
        zTable[-58] = 2810;  // z = -0.58 -> 0.2810
        zTable[-57] = 2843;  // z = -0.57 -> 0.2843
        zTable[-56] = 2877;  // z = -0.56 -> 0.2877
        zTable[-55] = 2912;  // z = -0.55 -> 0.2912
        zTable[-54] = 2946;  // z = -0.54 -> 0.2946
        zTable[-53] = 2981;  // z = -0.53 -> 0.2981
        zTable[-52] = 3015;  // z = -0.52 -> 0.3015
        zTable[-51] = 3050;  // z = -0.51 -> 0.3050
        zTable[-50] = 3085;  // z = -0.50 -> 0.3085
        zTable[-49] = 3121;  // z = -0.49 -> 0.3121
        zTable[-48] = 3156;  // z = -0.48 -> 0.3156
        zTable[-47] = 3192;  // z = -0.47 -> 0.3192
        zTable[-46] = 3228;  // z = -0.46 -> 0.3228
        zTable[-45] = 3264;  // z = -0.45 -> 0.3264
        zTable[-44] = 3300;  // z = -0.44 -> 0.3300
        zTable[-43] = 3336;  // z = -0.43 -> 0.3336
        zTable[-42] = 3372;  // z = -0.42 -> 0.3372
        zTable[-41] = 3409;  // z = -0.41 -> 0.3409
        zTable[-40] = 3446;  // z = -0.40 -> 0.3446
        zTable[-39] = 3483;  // z = -0.39 -> 0.3483
        zTable[-38] = 3520;  // z = -0.38 -> 0.3520
        zTable[-37] = 3557;  // z = -0.37 -> 0.3557
        zTable[-36] = 3594;  // z = -0.36 -> 0.3594
        zTable[-35] = 3632;  // z = -0.35 -> 0.3632
        zTable[-34] = 3669;  // z = -0.34 -> 0.3669
        zTable[-33] = 3707;  // z = -0.33 -> 0.3707
        zTable[-32] = 3745;  // z = -0.32 -> 0.3745
        zTable[-31] = 3783;  // z = -0.31 -> 0.3783
        zTable[-30] = 3821;  // z = -0.30 -> 0.3821
        zTable[-29] = 3859;  // z = -0.29 -> 0.3859
        zTable[-28] = 3897;  // z = -0.28 -> 0.3897
        zTable[-27] = 3936;  // z = -0.27 -> 0.3936
        zTable[-26] = 3974;  // z = -0.26 -> 0.3974
        zTable[-25] = 4013;  // z = -0.25 -> 0.4013
        zTable[-24] = 4052;  // z = -0.24 -> 0.4052
        zTable[-23] = 4090;  // z = -0.23 -> 0.4090
        zTable[-22] = 4129;  // z = -0.22 -> 0.4129
        zTable[-21] = 4168;  // z = -0.21 -> 0.4168
        zTable[-20] = 4207;  // z = -0.20 -> 0.4207
        zTable[-19] = 4247;  // z = -0.19 -> 0.4247
        zTable[-18] = 4286;  // z = -0.18 -> 0.4286
        zTable[-17] = 4325;  // z = -0.17 -> 0.4325
        zTable[-16] = 4364;  // z = -0.16 -> 0.4364
        zTable[-15] = 4404;  // z = -0.15 -> 0.4404
        zTable[-14] = 4443;  // z = -0.14 -> 0.4443
        zTable[-13] = 4483;  // z = -0.13 -> 0.4483
        zTable[-12] = 4522;  // z = -0.12 -> 0.4522
        zTable[-11] = 4562;  // z = -0.11 -> 0.4562
        zTable[-10] = 4602;  // z = -0.10 -> 0.4602
        zTable[-9] = 4641;   // z = -0.09 -> 0.4641
        zTable[-8] = 4681;   // z = -0.08 -> 0.4681
        zTable[-7] = 4721;   // z = -0.07 -> 0.4721
        zTable[-6] = 4761;   // z = -0.06 -> 0.4761
        zTable[-5] = 4801;   // z = -0.05 -> 0.4801
        zTable[-4] = 4840;   // z = -0.04 -> 0.4840
        zTable[-3] = 4880;   // z = -0.03 -> 0.4880
        zTable[-2] = 4920;   // z = -0.02 -> 0.4920
        zTable[-1] = 4960;   // z = -0.01 -> 0.4960
        
        zTable[0] = 5000;    // z = 0.00 -> 0.5000

        zTable[1] = 5040;    // z = 0.01 -> 0.5040
        zTable[2] = 5080;    // z = 0.02 -> 0.5080
        zTable[3] = 5120;    // z = 0.03 -> 0.5120
        zTable[4] = 5160;    // z = 0.04 -> 0.5160
        zTable[5] = 5199;    // z = 0.05 -> 0.5199
        zTable[6] = 5239;    // z = 0.06 -> 0.5239
        zTable[7] = 5279;    // z = 0.07 -> 0.5279
        zTable[8] = 5319;    // z = 0.08 -> 0.5319
        zTable[9] = 5359;    // z = 0.09 -> 0.5359
        zTable[10] = 5398;   // z = 0.10 -> 0.5398
        zTable[11] = 5438;   // z = 0.11 -> 0.5438
        zTable[12] = 5478;   // z = 0.12 -> 0.5478
        zTable[13] = 5517;   // z = 0.13 -> 0.5517
        zTable[14] = 5557;   // z = 0.14 -> 0.5557
        zTable[15] = 5596;   // z = 0.15 -> 0.5596
        zTable[16] = 5636;   // z = 0.16 -> 0.5636
        zTable[17] = 5675;   // z = 0.17 -> 0.5675
        zTable[18] = 5714;   // z = 0.18 -> 0.5714
        zTable[19] = 5753;   // z = 0.19 -> 0.5753
        zTable[20] = 5793;   // z = 0.20 -> 0.5793
        zTable[21] = 5832;   // z = 0.21 -> 0.5832
        zTable[22] = 5871;   // z = 0.22 -> 0.5871
        zTable[23] = 5910;   // z = 0.23 -> 0.5910
        zTable[24] = 5948;   // z = 0.24 -> 0.5948
        zTable[25] = 5987;   // z = 0.25 -> 0.5987
        zTable[26] = 6026;   // z = 0.26 -> 0.6026
        zTable[27] = 6064;   // z = 0.27 -> 0.6064
        zTable[28] = 6103;   // z = 0.28 -> 0.6103
        zTable[29] = 6141;   // z = 0.29 -> 0.6141
        zTable[30] = 6179;   // z = 0.30 -> 0.6179
        zTable[31] = 6217;   // z = 0.31 -> 0.6217
        zTable[32] = 6255;   // z = 0.32 -> 0.6255
        zTable[33] = 6293;   // z = 0.33 -> 0.6293
        zTable[34] = 6331;   // z = 0.34 -> 0.6331
        zTable[35] = 6368;   // z = 0.35 -> 0.6368
        zTable[36] = 6406;   // z = 0.36 -> 0.6406
        zTable[37] = 6443;   // z = 0.37 -> 0.6443
        zTable[38] = 6480;   // z = 0.38 -> 0.6480
        zTable[39] = 6517;   // z = 0.39 -> 0.6517
        zTable[40] = 6554;   // z = 0.40 -> 0.6554
        zTable[41] = 6591;   // z = 0.41 -> 0.6591
        zTable[42] = 6628;   // z = 0.42 -> 0.6628
        zTable[43] = 6664;   // z = 0.43 -> 0.6664
        zTable[44] = 6700;   // z = 0.44 -> 0.6700
        zTable[45] = 6736;   // z = 0.45 -> 0.6736
        zTable[46] = 6772;   // z = 0.46 -> 0.6772 
        zTable[47] = 6808;   // z = 0.47 -> 0.6808
        zTable[48] = 6844;   // z = 0.48 -> 0.6844
        zTable[49] = 6879;   // z = 0.49 -> 0.6879
        zTable[50] = 6915;   // z = 0.50 -> 0.6915
        zTable[51] = 6950;   // z = 0.51 -> 0.6950
        zTable[52] = 6985;   // z = 0.52 -> 0.6985
        zTable[53] = 7019;   // z = 0.53 -> 0.7019
        zTable[54] = 7054;   // z = 0.54 -> 0.7054
        zTable[55] = 7088;   // z = 0.55 -> 0.7088
        zTable[56] = 7123;   // z = 0.56 -> 0.7123
        zTable[57] = 7157;   // z = 0.57 -> 0.7157
        zTable[58] = 7190;   // z = 0.58 -> 0.7190
        zTable[59] = 7224;   // z = 0.59 -> 0.7224
        zTable[60] = 7257;   // z = 0.60 -> 0.7257
        zTable[61] = 7291;   // z = 0.61 -> 0.7291
        zTable[62] = 7324;   // z = 0.62 -> 0.7324
        zTable[63] = 7357;   // z = 0.63 -> 0.7357
        zTable[64] = 7389;   // z = 0.64 -> 0.7389
        zTable[65] = 7422;   // z = 0.65 -> 0.7422
        zTable[66] = 7454;   // z = 0.66 -> 0.7454
        zTable[67] = 7486;   // z = 0.67 -> 0.7486
        zTable[68] = 7517;   // z = 0.68 -> 0.7517
        zTable[69] = 7549;   // z = 0.69 -> 0.7549
        zTable[70] = 7580;   // z = 0.70 -> 0.7580
        zTable[71] = 7611;   // z = 0.71 -> 0.7611
        zTable[72] = 7642;   // z = 0.72 -> 0.7642
        zTable[73] = 7673;   // z = 0.73 -> 0.7673
        zTable[74] = 7704;   // z = 0.74 -> 0.7704
        zTable[75] = 7734;   // z = 0.75 -> 0.7734
        zTable[76] = 7764;   // z = 0.76 -> 0.7764
        zTable[77] = 7794;   // z = 0.77 -> 0.7794
        zTable[78] = 7823;   // z = 0.78 -> 0.7823
        zTable[79] = 7852;   // z = 0.79 -> 0.7852
        zTable[80] = 7881;   // z = 0.80 -> 0.7881
        zTable[81] = 7910;   // z = 0.81 -> 0.7910
        zTable[82] = 7939;   // z = 0.82 -> 0.7939
        zTable[83] = 7967;   // z = 0.83 -> 0.7967
        zTable[84] = 7995;   // z = 0.84 -> 0.7995
        zTable[85] = 8023;   // z = 0.85 -> 0.8023
        zTable[86] = 8051;   // z = 0.86 -> 0.8051
        zTable[87] = 8078;   // z = 0.87 -> 0.8078
        zTable[88] = 8106;   // z = 0.88 -> 0.8106
        zTable[89] = 8133;   // z = 0.89 -> 0.8133
        zTable[90] = 8159;   // z = 0.90 -> 0.8159
        zTable[91] = 8186;   // z = 0.91 -> 0.8186
        zTable[92] = 8212;   // z = 0.92 -> 0.8212
        zTable[93] = 8238;   // z = 0.93 -> 0.8238
        zTable[94] = 8264;   // z = 0.94 -> 0.8264
        zTable[95] = 8289;   // z = 0.95 -> 0.8289
        zTable[96] = 8315;   // z = 0.96 -> 0.8315
        zTable[97] = 8340;   // z = 0.97 -> 0.8340
        zTable[98] = 8365;   // z = 0.98 -> 0.8365
        zTable[99] = 8389;   // z = 0.99 -> 0.8389
        zTable[100] = 8413;  // z = 1.00 -> 0.8413
        zTable[101] = 8438;  // z = 1.01 -> 0.8438
        zTable[102] = 8461;  // z = 1.02 -> 0.8461
        zTable[103] = 8485;  // z = 1.03 -> 0.8485
        zTable[104] = 8508;  // z = 1.04 -> 0.8508
        zTable[105] = 8531;  // z = 1.05 -> 0.8531
        zTable[106] = 8554;  // z = 1.06 -> 0.8554
        zTable[107] = 8577;  // z = 1.07 -> 0.8577
        zTable[108] = 8599;  // z = 1.08 -> 0.8599
        zTable[109] = 8621;  // z = 1.09 -> 0.8621
        zTable[110] = 8643;  // z = 1.10 -> 0.8643
        zTable[111] = 8665;  // z = 1.11 -> 0.8665
        zTable[112] = 8686;  // z = 1.12 -> 0.8686
        zTable[113] = 8708;  // z = 1.13 -> 0.8708
        zTable[114] = 8729;  // z = 1.14 -> 0.8729
        zTable[115] = 8749;  // z = 1.15 -> 0.8749
        zTable[116] = 8770;  // z = 1.16 -> 0.8770
        zTable[117] = 8790;  // z = 1.17 -> 0.8790
        zTable[118] = 8810;  // z = 1.18 -> 0.8810
        zTable[119] = 8830;  // z = 1.19 -> 0.8830
        zTable[120] = 8849;  // z = 1.20 -> 0.8849
        zTable[121] = 8869;  // z = 1.21 -> 0.8869
        zTable[122] = 8888;  // z = 1.22 -> 0.8888
        zTable[123] = 8907;  // z = 1.23 -> 0.8907
        zTable[124] = 8925;  // z = 1.24 -> 0.8925
        zTable[125] = 8944;  // z = 1.25 -> 0.8944
        zTable[126] = 8962;  // z = 1.26 -> 0.8962
        zTable[127] = 8980;  // z = 1.27 -> 0.8980
        zTable[128] = 8997;  // z = 1.28 -> 0.8997
        zTable[129] = 9015;  // z = 1.29 -> 0.9015
        zTable[130] = 9032;  // z = 1.30 -> 0.9032
        zTable[131] = 9049;  // z = 1.31 -> 0.9049
        zTable[132] = 9066;  // z = 1.32 -> 0.9066
        zTable[133] = 9082;  // z = 1.33 -> 0.9082
        zTable[134] = 9099;  // z = 1.34 -> 0.9099
        zTable[135] = 9115;  // z = 1.35 -> 0.9115
        zTable[136] = 9131;  // z = 1.36 -> 0.9131
        zTable[137] = 9147;  // z = 1.37 -> 0.9147
        zTable[138] = 9162;  // z = 1.38 -> 0.9162
        zTable[139] = 9177;  // z = 1.39 -> 0.9177
        zTable[140] = 9192;  // z = 1.40 -> 0.9192
        zTable[141] = 9207;  // z = 1.41 -> 0.9207
        zTable[142] = 9222;  // z = 1.42 -> 0.9222
        zTable[143] = 9236;  // z = 1.43 -> 0.9236
        zTable[144] = 9251;  // z = 1.44 -> 0.9251
        zTable[145] = 9265;  // z = 1.45 -> 0.9265
        zTable[146] = 9279;  // z = 1.46 -> 0.9279
        zTable[147] = 9292;  // z = 1.47 -> 0.9292
        zTable[148] = 9306;  // z = 1.48 -> 0.9306
        zTable[149] = 9319;  // z = 1.49 -> 0.9319
        zTable[150] = 9332;  // z = 1.50 -> 0.9332
        zTable[151] = 9345;  // z = 1.51 -> 0.9345
        zTable[152] = 9357;  // z = 1.52 -> 0.9357
        zTable[153] = 9370;  // z = 1.53 -> 0.9370
        zTable[154] = 9382;  // z = 1.54 -> 0.9382
        zTable[155] = 9394;  // z = 1.55 -> 0.9394
        zTable[156] = 9406;  // z = 1.56 -> 0.9406
        zTable[157] = 9418;  // z = 1.57 -> 0.9418
        zTable[158] = 9429;  // z = 1.58 -> 0.9429
        zTable[159] = 9441;  // z = 1.59 -> 0.9441
        zTable[160] = 9452;  // z = 1.60 -> 0.9452
        zTable[161] = 9463;  // z = 1.61 -> 0.9463
        zTable[162] = 9474;  // z = 1.62 -> 0.9474
        zTable[163] = 9484;  // z = 1.63 -> 0.9484
        zTable[164] = 9495;  // z = 1.64 -> 0.9495
        zTable[165] = 9505;  // z = 1.65 -> 0.9505
        zTable[166] = 9515;  // z = 1.66 -> 0.9515
        zTable[167] = 9525;  // z = 1.67 -> 0.9525
        zTable[168] = 9535;  // z = 1.68 -> 0.9535
        zTable[169] = 9545;  // z = 1.69 -> 0.9545
        zTable[170] = 9554;  // z = 1.70 -> 0.9554
        zTable[171] = 9564;  // z = 1.71 -> 0.9564
        zTable[172] = 9573;  // z = 1.72 -> 0.9573
        zTable[173] = 9582;  // z = 1.73 -> 0.9582
        zTable[174] = 9591;  // z = 1.74 -> 0.9591
        zTable[175] = 9599;  // z = 1.75 -> 0.9599
        zTable[176] = 9608;  // z = 1.76 -> 0.9608
        zTable[177] = 9616;  // z = 1.77 -> 0.9616
        zTable[178] = 9625;  // z = 1.78 -> 0.9625
        zTable[179] = 9633;  // z = 1.79 -> 0.9633
        zTable[180] = 9641;  // z = 1.80 -> 0.9641
        zTable[181] = 9649;  // z = 1.81 -> 0.9649
        zTable[182] = 9656;  // z = 1.82 -> 0.9656
        zTable[183] = 9664;  // z = 1.83 -> 0.9664
        zTable[184] = 9671;  // z = 1.84 -> 0.9671
        zTable[185] = 9678;  // z = 1.85 -> 0.9678
        zTable[186] = 9686;  // z = 1.86 -> 0.9686
        zTable[187] = 9693;  // z = 1.87 -> 0.9693
        zTable[188] = 9699;  // z = 1.88 -> 0.9699
        zTable[189] = 9706;  // z = 1.89 -> 0.9706
        zTable[190] = 9713;  // z = 1.90 -> 0.9713
        zTable[191] = 9719;  // z = 1.91 -> 0.9719
        zTable[192] = 9726;  // z = 1.92 -> 0.9726
        zTable[193] = 9732;  // z = 1.93 -> 0.9732
        zTable[194] = 9738;  // z = 1.94 -> 0.9738
        zTable[195] = 9744;  // z = 1.95 -> 0.9744
        zTable[196] = 9750;  // z = 1.96 -> 0.9750
        zTable[197] = 9756;  // z = 1.97 -> 0.9756
        zTable[198] = 9761;  // z = 1.98 -> 0.9761
        zTable[199] = 9767;  // z = 1.99 -> 0.9767
        zTable[200] = 9772;  // z = 2.00 -> 0.9772
        zTable[201] = 9778;  // z = 2.01 -> 0.9778
        zTable[202] = 9783;  // z = 2.02 -> 0.9783
        zTable[203] = 9788;  // z = 2.03 -> 0.9788
        zTable[204] = 9793;  // z = 2.04 -> 0.9793
        zTable[205] = 9798;  // z = 2.05 -> 0.9798
        zTable[206] = 9803;  // z = 2.06 -> 0.9803
        zTable[207] = 9808;  // z = 2.07 -> 0.9808
        zTable[208] = 9812;  // z = 2.08 -> 0.9812
        zTable[209] = 9817;  // z = 2.09 -> 0.9817
        zTable[210] = 9821;  // z = 2.10 -> 0.9821
        zTable[211] = 9826;  // z = 2.11 -> 0.9826
        zTable[212] = 9830;  // z = 2.12 -> 0.9830
        zTable[213] = 9834;  // z = 2.13 -> 0.9834
        zTable[214] = 9838;  // z = 2.14 -> 0.9838
        zTable[215] = 9842;  // z = 2.15 -> 0.9842
        zTable[216] = 9846;  // z = 2.16 -> 0.9846
        zTable[217] = 9850;  // z = 2.17 -> 0.9850
        zTable[218] = 9854;  // z = 2.18 -> 0.9854
        zTable[219] = 9857;  // z = 2.19 -> 0.9857
        zTable[220] = 9861;  // z = 2.20 -> 0.9861
        zTable[221] = 9864;  // z = 2.21 -> 0.9864
        zTable[222] = 9868;  // z = 2.22 -> 0.9868
        zTable[223] = 9871;  // z = 2.23 -> 0.9871
        zTable[224] = 9875;  // z = 2.24 -> 0.9875
        zTable[225] = 9878;  // z = 2.25 -> 0.9878
        zTable[226] = 9881;  // z = 2.26 -> 0.9881
        zTable[227] = 9884;  // z = 2.27 -> 0.9884
        zTable[228] = 9887;  // z = 2.28 -> 0.9887
        zTable[229] = 9890;  // z = 2.29 -> 0.9890
        zTable[230] = 9893;  // z = 2.30 -> 0.9893
        zTable[231] = 9896;  // z = 2.31 -> 0.9896
        zTable[232] = 9898;  // z = 2.32 -> 0.9898
        zTable[233] = 9901;  // z = 2.33 -> 0.9901
        zTable[234] = 9904;  // z = 2.34 -> 0.9904
        zTable[235] = 9906;  // z = 2.35 -> 0.9906
        zTable[236] = 9909;  // z = 2.36 -> 0.9909
        zTable[237] = 9911;  // z = 2.37 -> 0.9911
        zTable[238] = 9913;  // z = 2.38 -> 0.9913
        zTable[239] = 9916;  // z = 2.39 -> 0.9916
        zTable[240] = 9918;  // z = 2.40 -> 0.9918
        zTable[241] = 9920;  // z = 2.41 -> 0.9920
        zTable[242] = 9922;  // z = 2.42 -> 0.9922
        zTable[243] = 9925;  // z = 2.43 -> 0.9925
        zTable[244] = 9927;  // z = 2.44 -> 0.9927
        zTable[245] = 9929;  // z = 2.45 -> 0.9929
        zTable[246] = 9931;  // z = 2.46 -> 0.9931
        zTable[247] = 9932;  // z = 2.47 -> 0.9932
        zTable[248] = 9934;  // z = 2.48 -> 0.9934
        zTable[249] = 9936;  // z = 2.49 -> 0.9936
        zTable[250] = 9938;  // z = 2.50 -> 0.9938
        zTable[251] = 9940;  // z = 2.51 -> 0.9940
        zTable[252] = 9941;  // z = 2.52 -> 0.9941
        zTable[253] = 9943;  // z = 2.53 -> 0.9943
        zTable[254] = 9945;  // z = 2.54 -> 0.9945
        zTable[255] = 9946;  // z = 2.55 -> 0.9946
        zTable[256] = 9948;  // z = 2.56 -> 0.9948
        zTable[257] = 9949;  // z = 2.57 -> 0.9949
        zTable[258] = 9951;  // z = 2.58 -> 0.9951
        zTable[259] = 9952;  // z = 2.59 -> 0.9952
        zTable[260] = 9953;  // z = 2.60 -> 0.9953
        zTable[261] = 9955;  // z = 2.61 -> 0.9955
        zTable[262] = 9956;  // z = 2.62 -> 0.9956
        zTable[263] = 9957;  // z = 2.63 -> 0.9957
        zTable[264] = 9959;  // z = 2.64 -> 0.9959
        zTable[265] = 9960;  // z = 2.65 -> 0.9960
        zTable[266] = 9961;  // z = 2.66 -> 0.9961
        zTable[267] = 9962;  // z = 2.67 -> 0.9962
        zTable[268] = 9963;  // z = 2.68 -> 0.9963
        zTable[269] = 9964;  // z = 2.69 -> 0.9964
        zTable[270] = 9965;  // z = 2.70 -> 0.9965
        zTable[271] = 9966;  // z = 2.71 -> 0.9966
        zTable[272] = 9967;  // z = 2.72 -> 0.9967
        zTable[273] = 9968;  // z = 2.73 -> 0.9968
        zTable[274] = 9969;  // z = 2.74 -> 0.9969
        zTable[275] = 9970;  // z = 2.75 -> 0.9970
        zTable[276] = 9971;  // z = 2.76 -> 0.9971
        zTable[277] = 9972;  // z = 2.77 -> 0.9972
        zTable[278] = 9973;  // z = 2.78 -> 0.9973
        zTable[279] = 9974;  // z = 2.79 -> 0.9974
        zTable[280] = 9974;  // z = 2.80 -> 0.9974
        zTable[281] = 9975;  // z = 2.81 -> 0.9975
        zTable[282] = 9976;  // z = 2.82 -> 0.9976
        zTable[283] = 9977;  // z = 2.83 -> 0.9977
        zTable[284] = 9977;  // z = 2.84 -> 0.9977
        zTable[285] = 9978;  // z = 2.85 -> 0.9978
        zTable[286] = 9979;  // z = 2.86 -> 0.9979
        zTable[287] = 9979;  // z = 2.87 -> 0.9979
        zTable[288] = 9980;  // z = 2.88 -> 0.9980
        zTable[289] = 9981;  // z = 2.89 -> 0.9981
        zTable[290] = 9981;  // z = 2.90 -> 0.9981
        zTable[291] = 9982;  // z = 2.91 -> 0.9982
        zTable[292] = 9982;  // z = 2.92 -> 0.9982
        zTable[293] = 9983;  // z = 2.93 -> 0.9983
        zTable[294] = 9984;  // z = 2.94 -> 0.9984
        zTable[295] = 9984;  // z = 2.95 -> 0.9984
        zTable[296] = 9985;  // z = 2.96 -> 0.9985
        zTable[297] = 9985;  // z = 2.97 -> 0.9985
        zTable[298] = 9986;  // z = 2.98 -> 0.9986
        zTable[299] = 9986;  // z = 2.99 -> 0.9986


        zTable[300] = 9987; // z = 3.00 -> 0.9987
        zTable[301] = 9987; // z = 3.01 -> 0.9987
        zTable[302] = 9987; // z = 3.02 -> 0.9987
        zTable[303] = 9988; // z = 3.03 -> 0.9988
        zTable[304] = 9988; // z = 3.04 -> 0.9988
        zTable[305] = 9989; // z = 3.05 -> 0.9989
        zTable[306] = 9989; // z = 3.06 -> 0.9989
        zTable[307] = 9989; // z = 3.07 -> 0.9989
        zTable[308] = 9990; // z = 3.08 -> 0.9990
        zTable[309] = 9990; // z = 3.09 -> 0.9990
        zTable[310] = 9990; // z = 3.10 -> 0.9990
        zTable[311] = 9991; // z = 3.11 -> 0.9991
        zTable[312] = 9991; // z = 3.12 -> 0.9991
        zTable[313] = 9991; // z = 3.13 -> 0.9991
        zTable[314] = 9992; // z = 3.14 -> 0.9992
        zTable[315] = 9992; // z = 3.15 -> 0.9992
        zTable[316] = 9992; // z = 3.16 -> 0.9992
        zTable[317] = 9992; // z = 3.17 -> 0.9992
        zTable[318] = 9993; // z = 3.18 -> 0.9993
        zTable[319] = 9993; // z = 3.19 -> 0.9993
        zTable[320] = 9993; // z = 3.20 -> 0.9993
        zTable[321] = 9993; // z = 3.21 -> 0.9993
        zTable[322] = 9994; // z = 3.22 -> 0.9994
        zTable[323] = 9994; // z = 3.23 -> 0.9994
        zTable[324] = 9994; // z = 3.24 -> 0.9994
        zTable[325] = 9994; // z = 3.25 -> 0.9994
        zTable[326] = 9994; // z = 3.26 -> 0.9994
        zTable[327] = 9995; // z = 3.27 -> 0.9995
        zTable[328] = 9995; // z = 3.28 -> 0.9995
        zTable[329] = 9995; // z = 3.29 -> 0.9995
        zTable[330] = 9995; // z = 3.30 -> 0.9995
        zTable[331] = 9995; // z = 3.31 -> 0.9995
        zTable[332] = 9995; // z = 3.32 -> 0.9995
        zTable[333] = 9996; // z = 3.33 -> 0.9996
        zTable[334] = 9996; // z = 3.34 -> 0.9996
        zTable[335] = 9996; // z = 3.35 -> 0.9996
        zTable[336] = 9996; // z = 3.36 -> 0.9996
        zTable[337] = 9996; // z = 3.37 -> 0.9996
        zTable[338] = 9996; // z = 3.38 -> 0.9996
        zTable[339] = 9997; // z = 3.39 -> 0.9997
        zTable[340] = 9997; // z = 3.40 -> 0.9997
        zTable[341] = 9997; // z = 3.41 -> 0.9997
        zTable[342] = 9997; // z = 3.42 -> 0.9997  
        zTable[343] = 9997; // z = 3.43 -> 0.9997
        zTable[344] = 9997; // z = 3.44 -> 0.9997
        zTable[345] = 9997; // z = 3.45 -> 0.9997
        zTable[346] = 9997; // z = 3.46 -> 0.9997
        zTable[347] = 9997; // z = 3.47 -> 0.9997
        zTable[348] = 9997; // z = 3.48 -> 0.9997
        zTable[349] = 9998; // z = 3.49 -> 0.9998
    }
}