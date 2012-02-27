(* ::Package:: *)

<|
	1 -> {
		(1 / 4 + I / 4)(I A[1, 1] A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + A[1, 3] A[3, 1] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])),
		(1 / 4 - I / 4)(I A[1, 1] A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - A[1, 3] A[3, 1] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])),
		I,
		I A[1, 1] A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + A[1, 3] A[3, 1] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]),
		I A[1, 1] A[3, 3] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - A[1, 3] A[3, 1] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])
	},
	2 -> {
		HoldForm[Sqrt[2] / 4 (Sqrt[2] (A[1, 3 / 4] + A[3, 3 / 4]) B[4, 1] - 5^(1 / 4) (A[1, 3 / 4] - A[3, 3 / 4]) B[2, 2])],
		HoldForm[Sqrt[2] / (4I)  (Sqrt[2] (A[1, 3 / 4] - A[3, 3 / 4]) B[4, 1] - 5^(1 / 4) (A[1, 3 / 4] + A[3, 3 / 4]) B[2, 2])],
		I,
		HoldForm[Sqrt[2] (A[1, 3 / 4] + A[3, 3 / 4]) B[4, 1] - 5^(1 / 4) (A[1, 3 / 4] - A[3, 3 / 4]) B[2, 2]],
		HoldForm[Sqrt[2] (A[1, 3 / 4] - A[3, 3 / 4]) B[4, 1] - 5^(1 / 4) (A[1, 3 / 4] + A[3, 3 / 4]) B[2, 2]]
	},
	3 -> {
		HoldForm[I / 2 (5^(1 / 4) A[4, 1] B[2, 2] + I Sqrt[2] A[2, 1] B[4, 1])],
		HoldForm[I / 2 (5^(1 / 4) A[2, 1] B[2, 2] - I Sqrt[2] A[4, 1] B[4, 1])],
		1,
		HoldForm[5^(1 / 4) A[4, 1] B[2, 2] + I Sqrt[2] A[2, 1] B[4, 1]],
		HoldForm[5^(1 / 4) A[2, 1] B[2, 2] - I Sqrt[2] A[4, 1] B[4, 1]]
	},
	4 -> {
		HoldForm[Sqrt[2] / 4 (I Sqrt[2] (A[1, 3] - A[3, 3]) B[2, 1] - 5^(1 / 4) (A[1, 3] + A[3, 3]) B[4, 2])],
		HoldForm[Sqrt[2] / 4 I (I Sqrt[2] (A[1, 3] + A[3, 3]) B[2, 1] - 5^(1 / 4) (A[1, 3] - A[3, 3]) B[4, 2])],
		HoldForm[1 / I],
		HoldForm[I Sqrt[2] (A[1, 3] - A[3, 3]) B[2, 1] - 5^(1 / 4) (A[1, 3] + A[3, 3]) B[4, 2]],
		HoldForm[I Sqrt[2] (A[1, 3] + A[3, 3]) B[2, 1] - 5^(1 / 4) (A[1, 3] - A[3, 3]) B[4, 2]]
	},
	5 -> {
		HoldForm[(1 + I) / (2Sqrt[2]) (A[1, 3] - I A[3, 3])],
		HoldForm[(1 - I) / (2Sqrt[2]) ( A[1, 3] + I A[3, 3])],
		I,
		HoldForm[A[1, 3] - I A[3, 3]],
		HoldForm[A[1, 3] + I A[3, 3]]
	},
	6 -> {
		HoldForm[Sqrt[6] / 4 (5^(1 / 4)  B[4, 2] + Sqrt[2 / 3]B[2, 1])],
		HoldForm[Sqrt[2] / 4 ( 5^(1 / 4) B[4, 2] - Sqrt[6] B[2, 1])],
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
		HoldForm[(Sqrt[2] I) / 4 (A[1, 3] A[3, 1] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[Sqrt[2] / 4 (A[1, 3] A[3, 1] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1]))],
		HoldForm[I],
		HoldForm[A[1, 3] A[3, 1] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) + A[1, 1] A[3, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])],
		HoldForm[A[1, 3] A[3, 1] ( 5^(1 / 4) B[2, 2] + Sqrt[2] B[4, 1]) - A[1, 1] A[3, 3] ( 5^(1 / 4) B[2, 2] - Sqrt[2] B[4, 1])]
	},
	9 -> {
		HoldForm[-(1 / 2) (Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2])],
		HoldForm[-(1 / 2) (Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2])],
		HoldForm[1],
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
		HoldForm[(1 / 4 + I / 4) ( A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) + I A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[(1 / 4 - I / 4)(A[1, 3 / 4] (I Sqrt[2] B[2, 1] - 5^(1 / 4) B[4, 2]) - I A[3, 3 / 4] (I Sqrt[2] B[2, 1] + 5^(1 / 4) B[4, 2]))],
		HoldForm[1 / I],
		HoldForm[A[1, 3] A[3, 1] + A[1, 1] A[3, 3]],
		HoldForm[A[1, 3] A[3, 1] - A[1, 1] A[3, 3]]
	},
	12 -> {
		HoldForm[-((I Sqrt[2]) / 4) (5^(1 / 4) B[2, 2] - I Sqrt[6] B[4, 1])],
		HoldForm[-((I Sqrt[6]) / 4) (5^(1 / 4) B[2, 2] + I Sqrt[2 / 3] B[4, 1])],
		HoldForm[1],
		HoldForm[  5^(1 / 4) B[2, 2] - I Sqrt[6] B[4, 1]],
		HoldForm[ Sqrt[3] 5^(1 / 4) B[2, 2] + I Sqrt[2] B[4, 1]]
	}
|>
