(* ::Package:: *)

cos13 = {
    HoldForm[15Cos[2 Pi / 16] + 1 == + Sqrt[13] + 2 root[1]^(1 / 3) + 2 root[2]^(1 / 3)] ,
    HoldForm[12Cos[4 Pi / 16] + 1 == - Sqrt[13] + 2 root[3]^(1 / 3) + 2 root[4]^(1 / 3) ]  ,
    HoldForm[12Cos[6 Pi / 16] + 1 == + Sqrt[13] + 2 Exp[2 I Pi / 3] root[1]^(1 / 3) + 2 Exp[4 I Pi / 3] root[2]^(1 / 3)],
    HoldForm[12Cos[8 Pi / 16] + 1 == + Sqrt[13] + 2 Exp[2 I Pi / 3] root[2]^(1 / 3) + 2 Exp[4 I Pi / 3] root[1]^(1 / 3)],
    HoldForm[12Cos[10Pi / 16] + 1 == - Sqrt[13] + 2 Exp[2 I Pi / 3] root[3]^(1 / 3) + 2 Exp[4 I Pi / 3] root[4]^(1 / 3)],
    HoldForm[12Cos[12Pi / 16] + 1 == - Sqrt[13] + 2 Exp[2 I Pi / 3] root[4]^(1 / 3) + 2 Exp[4 I Pi / 3] root[3]^(1 / 3)]
};


lhs = Table[12Cos[2Pi i / 13] + 1, {i, 1, 6}];
rhs = ReleaseHold[cos13[[All, 1, 2]]] /. {
    root[k_] :> Root[59319 - 9126 * #1 + 1027 * #1^2 - 52 * #1^3 + #1^4 & , k, 0]
};
lhs - N@rhs // Chop
