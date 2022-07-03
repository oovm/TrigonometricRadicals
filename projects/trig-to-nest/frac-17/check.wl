(* ::Package:: *)

(* ::Subsubsection:: *)
(*prelude*)


trySolve[poly_]:=Block[
{mod, eqs},
mod=PolynomialMod[((x^2-a)^2-b)^2-(c+s x),poly];
eqs=Flatten@{Thread[CoefficientList[mod,x]=={0,0,0}],s^2==1};
Solve[eqs,{a,b,c,s},Integers]
]
signs=Tuples[{{1,-1},{1,-1},{1,-1}}]


(* ::Subsubsection:: *)
(*7*)


n=7;p = 3;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


xx = 2Cos[2Pi/7];
yy = 2Cos[Pi/7];
zz = 2Cos[3Pi/7];
xx-Sqrt[1+Sqrt[3-Sqrt[6+xx]]]//N//Chop
yy-Sqrt[1+Sqrt[3+Sqrt[6-yy]]]//N//Chop
zz-Sqrt[1-Sqrt[3-Sqrt[6-zz]]]//N//Chop


(* ::Subsubsection:: *)
(*9*)


n=9;p = 2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
table ={{1,8},{2,7},{4,5}}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


xx = 2Cos[2Pi/9];
yy = 2Cos[4Pi/9];
zz = 2Cos[Pi/9];
xx-Sqrt[2+Sqrt[2-Sqrt[2+xx]]]//N//Chop
yy-Sqrt[2-Sqrt[2+Sqrt[2+yy]]]//N//Chop
zz-Sqrt[2+Sqrt[2+Sqrt[2-zz]]]//N//Chop


(* ::Subsubsection:: *)
(*13*)


n=13;p = 2;
period = 3;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n]+1,3]
MinimalPolynomial[First@roots,x]//trySolve


xx+1-Sqrt[4-Sqrt[4+Sqrt[4-xx-1]]]//N


xx = 2(Cos[2Pi/13]+Cos[10Pi/13]);
yy = 2(Cos[4Pi/13]+Cos[6Pi/13])+1;
zz = 2(Cos[5Pi/13]+Cos[Pi/13])-1;
xx-Sqrt[4-Sqrt[4+Sqrt[4-xx]]]//N//Chop
yy-Sqrt[4+Sqrt[4-Sqrt[4-yy]]]//N//Chop
zz-Sqrt[4-Sqrt[4-Sqrt[4+zz]]]//N//Chop


Table[If[Chop[zz+s[[1]]Sqrt[4+s[[2]]Sqrt[4+s[[3]]Sqrt[4-zz]]]//N]===0,s,Nothing],{s,signs}]


(* ::Subsubsection:: *)
(*14*)


n=14;p = 3;
table = {{1,13},{3,11},{9,5}}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*18*)


n=18;p =5;
table = {{1,17},{5,13},{7,11}}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*19*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=21;p =2;
period =7;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n]+4,3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*26*)


n=26;p =7;
table = {{1,5,25,21},{7,9,19,17},{23,11,3,15}}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*27*)


n=27;p =2;
table = {
{1,8,10,26,19,17},
{2,16,20,25,11,7},
{4,5,13,23,22,14}
}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*28*)


n=28;p =3;
period = 2;
table = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*29*)


n=29;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*31*)


n=31;p =3;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*34*)


n=34;p =3;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*35*)


n=35;p =2;
table = {
{1,8,29,22},
{2,16,23,9},
{4,32,11,18}
}
roots = RootReduce[Tr/@Exp[2 Pi I table/ n]]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*36*)


n=36;p= 5;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*37*)


n=37;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n]+1,3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*38*)


n=38;p =3;
table = {
{1,27,7,37,11,31},
{3,5,21,35,33,17},
{9,15,25,29,23,13}
}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*39*)


n=39;p =2;
table = {
{1,8,25,5},
{2,16,11,10},
{4,32,22,20}
}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*42*)


n=42;p =5;
table = {{1,41},{5,37},{25,17}}
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve


(* ::Subsubsection:: *)
(*21*)


n=19;p =2;
table = Table[PowerMod[p, Range[i, n - 2, 3], n], {i, 0, 2}]
roots = RootApproximant[Tr/@Exp[2 Pi I table/ n],3]
MinimalPolynomial[First@roots,x]//trySolve
