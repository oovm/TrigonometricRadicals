(* ::Package:: *)

((-1+I Sqrt[3])/2)^(1/3)


rule={
-1+I Sqrt[3]->2\[Omega],
-1-I Sqrt[3]->2\[Omega]^2
};
Simplify`TrigToRealRadicals;
System`TrigToRadicalsDump`cos[1Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[3Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[5Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[7Pi/18]/.rule//FullSimplify


(\[Omega]^2)^(1/3)/.{\[Omega]->(-1+I Sqrt[3])/2}//N
\[Omega]^8/.{\[Omega]->((-1+I Sqrt[3])/2)^(1/3)}//N


Tan[30\[Degree]]


Tan[40\[Degree]]//N
(I)(\[Omega]^7-1)/(\[Omega]^7+1)/.{\[Omega]->((-1+I Sqrt[3])/2)^(1/3)}//N//Chop


Exp[2Pi I/3]^(1/3)//N
((-1+I Sqrt[3])/2)^(1/3)//N


System`TrigToRadicalsDump`tan[1Pi/18]/.rule//FullSimplify
System`TrigToRadicalsDump`cos[2Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[3Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[4Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[5Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[6Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[7Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`cos[8Pi/18]/.rule//Simplify


(* ::Input:: *)
(*1/2 (\[Omega]^5-\[Omega]^4)*)


System`TrigToRadicalsDump`sin[1Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[2Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[3Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[4Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[5Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[6Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[7Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[8Pi/18]/.rule//Simplify
System`TrigToRadicalsDump`sin[9Pi/18]/.rule//Simplify


System`TrigToRadicalsDump`sin[1Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[2Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[3Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[4Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[5Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[6Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[7Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[8Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[9Pi/180]/.rule//FullSimplify
System`TrigToRadicalsDump`sin[10Pi/180]/.rule//FullSimplify


Plot[{Sec[x],Csc[x]},{x,-2Pi,2Pi}]
