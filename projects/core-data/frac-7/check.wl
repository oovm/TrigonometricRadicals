(* ::Package:: *)

p = 7;n = 3;
w = Exp[2Pi I / n];
c = {2, 3};
inner = Table[i j, {i, 1, n - 1}, {j, 0, n - 2}];


inner = {
    {0, 1},
    {0, 2}
};
outer = {
    {0, 0},
    {2, 1},
    {1, 2}
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
    guess[M, 6 Cos[2Pi / 7] + 1],
    guess[M, 6 Cos[4Pi / 7] + 1],
    guess[M, 6 Cos[6Pi / 7] + 1]
}
