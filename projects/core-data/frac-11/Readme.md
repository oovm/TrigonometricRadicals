
Consider

$$
\sum_{k=1}^5\left(10\cos\frac{2 k π i}{11}+1\right)=0
$$

Equivalent to solving the equation:

$$x^5-10⋅11x^3-5⋅11x^2+210⋅11x+89⋅11=0$$

Its 5 roots $x_i$ can be obtained by combining the 4 roots $ζ_i$ of the resolvent.

$$
x^4+89⋅11x^3+351⋅11^3x^2+89⋅11^6⋅x+11^{10}=0
$$

Let 

$$
\begin{aligned}
ω&= e^{2πi/5}\\
ω^n&=ω^{n\bmod 5}
\end{aligned}
$$

The roots can be obtained by:

$$
\begin{bmatrix}
ζ_1\\ζ_2\\ζ_3\\ζ_4\\
\end{bmatrix}=
11\begin{bmatrix}
1 & ω & ω^4 & ω^2 \\
1 & ω^2 & ω^3 & ω^4 \\
1 & ω^3 & ω^2 & ω \\
1 & ω^4 & ω & ω^3 \\
\end{bmatrix}⋅
\begin{bmatrix}
-6\\35\\10\\20\\
\end{bmatrix}
$$

So the solution of the original quintic equation are:

$$
\begin{bmatrix}
x_1\\x_2\\x_3\\x_4\\x_5\\
\end{bmatrix}=
\begin{bmatrix}
ω^4 & ω   & ω^4 & ω   \\
ω   & 1   & 1   & ω^4 \\
1   & ω^3 & ω^2 & 1   \\
ω^3 & ω^4 & ω   & ω^2 \\
ω^2 & ω^2 & ω^3 & ω^3 \\
\end{bmatrix}⋅
\begin{bmatrix}
\sqrt[5]{ζ_1} \\
\sqrt[5]{ζ_2} \\
\sqrt[5]{ζ_3} \\
\sqrt[5]{ζ_4} \\
\end{bmatrix}
$$

--- 

So 

$$
\begin{aligned}
\cos\left(\frac{2kπ}{11}\right) = \frac{1}{10}\left(x_k-1\right)
\end{aligned}
$$

where

$$
\begin{aligned}
ω^0 &= 1 \\
ω^1 &=+\frac{1}{4} \left(\sqrt{5}-1+i\sqrt{10+2\sqrt{5}}\right) \\
ω^2 &=-\frac{1}{4} \left(\sqrt{5}+1-i\sqrt{10-2\sqrt{5}}\right) \\
ω^3 &=-\frac{1}{4} \left(\sqrt{5}+1+i\sqrt{10-2\sqrt{5}}\right) \\
ω^4 &=+\frac{1}{4} \left(\sqrt{5}-1-i\sqrt{10+2\sqrt{5}}\right) \\
\end{aligned}
$$

$$
\begin{aligned}
ζ_1&=-\frac{11}{4} \left(89-25 \sqrt{5}-5 i \sqrt{410+178 \sqrt{5}}\right) \\
ζ_2&=-\frac{11}{4} \left(89+25 \sqrt{5}+5 i \sqrt{410-178 \sqrt{5}}\right) \\
ζ_3&=-\frac{11}{4} \left(89+25 \sqrt{5}-5 i \sqrt{410-178 \sqrt{5}}\right) \\
ζ_4&=-\frac{11}{4} \left(89-25 \sqrt{5}+5 i \sqrt{410+178 \sqrt{5}}\right) \\
\end{aligned}
$$