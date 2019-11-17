# Racunarske vezbe za Metode Optimizacije

1. Prve vezbe:
	* Njutnova metoda
	<img src="https://latex.codecogs.com/gif.latex?f'(x0)&space;=&space;\frac{f(x_{0})}{(x_{1}&space;-&space;x_{0})}&space;\Rightarrow&space;x_{k&plus;1}&space;=&space;x_{k}&space;-&space;\frac{f(x_{k})}{f'(x_{k})}&space;=&space;x_{k}&space;-&space;\frac{f'(x_{k})}{f''(x_{k})}" title="f'(x0) = \frac{f(x_{0})}{(x_{1} - x_{0})} \Rightarrow x_{k+1} = x_{k} - \frac{f(x_{k})}{f'(x_{k})} = x_{k} - \frac{f'(x_{k})}{f''(x_{k})}" />
	
	* Metoda secice
	<img src="https://latex.codecogs.com/gif.latex?f''(x_{k})&space;\approx&space;\frac{f'(x_{k})&space;-&space;f'(x_{k-1})}{x_{k}&space;-&space;x_{k-1}}&space;\newline\newline&space;\Rightarrow&space;x_{k&plus;1}&space;=&space;x_{k}&space;-&space;f'(x_{k})\frac{x_{k}&space;-&space;x_{k&space;-&space;1}}{f'(x_{k})&space;-&space;f'(x_{k&space;-&space;1})}" title="f''(x_{k}) \approx \frac{f'(x_{k}) - f'(x_{k-1})}{x_{k} - x_{k-1}} \newline\newline \Rightarrow x_{k+1} = x_{k} - f'(x_{k})\frac{x_{k} - x_{k - 1}}{f'(x_{k}) - f'(x_{k - 1})}" />
	
	* Fibonacijeva metoda
	<img src="https://latex.codecogs.com/gif.latex?n:&space;Fib(n)&space;>&space;\frac{b&space;-&space;a}{\varepsilon&space;},&space;\varepsilon&space;-&space;greska\newline\newline&space;Left&space;:\newline&space;a_{k&plus;1}&space;=&space;a_{k}\newline&space;b_{k&plus;1}&space;=&space;x_{2_{k}}\newline&space;x_{1_{k&plus;1}}&space;=&space;b_{k&plus;1}&space;&plus;&space;a_{k&plus;1}&space;-&space;x_{2_{k&plus;1}}\newline&space;x_{2_{k&plus;1}}&space;=&space;x_{1_{k}}\newline\newline&space;Right:\newline&space;a_{k&plus;1}&space;=&space;x_{1_{k}}\newline&space;b_{k&plus;1}&space;=&space;b_{k}\newline&space;x_{1_{k&plus;1}}&space;=&space;x_{2_{k}}\newline&space;x_{2_{k&plus;1}}&space;=&space;b_{k&plus;1}&space;&plus;&space;a_{k&plus;1}&space;-&space;x_{1_{k&plus;1}}\newline\newline&space;Min:\newline&space;f(x_{1_k})&space;\leq&space;f(x_{2_k})&space;\Rightarrow&space;Left\newline&space;f(x_{1_k})&space;>&space;f(x_{2_k})&space;\Rightarrow&space;Right\newline\newline&space;Max:\newline&space;f(x_{1_k})&space;\geq&space;f(x_{2_k})&space;\Rightarrow&space;Left\newline&space;f(x_{1_k})&space;<&space;f(x_{2_k})&space;\Rightarrow&space;Right\newline\newline" title="n: Fib(n) > \frac{b - a}{\varepsilon }, \varepsilon - greska\newline\newline Left :\newline a_{k+1} = a_{k}\newline b_{k+1} = x_{2_{k}}\newline x_{1_{k+1}} = b_{k+1} + a_{k+1} - x_{2_{k+1}}\newline x_{2_{k+1}} = x_{1_{k}}\newline\newline Right:\newline a_{k+1} = x_{1_{k}}\newline b_{k+1} = b_{k}\newline x_{1_{k+1}} = x_{2_{k}}\newline x_{2_{k+1}} = b_{k+1} + a_{k+1} - x_{1_{k+1}}\newline\newline Min:\newline f(x_{1_k}) \leq f(x_{2_k}) \Rightarrow Left\newline f(x_{1_k}) > f(x_{2_k}) \Rightarrow Right\newline\newline Max:\newline f(x_{1_k}) \geq f(x_{2_k}) \Rightarrow Left\newline f(x_{1_k}) < f(x_{2_k}) \Rightarrow Right\newline\newline" />
	
	* Metoda zlatnog preseka
