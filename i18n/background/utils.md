### 背景知识

Mathematica 这样的软件会倾向于使用重根式而不是共轭根式, 导致对称性直接消失

要写出漂亮的根号表示, 必须考虑伽罗瓦扩张

注意到 

$$360=2^3\times 3^2\times5$$

考虑扩张

$$
\begin{aligned}
K
&=Q(\omega_3,\omega_2,\omega_1)(\cos\frac{2\pi}{2},\cos\frac{2\pi}{3},\cos\frac{2\pi}{5})\\
&=Q\left(\frac{-1\pm i\sqrt{3}}{2},\frac{-1\pm\sqrt{5}}{4}\right)\\
\end{aligned}
$$

我们不妨设

$$
\begin{aligned}
\omega&=e^{2\pi i} =\frac{-1+i \sqrt{3}}{2}\\
\omega^2&=e^{4\pi i}=\frac{-1-i \sqrt{3}}{2}\\
\alpha_1&=\frac{-1+\sqrt{5}}{4}\\
\alpha_2&=\frac{-1-\sqrt{5}}{4}\\
\end{aligned}
$$

然后我们可以开始制表了
