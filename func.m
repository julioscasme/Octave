function num = convertir_decbin(n)
  d = [];
  printf("El número %0.f\t",n)
  while(n >= 1)
    d = [d, rem(n,2)];
    n = fix(n/2);
  endwhile
  S = flip(d);
  printf("corresponde al binario\t")
  for k=1:length(S)
    fprintf("%0.f", S(k))
  endfor
 endfunction
