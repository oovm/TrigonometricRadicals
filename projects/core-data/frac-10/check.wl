(* ::Package:: *)

Sqrt[Table[(2 System`TrigToRadicalsDump`cos[i Pi/10])^2,{i,1,9}]//simplify]/2


Sqrt[Table[(2 System`TrigToRadicalsDump`cos[i Pi/10])^2,{i,1,9}]//simplify]/2//N


Table[Cos[i Pi/10],{i,1,9}]//N
