function c = newtonRaphson2(f,c0,epsilon)
  syms x
  df = matlabFunction(diff(f,x));
  error = 2*epsilon;
  itermax = 30;
  cold = c0;
  iter = 0;
  flag = 0;
  while error > epsilon
    iter = iter + 1;
    cnew = cold - f(cold)/df(cold);
    error = abs(cnew-cold)/max(1,abs(cold));
    if iter > itermax
      disp('Iteration limit exceeded.');
      flag = 1;
      break
    end
    cold = cnew;
  end
  if flag == 0
    c = cnew;
  else
    c = c0;
  end
end
