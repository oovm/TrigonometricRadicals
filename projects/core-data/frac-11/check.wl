(* ::Package:: *)

Simplify`TrigToRealRadicals;
noSin[e_] := FullSimplify[e, ComplexityFunction -> (100 Count[#, Sin[__] | Power[-1, ___], All] + LeafCount[#]&)]
System`TrigToRadicalsDump`cos[Pi / 11];
Vieta[list_] := Block[
    {l = Length[list]},
    Table[Tr[Times @@ (list[[#]])& /@ Subsets[Range@l, {i}]], {i, 1, l}]
];


Clear[s]
Solve[{Exp[2 s Pi I / 11] == E^((I \[Pi]) / 11), 0 < s < 11}, s]


Clear[h,t]
h=(n-1)/2;
t=Table[Tr[\[Omega]^{k, n-k}]/2, {k, 1, h}]
Flatten[Transpose@{-Reverse@t,t}]//Expand


n = 15;p = 2;
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


gen[n_]:=Min@Select[Range[n],CoprimeQ[#, n] &&MultiplicativeOrder[#, n] == CarmichaelLambda[n] &]


n = 11;g = gen[n]
Table[{i, n - i}, {i, 1, (n - 1) / 2}]


Cos[2Pi/11]//RootReduce//ToRadicals


cycle = 0;
period = 1;
Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[1, i], {i, 0, period - 1}]
{1}


cycle = 1;
period = 5;
elemnets = Table[PowerMod[p, Range[i, n - 2, period], n], {i, 0, period - 1}]
vars = Table[orbit[cycle, i], {i, 0, period - 1}]
solve[-1, -4, True]


Table[Exp[2 Pi I k /11 ]+Exp[-2 Pi I k /11 ],{k,1,5}]//RootReduce


CoefficientList[MinimalPolynomial[Root[1 + 3 # - 3 #^2 - 4 #^3 + #^4 + #^5& , 5, 0],x],x]//Reverse


CoefficientList[MinimalPolynomial[Cos[2Pi/11],x],x]//Reverse


{a,b}=getPseudoRoot[32,16,-32,-12,6,1]//RootReduce


Root[25937424601 + 15766892900000 # + 4671810000000000 #^2 + 979000000000000000 #^3 + 100000000000000000000 #^4& , 1, 0]//ToRadicals//simplify


guess[a_,b_,target_]:=Catch@Table[
If[
Chop[b^(1/5) . Exp[2.0 var Pi I /5]+a-target]===0,
Throw[var]
],
{var,Tuples[Range[0,4],4]}
]


List/@Table[^k== Simplify[Exp[2 k Pi I / 5]//ExpToTrig],{k,0,4}]


\[CurlyEpsilon]^{
guess[a,b,Cos[2Pi/11]],
guess[a,b,Cos[4Pi/11]],
guess[a,b,Cos[6Pi/11]],
guess[a,b,Cos[8Pi/11]],
guess[a,b,Cos[10Pi/11]]
}


System`TrigToRadicalsDump`cos[2Pi / 11]//N


(* ::InheritFromParent:: *)
(*1/10 (-1+Exp[4*2Pi I/5] (Root[25937424601 + 157668929 # + 467181 #^2 + 979 #^3 + #^4& , 2, 0])^(1/5)+Exp[1*2Pi I/5](Root[25937424601 + 157668929 # + 467181 #^2 + 979 #^3 + #^4& , 1, 0])^(1/5)+Exp[4*2Pi I/5] (Root[25937424601 + 157668929 # + 467181 #^2 + 979 #^3 + #^4& , 4, 0])^(1/5)+Exp[1*2Pi I/5] (Root[25937424601 + 157668929 # + 467181 #^2 + 979 #^3 + #^4& , 3, 0])^(1/5))//N*)


s1 = Total[w^{1, 10}]
s2 = Total[w^{2, 9}]
s3 = Total[w^{3, 8}]
s4 = Total[w^{4, 7}]
s5 = Total[w^{5, 6}]
ExpandAll@Vieta[{s1, s2, s3, s4, s5}] /. w^k_ -> w^Mod[k, 11]
% // TableForm


Solve[Vieta[{\[Omega], b, c, d, e}] == {-1, -4, 3, 3, -1}] //ToRadicals


Clear[rule, value];
value = {
    (7 + \[Beta] + \[Beta]^2) / (6 \[Beta]),
    (7 - \[Alpha] + \[Alpha]^2) / (6 \[Alpha]),
    (\[Alpha]^2 \[Beta] - \[Alpha] \[Beta]^2 - 7 \[Alpha] + 7 \[Beta] + \[Alpha] \[Beta]) / (6\[Alpha] \[Beta]),
    (\[Alpha] \[Beta]^2 - \[Alpha]^2 \[Beta] - \[Alpha] \[Beta] + 7 \[Alpha] - 7 \[Beta]) / (6\[Alpha] \[Beta]),
    -(7 - \[Alpha] + \[Alpha]^2) / (6 \[Alpha]),
    -(7 + \[Beta] + \[Beta]^2) / (6 \[Beta])
};
rule = {
    \[Alpha] -> (7(3 I Sqrt[3] + 1) / 2)^(1 / 3),
    \[Beta] -> (7(3 I Sqrt[3] - 1) / 2)^(1 / 3)
};
value /. rule // N // Chop
Table[Cos[k Pi / 7], {k, 1, 6}] // N
