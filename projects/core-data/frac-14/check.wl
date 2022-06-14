(* ::Package:: *)

MinimalPolynomial[12Cos[2Pi / 13] + 1, x]


cos13 = {
    HoldForm[12Cos[2 Pi / 13] + 1 == + Sqrt[13] + root[1]^(1 / 3) + root[2]^(1 / 3)] ,
    HoldForm[12Cos[4 Pi / 13] + 1 == - Sqrt[13] + root[3]^(1 / 3) + root[4]^(1 / 3) ]  ,
    HoldForm[12Cos[6 Pi / 13] + 1 == + Sqrt[13] + Exp[2Pi I / 3] root[1]^(1 / 3) + Exp[4Pi I / 3] root[2]^(1 / 3)],
    HoldForm[12Cos[8 Pi / 13] + 1 == + Sqrt[13] + Exp[2Pi I / 3] root[2]^(1 / 3) + Exp[4Pi I / 3] root[1]^(1 / 3)],
    HoldForm[12Cos[10Pi / 13] + 1 == - Sqrt[13] + Exp[2Pi I / 3] root[3]^(1 / 3) + Exp[4Pi I / 3] root[4]^(1 / 3)],
    HoldForm[12Cos[12Pi / 13] + 1 == - Sqrt[13] + Exp[2Pi I / 3] root[4]^(1 / 3) + Exp[4Pi I / 3] root[3]^(1 / 3)]
};


lhs = Table[12Cos[2Pi i / 13] + 1, {i, 1, 6}];
rhs = ReleaseHold[cos13[[All, 1, 2]]] /. {
    root[k_] :> 2^3 Root[59319 - 9126 * #1 + 1027 * #1^2 - 52 * #1^3 + #1^4 & , k, 0]
};
lhs - N@rhs // Chop


M = {
    {1, 1, 1, 0, 0},
    {-1, 0, 0, 1, 1},
    {1, w, w^2, 0, 0},
    {1, w^2, w, 0, 0},
    {-1, 0, 0, w, w^2},
    {-1, 0, 0, w^2, w}
}
