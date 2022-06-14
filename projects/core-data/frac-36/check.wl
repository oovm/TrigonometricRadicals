(* ::Package:: *)

rule={
-1+I Sqrt[3]->2\[Omega],
-1-I Sqrt[3]->2\[Omega]^2
};
Simplify`TrigToRealRadicals;
System`TrigToRadicalsDump`cos[1Pi/36]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[3Pi/36]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[5Pi/36]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[7Pi/36]/.rule//FullSimplify
