%Initialize Variables
a=double(0);
b=double(0);
c=double(0);
d=double(0);
cyc=double(0);
y=double(0);
trigFunc=char(' ');

%Prompt Inputs
fprintf('\nWelcome User to the Trigonometric Function Grapher\n\nWhat trigonomectric function do you want to use?\nA. Sine\nB. Cosine\nC.Tangent\nD.Cosecant\nE.Secant\nF.Cotangent\nG.All of the above\n\n');
trigFunc=input('Enter Chosen Option: ','s');
while isempty(trigFunc)
    trigFunc=input('Enter Chosen Option: ','s');
end
%Add loop for inputs with extra characters
a=input('Amplitude: ');
while isempty(a) || a<=0
    a=input('Amplitude: ');
end
b=input('Period (b): ');
while isempty(b) || b<=0
    b=input('Period(b): ');
end
c=input('Phase Shift (c): ');
while isempty(c)
    c=input('Phase Shift (c): ');
end
d=input('Vertical Shift: ');
while isempty(d)
    d=input('Vertical Shift: ');
end
cyc=input('How many cycles do you want to see? ');
while isempty(cyc) || cyc<=0
    cyc=input('How many cycles do you want to see? ');
end

%General Evaluation
P=(2*pi)/b;
EP=c+(cyc*P);
x=[0:.01:EP];
p=[0:pi/2:EP];


%Specified Evaluation
switch upper(trigFunc)
    case 'A'
        trigFunc='sin';
        Sin=Sub_Program_Sin(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'B'
        trigFunc='cos';
        Cos=Sub_Program_Cos(a,b,c,d,x,p,trigFunc);
    case 'C'
        trigFunc='tan';
        Tan=Sub_Program_Tan(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'D'
        trigFunc='cot';
        Cot=Sub_Program_Cot(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'E'
        trigFunc='sec';
        Sec=Sub_Program_Sec(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'F'
        trigFunc='csc';
        Csc=Sub_Program_Csc(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'G'
        %Sub Program to graph all trigonometric functions (sub-plotting).
end

%Note: Add labels for maxima, minima, and x-intercepts for one cycle.