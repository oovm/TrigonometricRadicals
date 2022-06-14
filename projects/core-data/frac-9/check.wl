(* ::Package:: *)

p = 9;n = 3;
w = Exp[2Pi I / 3];
c = {{1, 8}, {2, 7}, {4, 5}};
inner = {1, 2};
outer = {
    {0, 0},
    {2, 1},
    {1, 2}
};


Dot[w^outer, (w^inner)^(1 / n)] // N // Chop
Tr /@ (w^(c / n)) // N // Chop
Table[2Cos[2k Pi / p], {k, {1, 2, 4}}] // N


(w^2)^(1 / 3) /. w -> Exp[2Pi I / 3] // N
w^(8 / 3) /. w -> Exp[2Pi I / 3] // N


Tr /@ (w^({{1, 8}, {2, 7}, {3, 6}, {4, 5}} / n)) // N // Chop
Table[2Cos[2k Pi / p], {k, {1, 2, 3, 4}}] // N



