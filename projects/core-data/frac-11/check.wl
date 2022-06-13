(* ::Package:: *)

Simplify`TrigToRealRadicals;
noSin[e_] := FullSimplify[e, ComplexityFunction -> (100 Count[#, Sin[__] | Power[-1, ___], All] + LeafCount[#]&)]
System`TrigToRadicalsDump`cos[Pi / 11];
Vieta[list_] := Block[
    {l = Length[list]},
    Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];


Clear[s]
Solve[{Exp[2 s Pi I / 11] == E^((I \[Pi]) / 11), 0 < s < 11}, s]


Clear[h, t]
h = (n - 1) / 2;
t = Table[Tr[\[Omega]^{k, n - k}] / 2, {k, 1, h}]
Flatten[Transpose@{-Reverse@t, t}] // Expand


n = 15;p = 2;
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


gen[n_] := Min@Select[Range[n], CoprimeQ[#, n] && MultiplicativeOrder[#, n] == CarmichaelLambda[n] &]


n = 11;g = gen[n]
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


Cos[2Pi / 11] // RootReduce // ToRadicals


Table[Exp[2 Pi I k / 11 ] + Exp[-2 Pi I k / 11 ], {k, 1, 5}] // RootReduce


CoefficientList[MinimalPolynomial[10Cos[2Pi / 11], x], x] // Reverse


{a, b} = getPseudoRoot[1, 5, -100, -375, 1875, 3125]
b = SortBy[b, Arg]


guess[b_, target_] := Catch@Table[
    If[
        Chop[b^(1 / 5) . Exp[2.0 var Pi I / 5] - target] === 0,
        Throw[var],
        Nothing
    ],
    {var, Tuples[Range[0, 4], 4]}
]


\[Omega]^{
    guess[a, b, 10 Cos[2Pi / 11]],
    guess[a, b, 10 Cos[4Pi / 11]],
    guess[a, b, 10 Cos[6Pi / 11]],
    guess[a, b, 10 Cos[8Pi / 11]],
    guess[a, b, 10 Cos[10Pi / 11]]
}


{Subscript[\[Zeta], 1], Subscript[\[Zeta], 2], Subscript[\[Zeta], 3], Subscript[\[Zeta], 4]}^(1 / 5)


MinimalPolynomial[b // First, \[Zeta]]



(w^m) . c // N
p = 11;n = (p - 1) / 2;
w = Exp[6Pi I / n];
c = {-6, 35, 10, 20}
m = Table[If[j == 1, 0, i j], {i, 1, n - 1}, {j, 1, n - 1}]

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



