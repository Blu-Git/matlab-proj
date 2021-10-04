function y=B(a,b,c,d,cyc,P,EP,x,p,trigFunc)
if b>0
    y=a*cos(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
else
    b=abs(b);
    y=-a*cos(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
end

%Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);

%x-intercepts
[xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));

%Plotting
plot(x,y,'k-');
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cosine Function')
hold on
grid on

plot(x,y,x(TF),y(TF),'r*');
plot(x,y,x(TF1),y(TF1),'r*');
plot(xInt,yInt, 'm*','MarkerSize', 10);
hold off
end