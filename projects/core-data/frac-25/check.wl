(* ::Package:: *)

((-1 - Sqrt[5] - I Sqrt[10 - 2 Sqrt[5]]) / 4) // RootReduce


cos25 = {
    HoldForm[2 Cos[2 Pi / 25] == root[3]^(1 / 5) + root[4]^(1 / 5)],
    HoldForm[2 Cos[4 Pi / 25] == root[1]^(1 / 5) + root[2]^(1 / 5)],
    HoldForm[2 Cos[6 Pi / 25] == root[4] root[1]^(1 / 5) + root[3] root[2]^(1 / 5)],
    HoldForm[2 Cos[8 Pi / 25] == root[4] root[3]^(1 / 5) + root[3] root[4]^(1 / 5)],
    HoldForm[2 Cos[10Pi / 25] == 2 Cos[2 Pi / 5]],
    HoldForm[2 Cos[12Pi / 25] == root[4]root[4]^(1 / 5) + root[3]root[3]^(1 / 5)],
    HoldForm[2 Cos[14Pi / 25] == root[4]root[2]^(1 / 5) + root[3]root[1]^(1 / 5)],
    HoldForm[2 Cos[16Pi / 25] == root[2]root[1]^(1 / 5) + root[1]root[2]^(1 / 5)],
    HoldForm[2 Cos[18Pi / 25] == root[2]root[3]^(1 / 5) + root[1]root[4]^(1 / 5)],
    HoldForm[2 Cos[20Pi / 25] == 2 Cos[4 Pi / 5]],
    HoldForm[2 Cos[22Pi / 25] == root[2]root[4]^(1 / 5) + root[1] root[3]^(1 / 5) ],
    HoldForm[2 Cos[24Pi / 25] == root[2]root[2]^(1 / 5) + root[1] root[1]^(1 / 5) ]
};


lhs = Table[2Cos[2Pi i / 25], {i, 1, 12}];
rhs = ReleaseHold[cos25[[All, 1, 2]]] /. {
    root[k_] :> Root[1 + # + #^2 + #^3 + #^4 & , k, 0]
};
lhs - N@rhs // Chop


Root[1 + # + #^2 + #^3 + #^4 & , 1, 0] // ToRadicals // ExpToTrig // Simplify
Root[1 + # + #^2 + #^3 + #^4 & , 2, 0] // ToRadicals // ExpToTrig // Simplify
Root[1 + # + #^2 + #^3 + #^4 & , 3, 0] // ToRadicals // ExpToTrig // Simplify
Root[1 + # + #^2 + #^3 + #^4 & , 4, 0] // ToRadicals // ExpToTrig // Simplify
