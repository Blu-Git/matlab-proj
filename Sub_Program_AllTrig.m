function y=G(a,b,c,d,cyc,P,EP,x,p,trigFunc)
checkerG=['G'];
if trigFunc==checkerG
    trigFuncA='sin';
    trigFuncB='cos';
    trigFuncC='tan';
    trigFuncD='cot';
    trigFuncE='sec';
    trigFuncF='csc';
end
    
nexttile
if b>0
    y=a*sin(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncA, b, c, d);
else
    b=abs(b);
    y=-a*sin(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncA, b, c, d);
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
hold on

nexttile
if b>0
    y=a*cos(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncB, b, c, d);
else
    b=abs(b);
    y=-a*cos(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncB, b, c, d);
end

%Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);

%x-intercepts
if d==0
    [xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));
elseif d~=0 & cyc==1
    x1=EP/4;
    x2=(EP+(EP/2))/2;
end

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
if d==0
    plot(xInt,yInt, 'm*','MarkerSize', 10);
elseif d~=0 & cyc==1
    plot(x1,d,'m*','MarkerSize', 10);
    plot(x2,d,'m*','MarkerSize', 10);
end
hold on

nexttile
syms x
if b>0
    y=a*tan(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncC, b, c, d);
else
    b=abs(b);
    y=-a*tan(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncC, b, c, d);
end

%Plotting
fplot(y,[0 EP]);
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Tangent Function')
hold on
grid on
hold on

nexttile
if b>0
    y=a*cot(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncD, b, c, d);
else
    b=abs(b);
    y=-a*cot(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncD, b, c, d);
end

%Plotting
fplot(y,[0 EP],'k-');
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cotangent Function')
hold on
grid on

nexttile
if b>0
    y=a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncE, b, c, d);
else
    b=abs(b);
    y=-a*sec(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncE, b, c, d);
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

nexttile
if b>0
    y=a*csc(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n', a, trigFuncF, b, c, d);
else
    b=abs(b);
    y=-a*csc(b*x+c)+d;
    fprintf('\nEquation of Trigonometric Function: y=-%d*%s(%dx+%d)+%d\n', a, trigFuncF, b, c, d);
end

%Plotting
fplot(y,[0 EP],'k-');
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Cosecant Function')
hold on
grid on

hold off
end