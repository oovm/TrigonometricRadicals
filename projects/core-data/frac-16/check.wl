(* ::Package:: *)

Simplify`TrigToRealRadicals;
8System`TrigToRadicalsDump`cos[2Pi / 15] // Simplify // ExpandAll
8System`TrigToRadicalsDump`cos[4Pi / 15] // Simplify // ExpandAll
8Cos[6Pi / 15] // Simplify // ExpandAll
8System`TrigToRadicalsDump`cos[8Pi / 15] // Simplify // ExpandAll
8Cos[10Pi / 15] // Simplify // ExpandAll
8Cos[12Pi / 15] // Simplify // ExpandAll
8System`TrigToRadicalsDump`cos[14Pi / 15] // Simplify // ExpandAll


cos15 = {
    HoldForm[8Cos[2 Pi / 15] + 1 == 1 + Sqrt[5] + Sqrt[30 - 6 Sqrt[5]]] ,
    HoldForm[8Cos[4 Pi / 15] + 1 == 1 - Sqrt[5] + Sqrt[30 + 6 Sqrt[5]]],
    HoldForm[8Cos[6 Pi / 15] + 1 == 8Cos[2Pi / 5]],
    HoldForm[8Cos[8 Pi / 15] + 1 == 1 + Sqrt[5] - Sqrt[30 - 6 Sqrt[5]]],
    HoldForm[8Cos[10Pi / 15] + 1 == 8Cos[2Pi / 3]],
    HoldForm[8Cos[12Pi / 15] + 1 == 8Cos[4Pi / 5]],
    HoldForm[8Cos[12Pi / 15] + 1 == 1 - Sqrt[5] - Sqrt[30 + 6 Sqrt[5]]]
};
