function regufa
	fprintf('\n');
	funn=input('ingrese la funciónf(x)=','s');
 	a=input('ingrese extremo izq:');
 	b=input('ingrese extremo derec:');
 	ezplot(funn,[a,b]);
 	grid on;
 	fprintf('\n');
 	fprintf('iter   a	  b	  xn       error\n');
 	e=abs(b-a)/2;
 	i=1;
 	r=1;
 	while e>=0.0000001
	va=r;
	x=a;	fa=eval(funn);
	x=b;	fb=eval(funn);
	r=(a*fb-b*fa)/(fb-fa);
    	x=r;	fr=eval(funn);
	fprintf('%3.0f		%5.9f		%5.9f',i,a,b,r);
	if sign(fa)*sign(fr)<=0
	b=r;	e=abs(r-va);
      	fprintf('	%5.9f\n',e)
    	else
      	a=r;	e=abs(r-va);
      	fprintf('	%5.9f \n',e)
    	endif
    	i=i+1;
 end
 fprintf('\n');
 fprintf("La aproximación buscada es:	%5.9f\n",r);
endfunction
