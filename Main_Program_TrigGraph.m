%Initialize Variables
a=double(0);
b=double(0);
c=double(0);
d=double(0);
cyc=double(0);
y=double(0);
trigFunc=char(' ');
checker=['A' 'a' 'B' 'b' 'C' 'c' 'E' 'e' 'D' 'd' 'F' 'f' 'G' 'g'];

%Prompt Inputs
fprintf('\nWelcome User to the Trigonometric Function Grapher\n\nWhat trigonomectric function do you want to use?\nA. Sine\nB. Cosine\nC.Tangent\nD.Cosecant\nE.Secant\nF.Cotangent\nG.All of the above\n\n');
trigFunc=input('Enter Chosen Option: ','s');
while isempty(trigFunc)==1 | trigFunc~=checker
    trigFunc=input('Enter a valid option: ','s');
end
a=input('Amplitude: ');
while isempty(a) || a==0
    a=input('Enter a Valid Number for Amplitude: ');
end
b=input('Constant of x (b): ');
while isempty(b) || b==0
    b=input('Enter a Valid Number for Constant of x (b): ');
end
c=input('Phase Shift (c): ');
while isempty(c)
    c=input('Enter a Valid Number for Phase Shift (c): ');
end
d=input('Vertical Shift: ');
while isempty(d)
    d=input('Enter a Valid Number for Vertical Shift: ');
end
cyc=input('How many cycles do you want to see? ');
while isempty(cyc) || cyc<=0
    cyc=input('Enter a Valid Number for the number of cycles you want to see: ');
end

%General Evaluation
b2=abs(b);
P=(2*pi)/b2;
EP=c+(cyc*P);
x=[0:0.001:EP+0.001];
p=[0:pi/2:EP];
SPc=string(sym(c));
EPc=string(sym(EP));
a2=abs(a);

%Specified Evaluation
switch upper(trigFunc)
    case 'A'
        trigFunc='sin';
        Sin=Sub_Program_Sin(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'B'
        trigFunc='cos';
        Cos=Sub_Program_Cos(a,b,c,d,cyc,P,EP,x,p,trigFunc);
    case 'C'
        trigFunc='tan';
        Tan=Sub_Program_Tan(a,b,c,d,cyc,P,EP,p,trigFunc);
    case 'D'
        trigFunc='csc';
        Csc=Sub_Program_Csc(a,b,c,d,cyc,P,EP,p,trigFunc);
    case 'E'
        trigFunc='sec';
        Sec=Sub_Program_Sec(a,b,c,d,cyc,P,EP,p,trigFunc);
    case 'F'
        trigFunc='cot';
        Cot=Sub_Program_Cot(a,b,c,d,cyc,P,EP,p,trigFunc);
    case 'G'
        AllTrig=Sub_Program_AllTrig(a,b,c,d,cyc,P,EP,x,p,trigFunc);
end

%General Output
fprintf('Starting Point: %s\nEnding Point: %s\nRange: [-%d,%d]\n\n',SPc,EPc,a2,a2);
