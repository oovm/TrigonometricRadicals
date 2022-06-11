(* ::Package:: *)

cos17 = {
    HoldForm[Cos[(2 \[Pi]) / 17] == + (1 / 8)(\[Beta] + 17^(1 / 4) Sqrt[\[Beta]] + Sqrt[2]Sqrt[7 + 3 \[Alpha] - 4 * 17^(1 / 4) Sqrt[\[Alpha]] + Sqrt[36 - 13\[Beta]]])],
    HoldForm[Cos[(4 \[Pi]) / 17] == + (1 / 8)(\[Beta] - 17^(1 / 4) Sqrt[\[Beta]] + Sqrt[2]Sqrt[7 + 3 \[Alpha] + 4 * 17^(1 / 4) Sqrt[\[Alpha]] - Sqrt[36 - 13\[Beta]]])],
    HoldForm[Cos[(6 \[Pi]) / 17] == -(1 / 8)(\[Alpha] - 17^(1 / 4) Sqrt[\[Alpha]] - Sqrt[2]Sqrt[7 - 3 \[Beta] + 4 * 17^(1 / 4) Sqrt[\[Beta]] - Sqrt[36 + 13\[Alpha]]])],
    HoldForm[Cos[(8 \[Pi]) / 17] == + (1 / 8)(\[Beta] + 17^(1 / 4) Sqrt[\[Beta]] - Sqrt[2]Sqrt[7 + 3 \[Alpha] - 4 * 17^(1 / 4) Sqrt[\[Alpha]] + Sqrt[36 - 13\[Beta]]])],
    HoldForm[Cos[(10\[Pi]) / 17] == -(1 / 8)(\[Alpha] - 17^(1 / 4) Sqrt[\[Alpha]] + Sqrt[2]Sqrt[7 - 3 \[Beta] + 4 * 17^(1 / 4) Sqrt[\[Beta]] - Sqrt[36 + 13\[Alpha]]])],
    HoldForm[Cos[(12\[Pi]) / 17] == -(1 / 8)(\[Alpha] + 17^(1 / 4) Sqrt[\[Alpha]] - Sqrt[2]Sqrt[7 - 3 \[Beta] - 4 * 17^(1 / 4) Sqrt[\[Beta]] + Sqrt[36 + 13\[Alpha]]])],
    HoldForm[Cos[(14\[Pi]) / 17] == -(1 / 8)(\[Alpha] + 17^(1 / 4) Sqrt[\[Alpha]] + Sqrt[2]Sqrt[7 - 3 \[Beta] - 4 * 17^(1 / 4) Sqrt[\[Beta]] + Sqrt[36 + 13\[Alpha]]])],
    HoldForm[Cos[(16\[Pi]) / 17] == + (1 / 8)(\[Beta] - 17^(1 / 4) Sqrt[\[Beta]] - Sqrt[2]Sqrt[7 + 3 \[Alpha] + 4 * 17^(1 / 4) Sqrt[\[Alpha]] - Sqrt[36 - 13\[Beta]]])]
};
ReleaseHold[cos17[[All, 1, 2]]] /. {
    \[Alpha] -> (Sqrt[17] + 1) / 2,
    \[Beta] -> (Sqrt[17] - 1) / 2
};
N[%]-Table[Cos[2Pi i / 17], {i, 1, 8}] // Chop
