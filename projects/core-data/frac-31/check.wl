(* ::Package:: *)

Needs["JLink`"];
InstallJava[];
LoadJavaClass["java.awt.Toolkit", AllowShortContext -> False];
SetDirectory@NotebookDirectory[];

uniclip[s_String] := JavaBlock[java`awt`Toolkit`getDefaultToolkit[]@getSystemClipboard[]@setContents[#, #]&@JavaNew["java.awt.datatransfer.StringSelection", s]];


Simplify`TrigToRealRadicals;
asTex[e_] := StringTake[ExportString[e, "TeXFragment"], 3 ;; -5];
simplify[e_] := FullSimplify[e, ComplexityFunction -> (100 Count[#, Root[__] | Power[-1, ___], All] + LeafCount[#]&)]


texPower2[list_] := StringRiffle[Table[TemplateApply["\[Omega]^{3^{`1`}}", i], {i, list}], "+"];


texSigma[i_, j_] := TemplateApply["\[Sigma]^{`1`}(\[Zeta]_{`2`})", {i, j}]


texPower1[list_] := StringRiffle[Table[TemplateApply["\[Omega]^{`1`}", i], {i, list}], "+"]


texAligned[list_] := TemplateApply["\
\\begin{aligned}
`1`
\\end{aligned}",
    StringRiffle[list, "\\\\\n"]
]


Vieta[list_] := Block[
    {l = Length[list]},
    Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];
sumGroup[g_] := Im@Sum[(-1.0)^(k / n), {k, g}];
solve[a_, b_, greater_] := If[
    greater,
    List[ (a - Sqrt[a^2 - 4 b]) / 2, (a + Sqrt[a^2 - 4 b]) / 2],
    List[ (a + Sqrt[a^2 - 4 b]) / 2, (a - Sqrt[a^2 - 4 b]) / 2]
];


n = 17;p = 3;
PrimitiveRootList[n]


(* ::Subsubsection:: *)
(*cycle0*)


cycle = 0;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
{1}


(* ::Subsubsection:: *)
(*cycle1*)


cycle = 1;
period = 2;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]


TemplateApply["\[Zeta]_{`1`}=`2`",
    {
        3,
        texPower2[Range[0, 17, 8]]
    }
]
% // uniclip


texOrbit[cycle_, table_] := texAligned@Table[
    StringRiffle[{texSigma[i, cycle], texPower1@table[[i + 1]]}, "&="],
    {i, 0, period - 1}
]


(* ::Subsubsection:: *)
(*cycle2*)


cycle = 2;
period = 2^2;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]


texOrbit[cycle, table]
% // uniclip


(* ::Subsubsection:: *)
(*cycle3*)


cycle = 3;
period = 2^3;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
isLess = Table[
    Im@Sum[(-1.0)^(k / n), {k, First@group}] < Im@Sum[(-1.0)^(k / n), {k, Last@group}],
    {group, Partition[group, 2]}
]
Flatten@Table[solve[orbit[cycle - 1, i], -1, True], {i, 0, 1}]


PowerMod[3, 8, 17]


texOrbit[cycle, table]
% // uniclip


cycle = 4;
period = 2^cycle;
group = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]

orbit[0, 2] = 1 / 4 (-1 + Sqrt[17] + Sqrt[2] Sqrt[17 - Sqrt[17]]);
orbit[1, 2] = 1 / 4 (-1 - Sqrt[17] + Sqrt[2] Sqrt[17 + Sqrt[17]]);
orbit[2, 2] = 1 / 4 (-1 + Sqrt[17] - Sqrt[2] Sqrt[17 - Sqrt[17]]);
orbit[3, 2] = 1 / 4 (-1 - Sqrt[17] - Sqrt[2] Sqrt[17 + Sqrt[17]]);
{cos2, cos8} = solve[orbit[0, 2], orbit[1, 2], False] / 2
{cos6, cos10} = solve[orbit[1, 2], orbit[2, 2], False] / 2
{cos4, cos16} = solve[orbit[2, 2], orbit[3, 2], False] / 2
{cos12, cos14} = solve[orbit[3, 2], orbit[0, 2], False] / 2
