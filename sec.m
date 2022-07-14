function secante

x0=input('Ingrese el valor de x0 = ');
x1=input('Ingrese el valor de x1 = ');
f=input('Ingrese la funcion f(x) = ','s');

fprintf('x_0 = %0.15f \n', x0);
fprintf('x_1 = %0.15f \n', x1);

n=1;
c=[];
while(n<10)
    x0;
    x1;
    f;
    
    x=sym('x');
    x=x0; fx0=eval(f);
    x=x1; fx1=eval(f);
    
    xi=(((x0*fx1)-(x1*fx0))/((fx1)-(fx0)));
    
    c=[c, xi];%[x2, x3, x4, ... xn]
    
    if(n<=1) %x2
        x0=x1;
        x1=xi;
    else %x3
        v=c(n-1);
        x0=v;
        x1=xi;
    endif

fprintf('x_%0.f = %0.15f \n', n+1, xi);
    
    
    n=n+1;
endwhile

endfunction
