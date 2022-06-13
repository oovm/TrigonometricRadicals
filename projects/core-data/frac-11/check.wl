(* ::Package:: *)

p = 11;n = 5;
w = Exp[2Pi I / n];
c = {-6, 20, 10, 35};
inner = Table[i j, {i, 1, n - 1}, {j, 0, n - 2}];


inner = {
    {0, 1, 2, 3},
    {0, 2, 4, 1},
    {0, 3, 1, 4},
    {0, 4, 3, 2}
};
outer = {
    {4, 4, 1, 1},
    {0, 1, 4, 0},
    {2, 0, 0, 3},
    {1, 3, 2, 4},
    {3, 2, 3, 2}
};
M = Dot[w^inner, p c];
Dot[w^outer, M^(1 / n)] // N // Chop
Table[(p - 1)Cos[2k Pi / p] + 1, {k, 1, n}] // N


guess[b_, target_] := Catch@Table[
    If[
        Chop[b^(1 / n) . Exp[2.0 var Pi I / n] - target] === 0,
        Throw[var],
        Nothing
    ],
    {var, Tuples[Range[0, n - 1], Length@b]}
]


{
    guess[M, 10 Cos[2Pi / 11] + 1],
    guess[M, 10 Cos[4Pi / 11] + 1],
    guess[M, 10 Cos[6Pi / 11] + 1],
    guess[M, 10 Cos[8Pi / 11] + 1],
    guess[M, 10 Cos[10Pi / 11] + 1]
}
