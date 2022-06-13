(* ::Package:: *)

(w^m) . c // N
p = 11;n = (p - 1) / 2;
w = Exp[6Pi I / n];
c = {-6, 35, 10, 20}
m = Table[If[j == 1, 0, i j], {i, 1, n - 1}, {j, 1, n - 1}]


guess[b_, target_] := Catch@Table[
    If[
        Chop[b^(1 / 5) . Exp[2.0 var Pi I / 5] - target] === 0,
        Throw[var],
        Nothing
    ],
    {var, Tuples[Range[0, 4], 4]}
]


{
    guess[b, 10 Cos[2Pi / 11]+1],
    guess[b, 10 Cos[4Pi / 11]+1],
    guess[b, 10 Cos[6Pi / 11]+1],
    guess[b, 10 Cos[8Pi / 11]+1],
    guess[b, 10 Cos[10Pi / 11]+1]
}


w = Exp[2Pi I / n];
c = {-6, 35, 10, 20};
inner = {
    {0, 1, 4, 2},
    {0, 2, 3, 4},
    {0, 3, 2, 1},
    {0, 4, 1, 3}
};
outer = {
    {4, 1, 4, 1},
    {1, 0, 0, 4},
    {0, 3, 2, 0},
    {3, 4, 1, 2},
    {2, 2, 3, 3}
};
(w^outer) . ((w^inner) . (11c))^(1 / n) // N // Chop
Table[(p - 1)Cos[2k Pi / p] + 1, {k, 1, n}] // N



