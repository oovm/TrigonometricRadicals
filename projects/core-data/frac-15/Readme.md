设 $11$ 次单位根:

$$
\begin{aligned}
ω&= e^{2πi/11}\\
ω^n&=ω^{n\bmod 11}
\end{aligned}
$$

由欧拉公式得:

$$
\begin{aligned}
\cos\frac{2π}{11}&=\frac{1}{2}\left(ω^1+ω^{10}\right)\\
\cos\frac{4π}{11}&=\frac{1}{2}\left(ω^2+ω^9\right)\\
\cos\frac{6π}{11}&=\frac{1}{2}\left(ω^3+ω^8\right)\\
\cos\frac{8π}{11}&=\frac{1}{2}\left(ω^4+ω^7\right)\\
\cos\frac{10π}{11}&=\frac{1}{2}\left(ω^5+ω^6\right)\\
\end{aligned}
$$

由单位根的性质有:

$$
\begin{aligned}
σ_{0}
&=ω^1+ω^2+ω^3+ω^4+ω^5+ω^6+ω^7+ω^8+ω^9+ω^{10}=-1
\end{aligned}
$$

不妨设:

$$
\begin{aligned}
σ_{1}&=ω^1+ω^{10}\\
σ_{2}&=ω^2+ω^9\\
σ_{3}&=ω^3+ω^8\\
σ_{4}&=ω^4+ω^7\\
σ_{5}&=ω^5+ω^6\\
\end{aligned}
$$

注意到:

$$
\begin{aligned}
σ_i &=σ_0 \\
σ_i σ_j&=4σ_0 \\
σ_i σ_j σ_k&=10+7σ_0 \\
σ_i σ_j σ_k σ_l&=10+7σ_0 \\
σ_1 σ_2 σ_3 σ_4 σ_5&=2+3σ_0 \\
\end{aligned}
$$

由韦达定理得 $(σ_{1},σ_{2},σ_{3},σ_{4},σ_{5})$ 是 $x^5+x^4-4 x^3-3 x^2+3 x+1$ 的五个根.

解得:

$$
\begin{bmatrix}
σ_1\\σ_2\\σ_3\\σ_4\\σ_5\\
\end{bmatrix}=
\begin{bmatrix}
ε & ε^4 & ε & ε^4 \\
1 & 1 & ε^4 & ε \\
ε^3 & ε^2 & 1 & 1 \\
ε^4 & ε & ε^2 & ε^3 \\
ε^2 & ε^3 & ε^3 & ε^2 \\
\end{bmatrix}⋅
\begin{bmatrix}
\sqrt[5]{ζ_1} \\
\sqrt[5]{ζ_2} \\
\sqrt[5]{ζ_3} \\
\sqrt[5]{ζ_4} \\
\end{bmatrix}-\frac{1}{5}
$$

其中

$$
\begin{aligned}
ε^0 &= 1 \\
ε^1 &=+\frac{1}{4} \left(\sqrt{5}-1+i\sqrt{10+2\sqrt{5}}\right) \\
ε^2 &=-\frac{1}{4} \left(\sqrt{5}+1-i\sqrt{10-2\sqrt{5}}\right) \\
ε^3 &=-\frac{1}{4} \left(\sqrt{5}+1+i\sqrt{10-2\sqrt{5}}\right) \\
ε^4 &=+\frac{1}{4} \left(\sqrt{5}-1-i\sqrt{10+2\sqrt{5}}\right) \\
\end{aligned}
$$


最终有:


$$
\begin{aligned}
\cos\frac{1π}{11}&=-\frac{1}{2}σ_5\\
\cos\frac{2π}{11}&=+\frac{1}{2}σ_1\\
\cos\frac{3π}{11}&=-\frac{1}{2}σ_4\\
\cos\frac{4π}{11}&=+\frac{1}{2}σ_2\\
\cos\frac{5π}{11}&=-\frac{1}{2}σ_3\\
\cos\frac{6π}{11}&=+\frac{1}{2}σ_3\\
\cos\frac{7π}{11}&=-\frac{1}{2}σ_2\\
\cos\frac{8π}{11}&=+\frac{1}{2}σ_4\\
\cos\frac{9π}{11}&=-\frac{1}{2}σ_1\\
\cos\frac{10π}{11}&=+\frac{1}{2}σ_5\\
\end{aligned}
$$