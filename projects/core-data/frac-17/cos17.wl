(* ::Package:: *)

cos17 = {
    HoldForm[Cos[(2 π) / 17] == +(1 / 16)(β + 17^(1 / 4) Sqrt[2β] + 2Sqrt[14 + 3α - 4 * 17^(1 / 4) Sqrt[2α] + Sqrt[144 - 26β]])],
    HoldForm[Cos[(4 π) / 17] == +(1 / 16)(β - 17^(1 / 4) Sqrt[2β] + 2Sqrt[14 + 3α + 4 * 17^(1 / 4) Sqrt[2α] - Sqrt[144 - 26β]])],
    HoldForm[Cos[(6 π) / 17] == -(1 / 16)(α - 17^(1 / 4) Sqrt[2α] - 2Sqrt[14 - 3β + 4 * 17^(1 / 4) Sqrt[2β] - Sqrt[144 + 26α]])],
    HoldForm[Cos[(8 π) / 17] == +(1 / 16)(β + 17^(1 / 4) Sqrt[2β] - 2Sqrt[14 + 3α - 4 * 17^(1 / 4) Sqrt[2α] + Sqrt[144 - 26β]])],
    HoldForm[Cos[(10π) / 17] == -(1 / 16)(α - 17^(1 / 4) Sqrt[2α] + 2Sqrt[14 - 3β + 4 * 17^(1 / 4) Sqrt[2β] - Sqrt[144 + 26α]])],
    HoldForm[Cos[(12π) / 17] == -(1 / 16)(α + 17^(1 / 4) Sqrt[2α] - 2Sqrt[14 - 3β - 4 * 17^(1 / 4) Sqrt[2β] + Sqrt[144 + 26α]])],
    HoldForm[Cos[(14π) / 17] == -(1 / 16)(α + 17^(1 / 4) Sqrt[2α] + 2Sqrt[14 - 3β - 4 * 17^(1 / 4) Sqrt[2β] + Sqrt[144 + 26α]])],
    HoldForm[Cos[(16π) / 17] == +(1 / 16)(β - 17^(1 / 4) Sqrt[2β] - 2Sqrt[14 + 3α + 4 * 17^(1 / 4) Sqrt[2α] - Sqrt[144 - 26β]])]
};
lhs = Table[Cos[2Pi i / 17], {i, 1, 8}];
rhs = ReleaseHold[cos17[[All, 1, 2]]] /. {
    α -> Sqrt[17] + 1,
    β -> Sqrt[17] - 1
};
lhs - N@rhs // Chop
