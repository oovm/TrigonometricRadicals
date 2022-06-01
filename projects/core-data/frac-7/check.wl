(* ::Package:: *)

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
