function NR

 n=1;

     x0=input('Ingrese el punto: ');
     f=input('Ingrese la funcion: ','s');
     
     fprintf('x_0 = %0.15f \n', x0);
     
while (n<=10)
     x=sym('x');
     x0;
     f;
     df=diff(f,x);
     
     x=x0; fx0=eval(f);
     x=x0; dfx0=eval(df);
    
     xi = x0 - ((fx0)/(dfx0));
     x0=xi;
     
    
     fprintf('x_%0.f = %0.15f \n', n, xi);

     
     %disp(xi);
     n=n+1;
 endwhile
 printf('\n');
 fprintf('La raiz aproximada es: %0.15f',x0);
endfunction
