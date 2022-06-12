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


m={
{0,1,2,3,4,5,6,7,8,9},
{0,2,4,6,8,10,1,3,5,7},
{0,3,6,9,1,4,7,10,3,5},
{0,4,8,1,5,9,2,6,10,3},
{0,5,10,4,9,3,8,2,7,1},
{0,6,1,7,2,8,3,9,4,10},
{0,7,3,10,6,2,9,5,1,8},
{0,8,5,2,10,7,4,1,9,6},
{0,9,7,5,3,1,10,8,6,4},
{0,10,9,8,7,6,5,4,3,2}
};
c={384812,188298,-625515,-78859,740707,84370,834405,98208,361900,-56177};


\[Omega]^{
    guess[a, b, 10 Cos[2Pi / 11]],
    guess[a, b, 10 Cos[4Pi / 11]],
    guess[a, b, 10 Cos[6Pi / 11]],
    guess[a, b, 10 Cos[8Pi / 11]],
    guess[a, b, 10 Cos[10Pi / 11]]
}


{Subscript[\[Zeta], 1], Subscript[\[Zeta], 2], Subscript[\[Zeta], 3], Subscript[\[Zeta], 4]}^(1/5)


MinimalPolynomial[b//First,\[Zeta]]
