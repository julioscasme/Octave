function bin=Num(b)
  b=input("Ingrese el numero: ");
%Signo%%%%%%%%%%%%%%%%%%%%%%%
  if b>0
    printf("+");
  else
    printf("-");
    b=b*(-1);
  endif

  if b<1
    r=[];
    cont=10;
    i=1;
    while(i<=cont)
      mult=b*2;%0.612*2=1.244
      ent=floor(mult);%1
      r=[r,ent];%[1]
      y=mult-ent;%1.244-1=0.244
      b=y;%b=0.244
      i=i+1;
    endwhile
    R=r;
    for i=1:length(R)
      fprintf('%0.f',R(i));
    endfor
    printf("\n");

  else
    %123.456
    int=floor(b);%123
    binary= dec2bin(int);
    printf(binary);
    printf(".");

    x=b-int;%0.456
    r=[];
    cont=10;
    i=1;
    while(i<=cont)
      mult=x*2;
      ent=floor(mult);
      r=[r,ent];
      y=mult-ent;
      x=y;
      i=i+1;
    endwhile
    R=r;
    for i=1:length(R)
      fprintf('%0.f',R(i));
    endfor
    printf("\n");

    endif
%%%%%%%%%%%%%%%%%%%%% Fomra Científica %%%%%%%%%%%%%%%%%%%%%%
   %e=length(binary)-1;
   %eb=dec2bin(e);
   %printf("1 | ");
   %printf(eb);


 %if b>0
   %printf(" | 0 | ");
 %else
   %printf(" | 1 | ");
 %endif

  %printf(binary);
  %for i=1:length(R)
     % fprintf('%0.f',R(i));
  %endfor
  % printf("\n");
endfunction

