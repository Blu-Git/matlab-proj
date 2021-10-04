function y=S(a,b,c,d,cyc,P,EP,x,p,trigFunc)
y=a*sin(b*x+c)+d;

%Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);

%x-intercepts
if d==0
    [xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));
else
    [xInt,yInt] =

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
plot(xInt,yInt, 'm*','MarkerSize', 10);

%Character Output
if c==0
fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx)+%d\n\n', a, trigFunc, b, d);
else
    if d==0
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)\n\n', a, trigFunc, b, c);
    elseif c==0 && d==0
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx)\n\n', a, trigFunc, b);
    elseif c~=0 || d~=0
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)+%d\n\n', a, trigFunc, b, c, d);
    elseif a==1
        fprintf('\nEquation of Trigonometric Function: y=%s(%dx+%d)+%d\n\n', trigFunc, b, c, d);
    elseif b==1
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(x+%d)+%d\n\n', a, trigFunc, c, d);
    elseif c<0
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx%d)+%d\n\n', a, trigFunc, b, c, d);
    elseif d<0
        fprintf('\nEquation of Trigonometric Function: y=%d*%s(%dx+%d)%d\n\n', a, trigFunc, b, c);
    end
end

%Improve "if-construct" (make sure when c<=0, d<=0, a==1, b==1, the values
%will not be shown when the program produces an output for the function).