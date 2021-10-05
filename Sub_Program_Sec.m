function y=E(a,b,c,d,cyc,P,EP,p,trigFunc)
syms x
if b>0
    y=a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
else
    b=abs(b);
    y=-a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
end

%Plotting
fplot(y,[0 EP],'k-');
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Secant Function')
hold on
grid on
hold off
end
