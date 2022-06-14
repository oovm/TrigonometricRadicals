(* ::Package:: *)

Cos[1 Pi/16] // RootReduce // ToRadicals
Cos[3 Pi/16] // RootReduce // ToRadicals
Cos[5 Pi/16] // RootReduce // ToRadicals
Cos[7 Pi/16] // RootReduce // ToRadicals
Cos[9 Pi/16] // RootReduce // ToRadicals
Cos[11 Pi/16] // RootReduce // ToRadicals
Cos[13 Pi/16] // RootReduce // ToRadicals
Cos[15 Pi/16] // RootReduce // ToRadicals


cos15 = {
    HoldForm[8Cos[2 Pi / 15] + 1 == 1 + Sqrt[5] + Sqrt[30 - 6 Sqrt[5]]] ,
    HoldForm[8Cos[4 Pi / 15] + 1 == 1 - Sqrt[5] + Sqrt[30 + 6 Sqrt[5]]],
    HoldForm[8Cos[6 Pi / 15] + 1 == 8Cos[2Pi / 5]],
    HoldForm[8Cos[8 Pi / 15] + 1 == 1 + Sqrt[5] - Sqrt[30 - 6 Sqrt[5]]],
    HoldForm[8Cos[10Pi / 15] + 1 == 8Cos[2Pi / 3]],
    HoldForm[8Cos[12Pi / 15] + 1 == 8Cos[4Pi / 5]],
    HoldForm[8Cos[12Pi / 15] + 1 == 1 - Sqrt[5] - Sqrt[30 + 6 Sqrt[5]]]
};
