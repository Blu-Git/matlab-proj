function y=S(a,b,c,d,cyc,P,EP,x,p,trigFunc)
if b>0
    y=a*sin(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
else
    b=abs(b);
    y=-a*sin(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
end

%Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);

%x-intercepts
if d==0
    [xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));
elseif d~=0 & cyc==1
    x1=EP/2;
    xInt=x(find(y==d));
end

%Plotting
plot(x,y,'k-');
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Sine Function')
hold on
grid on

plot(x,y,x(TF),y(TF),'r*');
plot(x,y,x(TF1),y(TF1),'r*');
if d==0
    plot(xInt,yInt, 'm*','MarkerSize', 10);
elseif d~=0 & cyc==1
    plot(x1,d,'m*','MarkerSize', 10);
    plot(EP,d,'m*','MarkerSize', 10);
    plot(x,y,xInt,d,'m*','MarkerSize', 10);
end
hold off
end
