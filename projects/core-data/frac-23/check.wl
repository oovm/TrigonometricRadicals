(* ::Package:: *)

Simplify`TrigToRealRadicals;
noSin[e_] := FullSimplify[e, ComplexityFunction -> (100 Count[#, Sin[__] | Power[-1, ___], All] + LeafCount[#]&)]
System`TrigToRadicalsDump`cos[2Pi / 29];
Vieta[list_] := Block[
    {l = Length[list]},
    Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];


MinimalPolynomial[29Cos[2Pi/29],x]==0


root=29System`TrigToRadicalsDump`cos[2Pi / 29]//Simplify;
one=First@Cases[root,Power[x___,1/7]:>x,Infinity];


n = 15;p = 2;
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


gen[n_] := Min@Select[Range[n], CoprimeQ[#, n] && MultiplicativeOrder[#, n] == CarmichaelLambda[n] &]


n = 11;g = gen[n]
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


Cos[2Pi / 11] // RootReduce // ToRadicals


Table[Exp[2 Pi I k / 11 ] + Exp[-2 Pi I k / 11 ], {k, 1, 5}] // RootReduce


CoefficientList[MinimalPolynomial[10Cos[2Pi / 11], x], x] // Reverse


{a, b} = getPseudoRoot[1,5,-100,-375,1875,3125]
b=SortBy[b,Arg]


guess[a_, b_, target_] := Catch@Table[
    If[
        Chop[b^(1 / 5) . Exp[2.0 var Pi I / 5] + a - target] === 0,
        Throw[var]
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


{Subscript[\[Zeta], 1], Subscript[\[Zeta], 2], Subscript[\[Zeta], 3], Subscript[\[Zeta], 4]}^(1/5)


MinimalPolynomial[b//First,\[Zeta]]
