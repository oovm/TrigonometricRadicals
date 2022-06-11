(* ::Package:: *)

cos13 = {
    HoldForm[12Cos[2Pi / 13] == + (Sqrt[13] - 1 + 2 root[1]^(1 / 3) + 2 root[2]^(1 / 3))] ,
    HoldForm[12Cos[2Pi / 13] == - (Sqrt[13] + 1 - 2 root[3]^(1 / 3) - 2 root[4]^(1 / 3)) ]  ,
    HoldForm[12Cos[2Pi / 13] == + (Sqrt[13] - 1 + 2 Exp[2 I Pi / 3] root[1]^(1 / 3) + 2 Exp[4 I Pi / 3] root[2]^(1 / 3))],
    HoldForm[12Cos[2Pi / 13] == + (Sqrt[13] - 1 + 2 Exp[2 I Pi / 3] root[2]^(1 / 3) + 2 Exp[4 I Pi / 3] root[1]^(1 / 3))],
    HoldForm[12Cos[2Pi / 13] == - (Sqrt[13] + 1 - 2 Exp[2 I Pi / 3] root[3]^(1 / 3) - 2 Exp[4 I Pi / 3] root[4]^(1 / 3))],
    HoldForm[12Cos[2Pi / 13] == - (Sqrt[13] + 1 - 2 Exp[2 I Pi / 3] root[4]^(1 / 3) - 2 Exp[4 I Pi / 3] root[3]^(1 / 3))]
}


lhs = Table[Cos[2Pi i / 13], {i, 1, 6}];
rhs = ReleaseHold[cos13[[All, 1, 2]]] /. {
    root[k_] :> Root[59319 - 9126 * #1 + 1027 * #1^2 - 52 * #1^3 + #1^4 & , k, 0]
};
lhs - N@rhs // Chop
