(* ::Package:: *)

n=15;


all=Sqrt[Table[(4 System`TrigToRadicalsDump`cos[i Pi/n])^2,{i,1,n-1}]//simplify]/4


all//N


Table[Cos[i Pi/n],{i,1,n-1}]//N
