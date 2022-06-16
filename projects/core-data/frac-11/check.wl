(* ::Package:: *)

p = 11;n = 5;
w = Exp[2Pi I / n];
Mod[Table[i j, {i, 0, n - 1}, {j, 1, n - 1}],5]


c = p{-41,-25,-35,-15};
c = p{26,20,15,-10};
c = p{-6, 20, 10, 35};
inner = {
    {0, 1, 2, 3},
    {0, 2, 4, 1},
    {0, 3, 1, 4},
    {0, 4, 3, 2}
};
outer = {
    {4, 4, 1, 1},
    {0, 1, 4, 0},
    {2, 0, 0, 3},
    {1, 3, 2, 4},
    {3, 2, 3, 2}
};


c = {248, 314, 699, 424, 534};
inner = {
{0,1,2,3,4},
{0,2,4,1,3},
{0,3,1,4,2},
{0,4,3,2,1}
};
outer = {
{1, 1, 4, 4},
 {0, 4, 1, 0},
 {3, 0, 0, 2},
 {4, 2, 3, 1},
 {2, 3, 2, 3}
 };


Dot[w^inner, c]//RootReduce


M = Dot[w^inner, c];
Dot[w^outer, M^(1 / n)] // N // Chop
Table[(p - 1)Cos[2k Pi / p] + 1, {k, 1, n}] // N


guess[b_, target_] := Catch@Table[
    If[
        Chop[b^(1 / n) . Exp[2.0 var Pi I / n] - target] === 0,
        Throw[var],
        Nothing
    ],
    {var, Tuples[Range[0, n - 1], Length@b]}
]


{
    guess[M, 10 Cos[2Pi / 11] + 1],
    guess[M, 10 Cos[4Pi / 11] + 1],
    guess[M, 10 Cos[6Pi / 11] + 1],
    guess[M, 10 Cos[8Pi / 11] + 1],
    guess[M, 10 Cos[10Pi / 11] + 1]
}
