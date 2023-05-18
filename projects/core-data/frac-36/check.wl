(* ::Package:: *)

rule={
-1+I Sqrt[3]->2\[Omega],
-1-I Sqrt[3]->2\[Omega]^2
};
Simplify`TrigToRealRadicals;
System`TrigToRadicalsDump`cos[1Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[3Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[5Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[7Pi/18]/.rule//FullSimplify


Cos[10\[Degree]]//N


1/2 (Sqrt[3] Cos[(2 \[Pi])/9]+Sin[(2 \[Pi])/9])//N


System`TrigToRadicalsDump`cos[1Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[2Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[3Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[4Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[5Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[6Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[7Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[8Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[9Pi/18]/.rule//Simplify


System`TrigToRadicalsDump`sin[1Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[2Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[3Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[4Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[5Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[6Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[7Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[8Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[9Pi/18]/.rule//Simplify



