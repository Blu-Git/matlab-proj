function y=S(a,b,c,d,cyc,P,EP,x,p,trigFunc)
y=a*sin(b*x+c)+d;
%Code for higlighting x-intercepts
[xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));

%Code for Finding Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);
plot(x,y,x(TF),y(TF),'r*');
plot(x,y,x(TF1),y(TF1),'r*');

%%[vys,vylocs] = findpeaks(-signal);
%TF1 = islocalmax(-y);
%findpeaks(y);
%findpeaks(x,-y);
set(gca,'xtick',p)
set(gca,'xticklabel',string(sym(p)))
yline(d,'--b');
xlabel('x')
ylabel('y')
title('Graph of Sine Function')
hold on
[xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));
plot(x,y,'k-');
plot(xInt,yInt, 'm*','MarkerSize', 10);

%plot(min_y,max_y, 'm*','MarkerSize', 10);
grid on

%Bug#1; Sometimes minima does not show up in figure window.
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