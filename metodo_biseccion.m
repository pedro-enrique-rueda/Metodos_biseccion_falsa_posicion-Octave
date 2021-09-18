function [bisc,er,x_r]= metodo_biseccion(x1,x2,m,g,t,v,error_minimo)
   
 xr_old = 0;
 i = 1;

 z = factor_c(x1,m,g,t,v)*factor_c(x2,m,g,t,v); %lo calculo una vez para la primer ejecución del while
 er = inf   ; %defino el error inicial como infinito
 while (z < 0 && er > error_minimo )%do
   %
  
   %if (z < 0) 
   xr = (x1 + x2) / 2;
   z_c = factor_c(x1,m,g,t,v)*factor_c(xr,m,g,t,v);
        
    if (z_c < 0)
      x2 = xr;  
      bisc = xr;
    elseif (z_c > 0)
      x1 = xr;
      bisc = xr;
    elseif (z == 0)
      bisc = xr;
    end
    z = factor_c(x1,m,g,t,v)*factor_c(x2,m,g,t,v);

   
   % estimacion error relativo porcentual
   er = abs((xr - xr_old) / xr) * 100;
   xr_old = xr;
   
   % el siguiente codigo es para crear una tabla de resultados
   iteracion(i) = i;
   x_1(i) = x1;
   x_2(i) = x2;
   x_r(i) = xr;
   er_ab(i) = er; 
   
   i = i+1;
   
end%until (z == 0 | er < error_minimo )
  
  % Las siguientes lineas me imprimen en pantalla una tabla con los resultados
  
  %%% instale lo siguiente en la linea de comando:
  %%% npk install https://github.com/apjanke/octave-tablicious/releases/download/v0.3.6/tablicious-0.3.6.tar.gz
  pkg load tablicious %esto si es octave
  iteraciones = iteracion';
  x1 = x_1';
  x2 = x_2';
  xr = x_r';
  error = er_ab';
  
  tab = table (iteraciones,x1,x2,xr,error);
  prettyprint (tab) %esto en octave
  disp(tab)
 return
   
end