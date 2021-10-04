function y=G(a,b,c,d,cyc,P,EP,x,p,trigFunc)
syms x
nexttile
y=a*sin(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
title('Graph of Sine Function')
yline(d,'--b');
xlabel('x')
ylabel('y')
grid on
nexttile
y=a*cos(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
title('Graph of Cosine Function')
yline(d,'--b');
xlabel('x')
ylabel('y')
grid on
hold on
nexttile
y=a*tan(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Tangent Function')
grid on
nexttile
y=a*cot(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cotangent Function')
grid on
nexttile
y=a*sec(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Secant Function')
grid on
hold on
nexttile
y=a*csc(b*x+c)+d;
fplot(y,[0 EP])
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cosecant Function')
grid on
hold off
end

%Add syntax for outputing equation (if-construct)
%Check syntax
%Add "Coordinate-labels" c/o Aldy 
%   (x-intercepts, minima, & maxima of one cycle).

%Use subplot function instead of "nexttile"