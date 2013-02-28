function [min] = method( f,a,b,delta, eps)

while((b-a)/2>eps)
	x1 = (a+b-delta)/2;
	x2 = (a+b + delta)/2;
	z = feval(f,x1);
	n = feval (f,x2);
	if(z < n)
		b = x2;
		
	end
	if(z > n)
			a=x1;
	end
end
min = (a+b)/2;