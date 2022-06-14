(* ::Package:: *)

p = 29;n = 7;
w = Exp[(n + 1)Pi I / n];
c = {-1564, -1276 , -1598 , 2182, 1153, -898, 2014};
inner = Table[i j, {i, 1, n - 1}, {j, 0, n - 1}];
Mod[inner, n]
Mod[n Log[w^inner] / (2Pi I), n]


w = Exp[2Pi I / n];
inner = {
    {0, 4, 1, 5, 2, 6, 3},
    {0, 1, 2, 3, 4, 5, 6},
    {0, 5, 3, 1, 6, 4, 2},
    {0, 2, 4, 6, 1, 3, 5},
    {0, 6, 5, 4, 3, 2, 1},
    {0, 3, 6, 2, 5, 1, 4}
};
M = p * (w^inner) . c;


guess[b_, target_] := Catch@Table[
    If[
        Chop@N[b^(1 / 7) . Exp[2 var2 Pi I / 7] - target] === 0,
        Throw[var],
        Nothing
    ],
    {var, Tuples[Range[0, 6], Length@b]}
]


guess[M, Tr@Exp[2Pi I {1, 12, 28, 17} / 29]]


{
    guess[M, 7Tr@Exp[2Pi I {1, 12, 17, 28} / 29] + 1],
    guess[M, 7Tr@Exp[2Pi I {2, 5, 24, 27} / 29] + 1],
    guess[M, 7Tr@Exp[2Pi I {3, 7, 22, 26} / 29] + 1],
    guess[M, 7Tr@Exp[2Pi I {4, 10, 19, 25} / 29] + 1],
    guess[M, 7Tr@Exp[2Pi I {6, 14, 15, 23} / 29] + 1],
    guess[M, 7Tr@Exp[2Pi I {8, 9, 20, 21} / 29] + 1]
}


MinimalPolynomial[Tr@Exp[2Pi I {1, 12, 28, 17} / 29], x]
MinimalPolynomial[7Tr@Exp[2Pi I {1, 12, 28, 17} / 29] + 1, x] / 29 // Expand


M / 29 // RootReduce
MinimalPolynomial[First@%, x]



