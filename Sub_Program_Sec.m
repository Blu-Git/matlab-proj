function y=E(a,b,c,d,cyc,P,EP,p,trigFunc)
syms x
%y=a*sec(b*x+c)+d;
%fplot(y,[0 EP])
if b>0
    y=a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
else
    b=abs(b);
    y=-a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
end

%Minima and Maxima
%TF = islocalmin(y);
%TF1 = islocalmax(y);

%x-intercepts
%[xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));

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

%plot(x,y,x(TF),y(TF),'r*');
%plot(x,y,x(TF1),y(TF1),'r*');
%plot(xInt,yInt, 'm*','MarkerSize', 10);
hold off
end
