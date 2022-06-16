(* ::Package:: *)

p = 23;n = 11;
w = Exp[2Pi I / n];
c = {384812, 188298, -625515, -78859, 740707, 84370, 834405, 98208, 361900, -56177};
inner = Table[i j, {i, 1, n - 1}, {j, 0, n - 2}];


c = {300196920972, 300192401150, 300173683451, 300186256539, 300205106557,
300190010806, 300207261611, 300190329080, 300196393996, 300186778225,
300188070296}

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
    guess[M, 22 Cos[2Pi / 23] + 1],
    guess[M, 22 Cos[4Pi / 23] + 1],
    guess[M, 22 Cos[6Pi / 23] + 1],
    guess[M, 22 Cos[8Pi / 23] + 1],
    guess[M, 22 Cos[10Pi / 23] + 1],
    guess[M, 22 Cos[12Pi / 23] + 1],
    guess[M, 22 Cos[14Pi / 23] + 1],
    guess[M, 22 Cos[16Pi / 23] + 1],
    guess[M, 22 Cos[18Pi / 23] + 1],
    guess[M, 22 Cos[20Pi / 23] + 1],
    guess[M, 22 Cos[22Pi / 23] + 1]
}


FindPermutation[Transpose@outer]
