function mult=deci(d)
  r=[];
  cont=10;
  i=1;
  while(i<=cont)
  mult=d*2;
  ent=fix(mult);
  r=[r,ent];
  y=mult-ent;
  d=y;
  i=i+1;
  endwhile
  R=flip(r);
  for i=1:length(R)
    fprintf('%0.f',R(i));
  endfor
printf("\n")
endfunction
