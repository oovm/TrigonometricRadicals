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


texOrbit[cycle_, table_] := texAligned@Table[
    StringRiffle[{texSigma[i, cycle], texPower1@table[[i + 1]]}, "&="],
    {i, 0, period - 1}
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


n = 65537;p = 3;
PrimitiveRootList[n]


(* ::Subsubsection:: *)
(*cycle0*)


Clear[orbit]
cycle = 0;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[i, cycle], {i, 0, period - 1}]
{orbit[0, 0]} = table;


(* ::Subsubsection:: *)
(*cycle1*)


cycle = 1;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


Table[solve[i], {i, 1, period / 2}]


(* ::Subsubsection:: *)
(*cycle2*)


cycle = 2;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


Table[solve[i], {i, 1, period / 2}]


(* ::Subsubsection:: *)
(*cycle3*)


cycle = 3;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


Table[solve[i], {i, 1, period / 2}]


(* ::Subsubsection:: *)
(*cycle4*)


cycle = 4;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle5*)


cycle = 5;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle6*)


cycle = 6;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle7*)


cycle = 7;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle8*)


cycle = 8;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle9*)


cycle = 9;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle10*)


cycle = 10;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle11*)


cycle = 11;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle12*)


cycle = 12;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle13*)


cycle = 13;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle14*)


cycle = 14;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]


(* ::Subsubsection:: *)
(*cycle15*)


cycle = 15;
period = 2^cycle;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
Evaluate@Table[orbit[i, cycle], {i, 0, period - 1}] = table;


solve[i_] := (
    vieta = ExpandAll@Vieta[Tr /@ {\[Omega]^table[[i]], \[Omega]^table[[period / 2 + i]]}];
    {add, mul} = vieta /. \[Omega]^k_ :> \[Omega]^Mod[k, n];
    lhs = SparseArray[Flatten@Table[{#, j} -> 1& /@ orbit[j - 1, cycle - 1], {j, 1, period / 2}]];
    <|
        "Add" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[add, \[Omega], n]]],
        "Mul" -> LinearSolve[lhs, SparseArray[Rest@CoefficientList[mul, \[Omega], n]]]
    |>
);


solve[1]
