(* ::Package:: *)

Vieta[list_] := Block[
    {l = Length[list]},
    Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];
sumGroup[g_] := Im@Sum[(-1.0)^(k / n), {k, g}];
solve[a_, b_, lhs_, rhs_] := If[
    sumGroup@lhs > sumGroup@rhs,
    List[ (a - Sqrt[a^2 - 4 b]) / 2, (a + Sqrt[a^2 - 4 b]) / 2],
    List[ (a + Sqrt[a^2 - 4 b]) / 2, (a - Sqrt[a^2 - 4 b]) / 2]
];


n = 17;p = 3;
PrimitiveRootList[n]


cycle = 0;
period = 1;
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[1, i], {i, 0, period - 1}]
{1}


cycle = 1;
period = 2;
elemnets = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
solve[-1, -4, True]


cycle = 2;
period = 2^2;
elemnets = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
Flatten@Table[solve[orbit[cycle - 1, i], -1, True], {i, 0, 2, 2}]


cycle = 3;
period = 2^3;
group = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
isLess = Table[
    Im@Sum[(-1.0)^(k / n), {k, First@group}] < Im@Sum[(-1.0)^(k / n), {k, Last@group}],
    {group, Partition[group, 2]}
]
Flatten@Table[solve[orbit[cycle - 1, i], -1, True], {i, 0, 1}]


(orbit[cycle, i - 1]^2 - Subscript[\[Sigma], 3, i + 1] - 4) / 2


Sum[Exp[2 k Pi I / 17], {k, {9, 8}}]
Sum[Exp[2 k Pi I / 17], {k, {10, 7}}]



