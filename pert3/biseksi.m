function [val, arr] = biseksi(a,b,err,f)
	x = (a+b)/2;
	fa = f(a);
	fb = f(b);
	fx = f(x);
	arr=[ a,b,x,fa,fb,fx]
	while(abs(f(x))>err)
		fa = f(a);
		fb = f(b);
		if (fa*fb>0)
			return;
		endif
		fx = f(x);
		if (fx*fa<0)
			b=x;
		else
				a=x;
		endif
		x = (a+b)/2;
		arr = vertcat(arr,[ a b x fa fb fx]);
	endwhile
	val = x;
endfunction
