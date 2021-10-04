function y=B(a,b,c,d,cyc,P,EP,x,p,trigFunc)
y = a*cos(b*x+c)+d;

%Minima and Maxima
TF = islocalmin(y);
TF1 = islocalmax(y);

%if d==0
[xInt,yInt] = Intersections_TrigGraph(x,y,x,zeros(size(y)));
%else
%    [xInt,yInt];
%end

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

end

%Add syntax for outputing equation (if-construct)
%Check syntax
%Add "Coordinate-labels" c/o Aldy 
%   (x-intercepts, minima, & maxima of one cycle).
