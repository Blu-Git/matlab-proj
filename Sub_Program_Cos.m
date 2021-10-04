function y=B(a,b,c,d,cyc,P,EP,p,trigFunc)
syms x
y=a*cos(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cosine Function')
grid on
end

%Add syntax for outputing equation (if-construct)
%Check syntax
%Add "Coordinate-labels" c/o Aldy 
%   (x-intercepts, minima, & maxima of one cycle).