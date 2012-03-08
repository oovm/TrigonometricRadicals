(* ::Package:: *)

Vieta[list_] := Block[
	{l = Length[list]},
	Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];
solve[a_, b_, less_] := If[
	less,
	List[1 / 2 (a - Sqrt[a^2 - 4 b]), 1 / 2 (a + Sqrt[a^2 - 4 b])],
	List[1 / 2 (a + Sqrt[a^2 - 4 b]), 1 / 2 (a - Sqrt[a^2 - 4 b])]
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
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
solve[-1, -4, True]


cycle = 2;
period = 4;
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
Flatten@Table[solve[orbit[cycle - 1, i], -1, True], {i, 0, 2, 2}]


Im@Sum[(-1.0)^(k / 17), {k, {1, 13, 16, 4}}]
Im@Sum[(-1.0)^(k / 17), {k, {3, 5, 14, 12}}]
Im@Sum[(-1.0)^(k / 17), {k, {9, 15, 8, 2}}]
Im@Sum[(-1.0)^(k / 17), {k, {10, 11, 7, 6}}]


Solve[{x + y, x y} == {a, b}, {x, y}]



