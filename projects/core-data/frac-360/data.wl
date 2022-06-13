(* ::Package:: *)

data = <|
    1 -> {
        HoldForm[(I - 1) / (4Sqrt[2])],
        HoldForm[A[1, 1] A[3, 3] (I B[2, 1] - 5^(1 / 4) B[4, 2]) - I A[1, 3] A[3, 1] (I B[2, 1] + 5^(1 / 4) B[4, 2])],
        HoldForm[(I + 1) / (4Sqrt[2])],
        HoldForm[A[1, 1] A[3, 3] (I B[2, 1] - 5^(1 / 4) B[4, 2]) + I A[1, 3] A[3, 1] (I B[2, 1] + 5^(1 / 4) B[4, 2])]
    },
    2 -> {
        HoldForm[4I^2],
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
        HoldForm[I^1 / 2],
        HoldForm[A[1, 3] (B[2, 1] + I 5^(1 / 4) B[4, 2]) - A[3, 3] (B[2, 1] - I 5^(1 / 4) B[4, 2])],
        HoldForm[I^2 / 2],
        HoldForm[A[1, 3] (B[2, 1] + I 5^(1 / 4) B[4, 2]) + A[3, 3] (B[2, 1] - I 5^(1 / 4) B[4, 2])]
    },
    5 -> {
        HoldForm[(1 + I) / (2Sqrt[2])],
        HoldForm[A[1, 3] - I A[3, 3]],
        HoldForm[(1 - I) / (2Sqrt[2])],
        HoldForm[A[1, 3] + I A[3, 3]]
    },
    6 -> {
        HoldForm[1 / 4],
        HoldForm[Sqrt[3] 5^(1 / 4) B[4, 2] + B[2, 1]],
        HoldForm[1 / 4],
        HoldForm[5^(1 / 4) B[4, 2] - Sqrt[3] B[2, 1]]
    },
    7 -> {
        HoldForm[(I + 1) / (4Sqrt[2])],
        HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1]) + I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) ],
        HoldForm[(I - 1) / (4Sqrt[2])],
        HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1]) - I A[3, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1])]
    },
    8 -> {
        HoldForm[I / 4  ],
        HoldForm[A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - B[4, 1]) + A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + B[4, 1])],
        HoldForm[I^2 / 4],
        HoldForm[A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] - B[4, 1]) - A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    9 -> {
        HoldForm[-1 / (2Sqrt[2])],
        HoldForm[B[2, 1] + 5^(1 / 4) B[4, 2] ],
        HoldForm[-1 / (2Sqrt[2])],
        HoldForm[B[2, 1] - 5^(1 / 4) B[4, 2]]
    },
    10 -> {
        HoldForm[1 / 2],
        HoldForm[A[1, 3] A[3, 1] + A[1, 1] A[3, 3]],
        HoldForm[I / 2],
        HoldForm[A[1, 3] A[3, 1] - A[1, 1] A[3, 3]]
    },
    11 -> {
        HoldForm[(I - 1) / (4Sqrt[2])  ],
        HoldForm[(A[1, 3 / 4] + I A[3, 3 / 4]) B[2, 1] + 5^(1 / 4) (I A[1, 3 / 4] + A[3, 3 / 4]) B[4, 2]],
        HoldForm[(I + 1) / (4Sqrt[2])],
        HoldForm[(A[1, 3 / 4] - I A[3, 3 / 4]) B[2, 1] + 5^(1 / 4) (I A[1, 3 / 4] - A[3, 3 / 4]) B[4, 2]]
    },
    12 -> {
        HoldForm[-I / 4],
        HoldForm[5^(1 / 4) B[2, 2] - I Sqrt[3] B[4, 1]],
        HoldForm[-I / 4],
        HoldForm[Sqrt[3] 5^(1 / 4) B[2, 2] + I B[4, 1]]
    },
    13 -> {
        HoldForm[(1 - I) / (4Sqrt[2]) ],
        HoldForm[A[1, 3] (B[4, 1] - 5^(1 / 4) B[2, 2]) + I A[3, 3] (B[4, 1] + 5^(1 / 4) B[2, 2])],
        HoldForm[(1 + I) / (4Sqrt[2])],
        HoldForm[ A[1, 3] (B[4, 1] - 5^(1 / 4) B[2, 2]) - I A[3, 3] (B[4, 1] + 5^(1 / 4) B[2, 2])]
    },
    14 -> {},
    15 -> {
        HoldForm[+ 1 / Sqrt[2]],
        HoldForm[A[4, 1]],
        HoldForm[-1 / Sqrt[2]],
        HoldForm[A[2, 1]]
    },
    16 -> {},
    17 -> {
        HoldForm[(I - 1) / (4Sqrt[2])  ],
        HoldForm[A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + B[4, 1]) - I A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - B[4, 1])],
        HoldForm[-((I + 1) / (4Sqrt[2]))],
        HoldForm[A[1, 1] A[3, 3] (5^(1 / 4) B[2, 2] + B[4, 1]) + I A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] - B[4, 1])]
    },
    18 -> {
        HoldForm[1 / 2 ],
        HoldForm[B[4, 1]],
        HoldForm[-I / 2],
        HoldForm[5^(1 / 4) B[2, 2]]
    },
    19 -> {
        HoldForm[(1 + I) / (4Sqrt[2]) ],
        HoldForm[A[1, 1] A[3, 3] (I B[2, 1] + 5^(1 / 4) B[4, 2]) + I A[1, 3] A[3, 1] (I B[2, 1] - 5^(1 / 4) B[4, 2])],
        HoldForm[ (1 - I) / (4Sqrt[2])],
        HoldForm[A[1, 1] A[3, 3] (I B[2, 1] + 5^(1 / 4) B[4, 2]) - I A[1, 3] A[3, 1] (I B[2, 1] - 5^(1 / 4) B[4, 2])]
    },
    20 -> {
        HoldForm[-I / 2 ],
        HoldForm[A[1, 3 / 4] - A[3, 3 / 4]],
        HoldForm[-1 / 2 ],
        HoldForm[A[1, 3 / 4] + A[3, 3 / 4]]
    },
    21 -> {
        HoldForm[1 / (2Sqrt[2]) ],
        HoldForm[A[4, 1] B[2, 1] - 5^(1 / 4) A[2, 1] B[4, 2]],
        HoldForm[1 / (2Sqrt[2]) ],
        HoldForm[A[2, 1] B[2, 1] + 5^(1 / 4) A[4, 1] B[4, 2]]
    },
    22 -> {},
    23 -> {
        HoldForm[-((I - 1) / (4Sqrt[2]))  ],
        HoldForm[A[1, 3] (5^(1 / 4) B[2, 2] + B[4, 1]) - I A[3, 3] (5^(1 / 4) B[2, 2] - B[4, 1])],
        HoldForm[-((I + 1) / (4Sqrt[2]))],
        HoldForm[I A[3, 3] (5^(1 / 4) B[2, 2] - B[4, 1]) + A[1, 3] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    24 -> {
        HoldForm[-1 / 4],
        HoldForm[Sqrt[3] B[2, 1] + 5^(1 / 4) B[4, 2]],
        HoldForm[-1 / 4],
        HoldForm[B[2, 1] - Sqrt[3] 5^(1 / 4) B[4, 2]]
    },
    25 -> {
        HoldForm[-((1 - I) / (2Sqrt[2])) ],
        HoldForm[A[1, 3 / 4] + I A[3, 3 / 4]],
        HoldForm[- ((1 + I) / (2Sqrt[2]))],
        HoldForm[A[1, 3 / 4] - I A[3, 3 / 4]]
    },
    26 -> {},
    27 -> {
        HoldForm[-(I / (2 Sqrt[2])) ],
        HoldForm[5^(1 / 4) B[2, 2] - I B[4, 1]],
        HoldForm[-(I / (2 Sqrt[2]))],
        HoldForm[5^(1 / 4) B[2, 2] + I B[4, 1]]
    },
    28 -> {},
    29 -> {
        HoldForm[(I + 1) / (4Sqrt[2])  ],
        HoldForm[5^(1 / 4) (-I A[1, 3 / 4] + A[3, 3 / 4]) B[4, 2] + (A[1, 3 / 4] - I A[3, 3 / 4]) B[2, 1]],
        HoldForm[(I - 1) / (4Sqrt[2])],
        HoldForm[5^(1 / 4) (I A[1, 3 / 4] + A[3, 3 / 4]) B[4, 2] - ((A[1, 3 / 4] + I A[3, 3 / 4]) B[2, 1])]
    },
    30 -> {
        HoldForm[1 / 2],
        HoldForm[1],
        HoldForm[Sqrt[3] / 2],
        HoldForm[1]
    },
    31 -> {
        HoldForm[(1 - I) / (4Sqrt[2])],
        HoldForm[ A[1, 3] (  5^(1 / 4) B[4, 2] + I B[2, 1]) + I A[3, 3] (5^(1 / 4) B[4, 2] - I B[2, 1])],
        HoldForm[ (1 + I) / (4Sqrt[2])],
        HoldForm[A[1, 3] (5^(1 / 4) B[4, 2] + I B[2, 1]) - I A[3, 3] ( 5^(1 / 4) B[4, 2] - I B[2, 1])]
    },
    32 -> {
        HoldForm[-(I / 4) ],
        HoldForm[A[1, 3] (5^(1 / 4) B[2, 2] - B[4, 1]) + A[3, 3] (5^(1 / 4) B[2, 2] + B[4, 1])],
        HoldForm[- (1 / 4)],
        HoldForm[A[1, 3] (5^(1 / 4) B[2, 2] - B[4, 1]) - A[3, 3] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    33 -> {
        HoldForm[I^3 / (2 Sqrt[2]) ],
        HoldForm[5^(1 / 4) A[4, 1] B[2, 2] - I A[2, 1] B[4, 1]],
        HoldForm[ I / (2 Sqrt[2])],
        HoldForm[5^(1 / 4) A[2, 1] B[2, 2] + I A[4, 1] B[4, 1]]
    },
    34 -> {},
    35 -> {
        HoldForm[(I - 1) / (2 Sqrt[2]) ],
        HoldForm[A[1, 3] A[3, 1] + I A[1, 1] A[3, 3]],
        HoldForm[(I + 1) / (2 Sqrt[2])],
        HoldForm[A[1, 3] A[3, 1] - I A[1, 1] A[3, 3]]
    },
    36 -> {
        HoldForm[5^(1 / 4) / 2 ],
        HoldForm[B[4, 2]],
        HoldForm[-1 / 2],
        HoldForm[B[2, 1]]
    },
    37 -> {
        HoldForm[(1 + I) / (4Sqrt[2])  ],
        HoldForm[A[1, 1] A[3, 3] (B[4, 1] - 5^(1 / 4) B[2, 2]) - I  A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + B[4, 1])],
        HoldForm[ (1 - I) / (4Sqrt[2])],
        HoldForm[A[1, 1] A[3, 3] (B[4, 1] - 5^(1 / 4) B[2, 2]) + I A[1, 3] A[3, 1] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    38 -> {
        HoldForm[1 / 4 ],
        HoldForm[A[3, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) - A[1, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])],
        HoldForm[ I / 4],
        HoldForm[A[3, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) + A[1, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    39 -> {
        HoldForm[- (1 / (2 Sqrt[2])) ],
        HoldForm[5^(1 / 4) A[4, 1] B[4, 2] - A[2, 1] B[2, 1]],
        HoldForm[ -(1 / (2 Sqrt[2]))],
        HoldForm[5^(1 / 4) A[2, 1] B[4, 2] + A[4, 1] B[2, 1]]
    },
    40 -> {
        HoldForm[ I / 2 ],
        HoldForm[A[3, 3] - A[1, 3]],
        HoldForm[ 1 / 2],
        HoldForm[A[3, 3] + A[1, 3]]
    },
    41 -> {
        HoldForm[ (I - 1) / (4Sqrt[2]) ],
        HoldForm[ A[1, 3] ( I B[2, 1] - 5^(1 / 4) B[4, 2]) - I A[3, 3] (I B[2, 1] + 5^(1 / 4) B[4, 2])],
        HoldForm[ (I + 1) / (4Sqrt[2])],
        HoldForm[ A[1, 3] (I B[2, 1] - 5^(1 / 4) B[4, 2]) + I A[3, 3] (I B[2, 1] + 5^(1 / 4) B[4, 2])]
    },
    42 -> {
        HoldForm[-I / 4],
        HoldForm[Sqrt[3] 5^(1 / 4) B[2, 2] - I B[4, 1]],
        HoldForm[-I / 4],
        HoldForm[5^(1 / 4) B[2, 2] + I Sqrt[3] B[4, 1]]
    },
    43 -> {
        HoldForm[(I + 1) / (4Sqrt[2])  ],
        HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) + I A[3, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])],
        HoldForm[ (I - 1) / (4Sqrt[2])],
        HoldForm[A[1, 3 / 4] (5^(1 / 4) B[2, 2] - B[4, 1]) - I A[3, 3 / 4] (5^(1 / 4) B[2, 2] + B[4, 1])]
    },
    44 -> {
        HoldForm[ I^2 / 4 ],
        HoldForm[I (A[1, 3] A[3, 1] - A[1, 1] A[3, 3]) B[2, 1] + 5^(1 / 4) (A[1, 3] A[3, 1] + A[1, 1] A[3, 3]) B[4, 2]],
        HoldForm[ I / 4],
        HoldForm[I (A[1, 3] A[3, 1] + A[1, 1] A[3, 3]) B[2, 1] + 5^(1 / 4) (A[1, 3] A[3, 1] - A[1, 1] A[3, 3]) B[4, 2]]
    },
    45 -> {
        HoldForm[1 / Sqrt[2]],
        HoldForm[1],
        HoldForm[1 / Sqrt[2]],
        HoldForm[1]
    }
|>