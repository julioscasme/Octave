function bisecc
  fprintf('\n');
  funn=input('ingrese funcion: ','s');
  a=input('ingrese ext. izq: ');
  b=input('ingrese ext. der: ');
  ezplot(funn,[a,b]);
  grid on;
  fprintf('\n');
  fprintf('iter          a          b          xn          error \n');
  e=abs(b-a)/2;
  i=1;
  r=1;
  while e>=0.000001
    va=r;
    r=a+(b-a)/2;
    x=a;   fa=eval(funn);
    x=b;   fb=eval(funn);
    x=r;   fr=eval(funn);
    fprintf('%3.0f     %5.9f     %5.9f     %5.9f', i , a, b, r);
    if sign(fa)*sign(fr)<=0
      b=r ; e= abs(r-va);
      fprintf(' %5.9f \n', e)
    else
      a=r;   e= abs(r-va);
      fprintf(' %5.9f \n', e)
    endif
    i=i+1;
  endwhile
  fprintf('\n');
  fprintf('la aproximacion es: %5.9f\n',r);
endfunction
