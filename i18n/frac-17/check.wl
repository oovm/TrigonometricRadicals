(* ::Package:: *)

n = 17;p = 3;
PrimitiveRootList[n]


cycle = 0;
period = 1;
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[Subscript[\[Sigma], 1, i], {i, 0, period - 1}]


cycle = 1;
period = 2;
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[Subscript[\[Sigma], cycle, i], {i, 0, 2 - 1}];
Solve[
	{
		Vieta[{Subscript[\[Sigma], 1, 0], Subscript[\[Sigma], 1, 1]}] == {-1, -4},
		Subscript[\[Sigma], 1, 0] < Subscript[\[Sigma], 1, 1]
	},
	vars
]



