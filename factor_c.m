function fc = factor_c(c,m,g,t,v)
  
   fc = g.*m./c.*(1 - exp(-1*c .* t ./ m)) - v;
   %fc = -2*c.^2 + 8*c - 5;
   %fc = exp( (c-2).^2) - 15;
  return 

end 
