(* ::Package:: *)

Simplify`TrigToRealRadicals;
System`TrigToRadicalsDump`cos[1 Pi/12]//N
System`TrigToRadicalsDump`cos[3 Pi/12]//N
System`TrigToRadicalsDump`cos[5 Pi/12]//N


Sqrt[2+Sqrt[3]]/2//N
Sqrt[2]/2//N
Sqrt[2-Sqrt[3]]/2//N


cos13 = {
    HoldForm[2Cos[1 Pi / 12]== Sqrt[2+Sqrt[3]]/2] ,
    HoldForm[2Cos[3 Pi / 12]== 2Cos[Pi / 4]],
    HoldForm[2Cos[5 Pi / 12]== Sqrt[2-Sqrt[3]]/2]
};


CosTable[k_,12]:=HoldForm[]
