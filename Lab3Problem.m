%%
%(Part 4) 
%A cannonball with mass 1 kg is fired at 45 degrees at 300 m/sec.
%The equation of motion is 
%Xf = Xo + VoX*t
%Yf = Yo + VoY*t - 1/2*g*t^2
%Find Xf and t
%You must use while loops to find the point at which Yf<0, and capture the
%value of t, and Xf at this instant. X0=0, Y0=0
%Hint set t=0, increment t by 0.1sec, ie t=0:0.1:sometimeyoupick.
%% 
Vo = 300; 
g = 9.81;
Xf = 0;
Yf = 0;
Yo = 0;
Xo = 0;
t=0;

while Yf>=0
    fprintf('Yf=%f\n', Yf);
    Xf = Xo + (Vo*cosd(45))*(t)
    Yf = Yo + (Vo*sind(45))*(t) - (0.5*g*t^2)
    t=t+0.01;
    if (Yf<0)
        fprintf('t=%f\n', t); 
        fprintf('Xf=%f\n', Xf); 
    end;
end;


