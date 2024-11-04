function [val, arr] = regula_falsi (a,b,err,f)
	fa = f(a);
	fb = f(b);
	x = (fb *a-fa*b)/(fb-fa);
	fx = f(x);
	arr=[a,b,x,fx,fa,fb]
	calculated_err = abs(fx);
	while (calculated_err > err)
		if (fa*fx < 0)
			b = x;
			fb = f(b);
		else
			a = x;
			fa = f(a);
		endif
		x = (fb*a-fa*b)/(fb-fa);
		fx = f(x);
		calculated_err = abs(fx);
		arr = vertcat(arr,[a b x fx fa fb]);
	endwhile
	val = x
endfunction
