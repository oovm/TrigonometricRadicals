(* ::Package:: *)

Vieta[list_] := Block[
	{l = Length[list]},
	Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];
sumGroup[g_]:=Im@Sum[(-1.0)^(k / n), {k, g}];
solve[a_, b_] := {a - Sqrt[a^2 - 4 b], a + Sqrt[a^2 - 4 b]}/2;


n = 257;p = 3;
PrimitiveRootList[n]


cycle = 0;
period = 1;
record1={
orbit[cycle, 0]->-1
}


cycle = 1;
period = 2;
elemnets = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
record2=Thread[vars->solve[-1, -64, True]]


cycle = 2;
period = 2^2;
elemnets = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
values=Last/@SortBy[{
1->solve[orbit[cycle-1, 0],16],
3->solve[orbit[cycle-1, 0],16],
2->solve[orbit[cycle-1, 1],16],
4->solve[orbit[cycle-1, 1],16]
},First]
record2=Thread[vars->values]


cycle = 3;
period = 2^3;
group = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
values=Last/@SortBy[{
1->solve[orbit[cycle-1,0], 5+orbit[cycle-2,0]+2orbit[cycle-1,0]],
5->solve[orbit[cycle-1,0], 5+orbit[cycle-2,0]+2orbit[cycle-1,0]],
6->solve[orbit[cycle-1,1], 5+orbit[cycle-2,1]+2orbit[cycle-1,1]],
2->solve[orbit[cycle-1,1], 5+orbit[cycle-2,1]+2orbit[cycle-1,1]],
3->solve[orbit[cycle-1,2], 5+orbit[cycle-2,0]+2orbit[cycle-1,2]],
7->solve[orbit[cycle-1,2], 5+orbit[cycle-2,0]+2orbit[cycle-1,2]],
8->solve[orbit[cycle-1,3], 5+orbit[cycle-2,1]+2orbit[cycle-1,3]],
4->solve[orbit[cycle-1,4], 5+orbit[cycle-2,1]+2orbit[cycle-1,4]]
},First]
record3=Thread[vars->values];


(orbit[circle, i - 1]^2 - Subscript[\[Sigma], 3, i + 1] - 4) / 2


Sum[(-1.0)^(k / 17), {k, {9, 8}}]
Sum[(-1.0)^(k / 17), {k, {10, 7}}]



