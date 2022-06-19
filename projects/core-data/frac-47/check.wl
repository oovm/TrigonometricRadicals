(* ::Package:: *)

p = 23;n = 11;
w = Exp[2Pi I / n];
c = {
    10836119121852481898929496346824943,
    10836119121852480317822318657155318,
    10836119121852483157139518996498094,
    10836119121852481526631304755477933,
    10836119121852483762884002004709599,
    10836119121852483774876782245866523,
    10836119121852482661677461109336259,
    10836119121852478995602151530032362,
    10836119121852484315965878097417798,
    10836119121852483497255006323771111,
    10836119121852483470797577232831457,
    10836119121852480228075625900369683,
    10836119121852480184585450078428538,
    10836119121852480558088435306693732,
    10836119121852485850833846370479588,
    10836119121852481220027123789951467,
    10836119121852472512775603925673383,
    10836119121852477997634198163079184,
    10836119121852484327911997563894769,
    10836119121852475314156220476315547,
    10836119121852488109038955789520992,
    10836119121852483431695559847323418,
    10836119121852487053617035510109593
};
c = {
    -5154687539163284650,
    -6735794716852954275,
    -3896477516513611499,
    -5526985730754631660,
    -3290733033505399994,
    -3278740253264243070,
    -4391939574400773334,
    -8058014883980077231,
    -2737651157412691795,
    -3556362029186338482,
    -3582819458277278136,
    -6825541409609739910,
    -6869031585431681055,
    -6495528600203415861,
    -1202783189139630005,
    -5833589911720158126,
    -14540841431584436210,
    -9055982837347030409,
    -2725705037946214824,
    -11739460815033794046,
    1055421920279411399,
    -3621921475662786175
};
inner = Table[i j, {i, 1, n - 1}, {j, 0, n - 2}];


HoldForm[x^22 + 47^253
    == -10481768809463566 * 47 x^21
    - 10481768809463566 * 47^231 x

    + 2978804278394443711500894026349083 * 47^3 x^20
    + 2978804278394443711500894026349083 * 47^210 x^2

    + 542959828933451740087460119439807107768715842850 * 47^6 x^19
    + 542959828933451740087460119439807107768715842850 * 47^190 x^3

    - 2806823931540867638848048278096714918331073700164910521356809 * 47^10 x^18
    - 2806823931540867638848048278096714918331073700164910521356809 * 47^171 x^4

    - 117994039458413932089441676533661181640943252272813749049489398512892513 * 47^15 x^17
    - 117994039458413932089441676533661181640943252272813749049489398512892513 * 47^153 x^5

    + 278146045192955545726246901880786728588442592866335417002195639498811175553425592 * 47^21 x^16
    + 278146045192955545726246901880786728588442592866335417002195639498811175553425592 * 47^136 x^6

    + 18232337001147050303528698921007073874347181070486097689582596814982362314043071695416252 * 47^28 x^15
    + 18232337001147050303528698921007073874347181070486097689582596814982362314043071695416252 * 47^120 x^7

    - 7921705550544183910091999950591395276892238301677695610721218838999879820058463361951167452551 * 47^36 x^14
    - 7921705550544183910091999950591395276892238301677695610721218838999879820058463361951167452551 * 47^105 x^8

    - 184079429600644693387765126218624182982503962441961052200940858941520439479323368351736651014271106 * 47^45 x^13
    - 184079429600644693387765126218624182982503962441961052200940858941520439479323368351736651014271106 * 47^91 x^9

    - 2738079726493705783079490838187529492770379459267243059140170778113655928222743520358278803464449092 * 47^55 x^12
    - 2738079726493705783079490838187529492770379459267243059140170778113655928222743520358278803464449092 * 47^78 x^10

    + 518145603648281467199729084034745799846294934610405923308286615549785472497325973271776288672381828089 * 47^66 x^11
];


inner = {
    {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
    {0, 2, 4, 6, 8, 10, 1, 3, 5, 7},
    {0, 3, 6, 9, 1, 4, 7, 10, 2, 5},
    {0, 4, 8, 1, 5, 9, 2, 6, 10, 3},
    {0, 5, 10, 4, 9, 3, 8, 2, 7, 1},
    {0, 6, 1, 7, 2, 8, 3, 9, 4, 10},
    {0, 7, 3, 10, 6, 2, 9, 5, 1, 8},
    {0, 8, 5, 2, 10, 7, 4, 1, 9, 6},
    {0, 9, 7, 5, 3, 1, 10, 8, 6, 4},
    {0, 10, 9, 8, 7, 6, 5, 4, 3, 2}
};
outer = {
    {3, 1, 2, 8, 0, 0, 3, 9, 10, 8},
    {1, 8, 7, 0, 1, 10, 0, 4, 3, 10},
    {9, 2, 9, 10, 8, 3, 1, 2, 9, 2},
    {10, 4, 1, 3, 2, 9, 8, 10, 7, 1},
    {2, 10, 10, 4, 6, 5, 7, 1, 1, 9},
    {7, 9, 3, 2, 9, 2, 9, 8, 2, 4},
    {6, 7, 0, 9, 4, 7, 2, 0, 4, 5},
    {8, 0, 6, 6, 3, 8, 5, 5, 0, 3},
    {4, 3, 5, 1, 5, 6, 10, 6, 8, 7},
    {0, 6, 4, 7, 7, 4, 4, 7, 5, 0},
    {5, 5, 8, 5, 10, 1, 6, 3, 6, 6}
};
M = Dot[w^inner, p c];


Dot[w^outer, M^(1 / n)] // N // Chop
Table[(p - 1)Cos[2k Pi / p] + 1, {k, 1, n}] // N


guess[b_, target_] := Catch@Table[
    var2 = Mod[Flatten[Transpose@{var, -Reverse@var}], n];
    If[
        Chop@N[b^(1 / n) . Exp[2 var2 Pi I / n] - target] === 0,
        Throw[var2],
        Nothing
    ],
    {var, Tuples[Range[0, n - 1], 5]}
];


guess[M, 22 Cos[2Pi / 23] + 1]


outer = {
    guess[M, 22 Cos[2 Pi / 23] + 1],
    guess[M, 22 Cos[4 Pi / 23] + 1],
    guess[M, 22 Cos[6 Pi / 23] + 1],
    guess[M, 22 Cos[8 Pi / 23] + 1],
    guess[M, 22 Cos[10Pi / 23] + 1],
    guess[M, 22 Cos[12Pi / 23] + 1],
    guess[M, 22 Cos[14Pi / 23] + 1],
    guess[M, 22 Cos[16Pi / 23] + 1],
    guess[M, 22 Cos[18Pi / 23] + 1],
    guess[M, 22 Cos[20Pi / 23] + 1],
    guess[M, 22 Cos[22Pi / 23] + 1]
}


FindPermutation[Transpose@outer]