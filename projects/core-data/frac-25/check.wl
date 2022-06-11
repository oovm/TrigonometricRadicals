(* ::Package:: *)

((-1-Sqrt[5]-I Sqrt[10-2 Sqrt[5]])/4)//RootReduce


cos25={
HoldForm[2 Cos[2 \[Pi]/25]==root[3]^(1/5)+root[4]^(1/5)],
HoldForm[2 Cos[4 \[Pi]/25]==root[1]^(1/5)+root[2]^(1/5)],
HoldForm[2 Cos[6 \[Pi]/25]==((root[2])^(1/5) (-1+Sqrt[5]-I Sqrt[2 (5+Sqrt[5])])+(root[1])^(1/5) (-1+Sqrt[5]+I Sqrt[2 (5+Sqrt[5])]))/4 ],
HoldForm[2 Cos[8 \[Pi]/25]==((-1+Sqrt[5]-I Sqrt[2 (5+Sqrt[5])]) (root[4])^(1/5)+(root[3])^(1/5) (-1+Sqrt[5]+I Sqrt[2 (5+Sqrt[5])]))/4],
HoldForm[2 Cos[10 \[Pi]/25]== 2 Cos[2\[Pi]/5]],
HoldForm[2 Cos[12 \[Pi]/25]==((-1+Sqrt[5]-I Sqrt[2 (5+Sqrt[5])])(root[3])^(1/5))/4+((-1+Sqrt[5]+I Sqrt[2 (5+Sqrt[5])])(root[4])^(1/5))/4],
HoldForm[2 Cos[14 \[Pi]/25]==((root[1])^(1/5) (-1+Sqrt[5]-I Sqrt[2 (5+Sqrt[5])])+(root[2])^(1/5) (-1+Sqrt[5]+I Sqrt[2 (5+Sqrt[5])]))/4],
HoldForm[2 Cos[16 \[Pi]/25]==(-(root[1])^(1/5) (1+Sqrt[5]-I Sqrt[10-2 Sqrt[5]])-(root[2])^(1/5) (1+Sqrt[5]+I Sqrt[10-2 Sqrt[5]]))/4 ],
HoldForm[2 Cos[18 \[Pi]/25]==(-((1+Sqrt[5]-I Sqrt[10-2 Sqrt[5]]) (root[3])^(1/5))-(1+Sqrt[5]+I Sqrt[10-2 Sqrt[5]]) (root[4])^(1/5))/4 ],
HoldForm[2 Cos[20 \[Pi]/25]==2 Cos[4 \[Pi]/5]],
HoldForm[2 Cos[22 \[Pi]/25]==(-((1+Sqrt[5]+I Sqrt[10-2 Sqrt[5]]) (root[3])^(1/5))-(1+Sqrt[5]-I Sqrt[10-2 Sqrt[5]]) (root[4])^(1/5))/4 ],
HoldForm[2 Cos[24 \[Pi]/25]==((-1-Sqrt[5]-I Sqrt[10-2 Sqrt[5]])root[1]^(1/5)+(-1-Sqrt[5]+I Sqrt[10-2 Sqrt[5]])root[2]^(1/5))/4 ]
};
lhs = Table[2Cos[2Pi i / 25], {i, 1, 12}];
rhs = ReleaseHold[cos25[[All, 1, 2]]] /. { 
    root[k_] :> Root[1 + #1 + #1^2 + #1^3 + #1^4 & , k, 0]
};
lhs - N@rhs // Chop
