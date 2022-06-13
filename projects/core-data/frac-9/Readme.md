设 7 次单位根:

$$
\begin{aligned}
ω&= e^{2πi/7}\\
ω^n&=ω^{n\bmod 7}
\end{aligned}
$$

逆用欧拉公式得到:

$$
\begin{aligned}
\cos\frac{π}{7}=-\frac{ω^3}{2}-\frac{ω^4}{2}\\
\cos\frac{2π}{7}=+\frac{ω^1}{2}+\frac{ω^6}{2}\\
\cos\frac{3π}{7}=-\frac{ω^2}{2}-\frac{ω^5}{2}\\
\cos\frac{4π}{7}=+\frac{ω^2}{2}+\frac{ω^5}{2}\\
\cos\frac{5π}{7}=-\frac{ω^1}{2}-\frac{ω^6}{2}\\
\cos\frac{6π}{7}=+\frac{ω^3}{2}+\frac{ω^4}{2}\\
\end{aligned}
$$

---

由单位根的性质有:

$$
\begin{aligned}
σ_{0}
&=ω^6+ω^5+ω^4+ω^3+ω^2+ω+1
=0\\
\end{aligned}
$$

不妨设:

$$
\begin{aligned}
σ_{1}&=ω^1+ω^6\\
σ_{2}&=ω^2+ω^5\\
σ_{3}&=ω^3+ω^4\\
\end{aligned}
$$

注意到:

$$
\begin{aligned}
σ_{1}+σ_{2}+σ_{3}
&=(ω^1+ω^6)+(ω^2+ω^5)+(ω^3+ω^4)\\
&=σ_{0}-1\\
σ_{1}σ_{2}+σ_{1}σ_{3}+σ_{2}σ_{3}
&=(ω^6+ω ) (ω^5+ω^2)+(ω^4+ω^3) (ω^6+ω )+(ω^4+ω^3) (ω^5+ω^2)\\
&=ω^{11}+ω^{10}+2 ω^9+2 ω^8+2 ω^6+2 ω^5+ω^4+ω^3\\
&=2 ω^6+2 ω^5+2 ω^4+2 ω^3+2 ω^2+2 ω\\
&=2σ_{0}-2\\
σ_{1}σ_{2}σ_{3}
&=(ω^4+ω^3) (ω^5+ω^2) (ω^6+ω)\\
&=ω^{15}+ω^{14}+ω^{12}+ω^{11}+ω^{10}+ω^9+ω^7+ω^6\\
&=ω^6+ω^5+ω^4+ω^3+ω^2+ω+2\\
&=σ_{0}+1\\
\end{aligned}
$$

三个方程解三个未知数

或者逆用韦达定理得 $(σ_{1},σ_{2},σ_{3})$ 是 $x^3+x^2-2 x-1$ 的三个根.

最终可以解得:

$$
\begin{aligned}
σ_{1}&=-\frac{1}{3}+\frac{7}{3 α}+\frac{α}{3} \\
σ_{2}&=-\frac{1}{3}-\frac{7}{3 α}-\frac{α}{3}+\frac{7}{3 β}+\frac{β}{3} \\
σ_{3}&=-\frac{1}{3}-\frac{7}{3 β}-\frac{β}{3}
\end{aligned}
$$

其中

$$
\begin{aligned}
α&=\sqrt[3]{\frac{7}{2} \left(3 i \sqrt{3}+1\right)}\\
β&=\sqrt[3]{\frac{7}{2} \left(3 i \sqrt{3}-1\right)}
\end{aligned}
$$

---

于是最终有:

$$
\begin{aligned}
\cos\frac{π}{7}&=+\frac{1}{6} \left(\sqrt[3]{\frac{7}{2} \left(-1+3 i \sqrt{3}\right)}+\sqrt[3]{\frac{7}{2} \left(-1-3 i \sqrt{3}\right)}+1\right)\\
\cos\frac{2π}{7}&=+\frac{1}{6} \left(\sqrt[3]{\frac{7}{2} \left(+1+3 i \sqrt{3}\right)}+\sqrt[3]{\frac{7}{2} \left(+1-3 i \sqrt{3}\right)}-1\right)\\
\cos\frac{3π}{7}&=-\frac{1}{6}\left((-1)^{1/3} \sqrt[3]{\frac{7}{2}\left(-1+3 i\sqrt{3}\right)}-(-1)^{2/3} \sqrt[3]{\frac{7}{2} \left(-1-3 i \sqrt{3}\right)}-1\right)\\
\cos\frac{4π}{7}&=-\frac{1}{6}\left((-1)^{1/3} \sqrt[3]{\frac{7}{2} \left(+1+3 i \sqrt{3}\right)}-(-1)^{2/3} \sqrt[3]{\frac{7}{2} \left(+1-3 i \sqrt{3}\right)}+1\right)\\
\cos\frac{5π}{7}&=-\frac{1}{6} \left(\sqrt[3]{\frac{7}{2} \left(+1+3 i \sqrt{3}\right)}+\sqrt[3]{\frac{7}{2} \left(+1-3 i \sqrt{3}\right)}-1\right)\\
\cos\frac{6π}{7}&=-\frac{1}{6} \left(\sqrt[3]{\frac{7}{2} \left(-1+3 i \sqrt{3}\right)}+\sqrt[3]{\frac{7}{2} \left(-1-3 i \sqrt{3}\right)}+1\right)\\
\end{aligned}
$$

其中

$$
\begin{aligned}
(-1)^{1/3}&=+\frac{1}{2}+\frac{\sqrt{3}}{2} i\\
(-1)^{2/3}&=-\frac{1}{2}+\frac{\sqrt{3}}{2} i\\
\end{aligned}
$$