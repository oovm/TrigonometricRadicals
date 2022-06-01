(* ::Package:: *)

data = <|
	1 -> {
		HoldForm[(I - 1) / (4Sqrt[2])],
		HoldForm[A[1, 1] A[3, 3] (I B[2, 1] - 5^(1 / 4) B[4, 2]) - I A[1, 3] A[3, 1] (I B[2, 1] + 5^(1 / 4) B[4, 2])],
		HoldForm[(I + 1) / (4Sqrt[2])],
		HoldForm[A[1, 1] A[3, 3] (I B[2, 1] - 5^(1 / 4) B[4, 2]) + I A[1, 3] A[3, 1] (I B[2, 1] + 5^(1 / 4) B[4, 2])]
	},
	2 -> {
		HoldForm[4I^2 ],
		HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) - A[3, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])],
		HoldForm[4I ^1],
		HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) + A[3, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])]
	},
	3 -> {
		HoldForm[2 I Sqrt[2]],
		HoldForm[5^(1 / 4) A[4, 1] B[2, 2] + I A[2, 1] B[4, 1]],
		HoldForm[2 Sqrt[2] I],
		HoldForm[5^(1 / 4) A[2, 1] B[2, 2] - I A[4, 1] B[4, 1]]
	},
	4 -> {
		HoldForm[I^1 / 2  ],
		HoldForm[A[1, 3] (B[2, 1] + I 5^(1 / 4) B[4, 2]) - A[3, 3] (B[2, 1] - I 5^(1 / 4) B[4, 2])],
		HoldForm[I^2 / 2],
		HoldForm[A[1, 3] (B[2, 1] + I 5^(1 / 4) B[4, 2]) + A[3, 3] (B[2, 1] - I 5^(1 / 4) B[4, 2])]
	},
	5 -> {
		HoldForm[(1 + I ) / (2Sqrt[2])],
		HoldForm[A[1, 3] - I A[3, 3]],
		HoldForm[(1 - I ) / (2Sqrt[2])],
		HoldForm[A[1, 3] + I A[3, 3]]
	},
	6 -> {
		HoldForm[Sqrt[6] / 4 (5^(1 / 4)  B[4, 2] + Sqrt[2 / 3]B[2, 1])],
		HoldForm[Sqrt[2] / 4 (5^(1 / 4) B[4, 2] - Sqrt[6] B[2, 1])],
		1,
		HoldForm[Sqrt[3] 5^(1 / 4)  B[4, 2] + Sqrt[2]B[2, 1]],
		HoldForm[5^(1 / 4) B[4, 2] - Sqrt[6] B[2, 1]]
	},
	7 -> {
		HoldForm[(1 / 4 + I / 4)(I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 3 / 4] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[(1 / 4 - I / 4)(I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 3 / 4] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 3 / 4] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 3 / 4] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	8 -> {
		HoldForm[(Sqrt[2] I) / 4 (A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[Sqrt[2] / 4 (A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])]
	},
	9 -> {
		HoldForm[-(1 / 2)(Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])],
		HoldForm[-(1 / 2)(Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])],
		1,
		HoldForm[Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]],
		HoldForm[Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]]
	},
	10 -> {
		HoldForm[1 / 2 (A[1, 3] A[3, 1] + A[1, 1] A[3, 3])],
		HoldForm[I / 2 (A[1, 3] A[3, 1] - A[1, 1] A[3, 3])],
		HoldForm[1 / I],
		HoldForm[A[1, 3] A[3, 1] + A[1, 1] A[3, 3]],
		HoldForm[A[1, 3] A[3, 1] - A[1, 1] A[3, 3]]
	},
	11 -> {
		HoldForm[(1 / 4 + I / 4)(A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + I A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[(1 / 4 - I / 4)(A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - I A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3] A[3, 1] + A[1, 1] A[3, 3]],
		HoldForm[A[1, 3] A[3, 1] - A[1, 1] A[3, 3]]
	},
	12 -> {
		HoldForm[-((I Sqrt[2]) / 4)(5^(1 / 4) B[2, 2] - I Sqrt[6] B[4, 1])],
		HoldForm[-((I Sqrt[6]) / 4)(5^(1 / 4) B[2, 2] + I Sqrt[2 / 3] B[4, 1])],
		1,
		HoldForm[5^(1 / 4) B[2, 2] - I Sqrt[6] B[4, 1]],
		HoldForm[Sqrt[3] 5^(1 / 4) B[2, 2] + I Sqrt[2] B[4, 1]]
	},
	13 -> {
		HoldForm[(I / 4 + 1 / 4)(I A[1, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[(I / 4 - 1 / 4)(I A[1, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[1 / I],
		HoldForm[I A[1, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[I A[1, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	14 -> {
		HoldForm[(I Sqrt[2]) / 4 (A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[Sqrt[2] / 4 (A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[I],
		HoldForm[A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])],
		HoldForm[A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])]
	},
	15 -> {
		HoldForm[+ (A[4, 1] / Sqrt[2])],
		HoldForm[- (A[2, 1] / Sqrt[2])],
		HoldForm[-1],
		HoldForm[A[4, 1]],
		HoldForm[A[2, 1]]
	},
	16 -> {
		HoldForm[- (Sqrt[2] / 4)(A[1, 3 / 4] (I Sqrt[2]  B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2]  B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[+ (Sqrt[2] / (4I))(A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2]  B[2, 1] - 5^(1 / 4) B[4, 2])],
		HoldForm[A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])]
	},
	17 -> {
		HoldForm[(1 / 4 + I / 4)(A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + I A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[(1 / 4 - I / 4)(A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - I A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + I A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - I A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	18 -> {
		HoldForm[Sqrt[3 / 8 - Sqrt[5] / 8]],
		HoldForm[Sqrt[5 / 8 + Sqrt[5] / 8]],
		1,
		HoldForm[Sqrt[1 - 2 / Sqrt[5]]],
		1
	},
	19 -> {
		HoldForm[(1 / 4 + I / 4)(I Sqrt[2] (A[1, 1] A[3, 3] + I A[1, 3] A[3, 1]) B[2, 1] + 5^(1 / 4)(A[1, 1] A[3, 3] - I A[1, 3] A[3, 1]) B[4, 2])],
		HoldForm[(1 / 4 - I / 4)(I Sqrt[2] (A[1, 1] A[3, 3] - I A[1, 3] A[3, 1]) B[2, 1] + 5^(1 / 4)(A[1, 1] A[3, 3] + I A[1, 3] A[3, 1]) B[4, 2])],
		HoldForm[I],
		HoldForm[I Sqrt[2] (A[1, 1] A[3, 3] + I A[1, 3] A[3, 1]) B[2, 1] + 5^(1 / 4)(A[1, 1] A[3, 3] - I A[1, 3] A[3, 1]) B[4, 2]],
		HoldForm[I Sqrt[2] (A[1, 1] A[3, 3] - I A[1, 3] A[3, 1]) B[2, 1] + 5^(1 / 4)(A[1, 1] A[3, 3] + I A[1, 3] A[3, 1]) B[4, 2]]
	},
	20 -> {
		HoldForm[-(I / 2)(A[1, 3 / 4] - A[3, 3 / 4])],
		HoldForm[-(1 / 2)(A[1, 3 / 4] + A[3, 3 / 4])],
		HoldForm[I],
		HoldForm[A[1, 3 / 4] - A[3, 3 / 4]],
		HoldForm[A[1, 3 / 4] + A[3, 3 / 4]]
	},
	21 -> {
		HoldForm[1 / 2  (Sqrt[2] A[4, 1] B[2, 1] - 5^(1 / 4) A[2, 1] B[4, 2])],
		HoldForm[1 / 2 (Sqrt[2] A[2, 1] B[2, 1] + 5^(1 / 4) A[4, 1] B[4, 2])],
		HoldForm[1],
		HoldForm[Sqrt[2] A[4, 1] B[2, 1] - 5^(1 / 4) A[2, 1] B[4, 2]],
		HoldForm[Sqrt[2] A[2, 1] B[2, 1] + 5^(1 / 4) A[4, 1] B[4, 2]]
	},
	22 -> {
		HoldForm[Sqrt[2] / 4 (A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[Sqrt[2] / (4I)  (A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	23 -> {
		HoldForm[(-(1 / 4) - I / 4)(I A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[(-(1 / 4) + I / 4) (I A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[I A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])],
		HoldForm[I A[1, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[3, 3] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])]
	},
	24 -> {
		HoldForm[-(Sqrt[2] / 4) ( 5^(1 / 4) B[4, 2] + Sqrt[6] B[2, 1])],
		HoldForm[+ (Sqrt[6] / 4) (5^(1 / 4)  B[4, 2] - Sqrt[2 / 3] B[2, 1])],
		HoldForm[1],
		HoldForm[5^(1 / 4) B[4, 2] + Sqrt[6] B[2, 1]],
		HoldForm[Sqrt[2] B[2, 1] - Sqrt[3] 5^(1 / 4)   B[4, 2]]
	},
	25 -> {
		HoldForm[(I + 1) / (2Sqrt[2]) (I A[1, 3 / 4] + I^2 A[3, 3 / 4])],
		HoldForm[(I - 1) / (2Sqrt[2]) (I A[1, 3 / 4] + I^0 A[3, 3 / 4])],
		HoldForm[1 / I],
		HoldForm[I A[1, 3 / 4] + I^2 A[3, 3 / 4]],
		HoldForm[I A[1, 3 / 4] + I^0 A[3, 3 / 4]]
	},
	26 -> {
		HoldForm[Sqrt[2] / (4I) (5^(1 / 4) (A[1, 1] A[3, 3] - A[1, 3] A[3, 1]) B[4, 2] + I Sqrt[2] (A[1, 1] A[3, 3] + A[1, 3] A[3, 1]) B[2, 1])],
		HoldForm[Sqrt[2] / 4 (5^(1 / 4) (A[1, 1] A[3, 3] + A[1, 3] A[3, 1]) B[4, 2] + I Sqrt[2] (A[1, 1] A[3, 3] - A[1, 3] A[3, 1]) B[2, 1])],
		HoldForm[1 / I],
		HoldForm[5^(1 / 4) (A[1, 1] A[3, 3] - A[1, 3] A[3, 1]) B[4, 2] + I Sqrt[2] (A[1, 1] A[3, 3] + A[1, 3] A[3, 1]) B[2, 1]],
		HoldForm[5^(1 / 4) (A[1, 1] A[3, 3] + A[1, 3] A[3, 1]) B[4, 2] + I Sqrt[2] (A[1, 1] A[3, 3] - A[1, 3] A[3, 1]) B[2, 1]]
	},
	27 -> {
		HoldForm[-(I / 2) (5^(1 / 4) B[2, 2] - I Sqrt[2] B[4, 1])],
		HoldForm[-(I / 2) (5^(1 / 4) B[2, 2] + I Sqrt[2] B[4, 1])],
		HoldForm[1],
		HoldForm[5^(1 / 4) B[2, 2] - I Sqrt[2] B[4, 1]],
		HoldForm[5^(1 / 4) B[2, 2] + I Sqrt[2] B[4, 1]]
	},
	28 -> {
		HoldForm[Sqrt[2] / (4I) (A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[Sqrt[2] / 4 (A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	29 -> {
		HoldForm[(-(1 / 4) - I / 4)(I A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] ( I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[(-(1 / 4) + I / 4)(I   A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[I],
		HoldForm[I A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] ( I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])],
		HoldForm[I   A[1, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])]
	},
	30 -> {
		1 / 2,
		Sqrt[3] / 2,
		1,
		1,
		Sqrt[3]
	},
	31 -> {
		HoldForm[(1 / 4 - I / 4) (A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - I A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[(1 / 4 + I / 4)(A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + I A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) - I A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])],
		HoldForm[A[1, 3] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]) + I A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])]
	},
	29 -> {
		HoldForm[Sqrt[2] / 4  I^3(A[1, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[3, 3] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[Sqrt[2] / 4 I^2(A[1, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[3, 3] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[A[1, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) + A[3, 3] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])],
		HoldForm[A[1, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]) - A[3, 3] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1])]
	},
	33 -> {
		HoldForm[I / 2 (I Sqrt[2] A[2, 1] B[4, 1] - 5^(1 / 4) A[4, 1] B[2, 2])],
		HoldForm[I / 2 (I Sqrt[2] A[4, 1] B[4, 1] + 5^(1 / 4) A[2, 1] B[2, 2])],
		HoldForm[1],
		HoldForm[I Sqrt[2] A[2, 1] B[4, 1] - 5^(1 / 4) A[4, 1] B[2, 2]],
		HoldForm[I Sqrt[2] A[4, 1] B[4, 1] + 5^(1 / 4) A[2, 1] B[2, 2]]
	},
	34 -> {
		HoldForm[Sqrt[2] / 4 I^3(A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[Sqrt[2] / 4 I^0(A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])],
		HoldForm[A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])]
	},
	35 -> {
		HoldForm[(1 + I) / (2Sqrt[2]) (I A[1, 3] A[3, 1] - A[1, 1] A[3, 3])],
		HoldForm[(1 - I) / (2Sqrt[2]) (I A[1, 3] A[3, 1] + A[1, 1] A[3, 3])],
		HoldForm[I],
		HoldForm[I A[1, 3] A[3, 1] - A[1, 1] A[3, 3]],
		HoldForm[I A[1, 3] A[3, 1] + A[1, 1] A[3, 3]]
	},
	36 -> {
		HoldForm[Sqrt[5 / 8 - Sqrt[5] / 8]],
		HoldForm[Sqrt[3 / 8 + Sqrt[5] / 8]],
		HoldForm[1],
		HoldForm[Sqrt[5 - 2 Sqrt[5]]],
		HoldForm[1]
	}
|>
