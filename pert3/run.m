a = 1
b = 1.5
err = 0
f = @(x) x^3+2*x+10*x-20

[val, arr] = regula_falsi(a,b,err,f)
biseksi_arr = num2str(arr, '%0.10f ')
