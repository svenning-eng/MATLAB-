y(2) = 16.6; 
y(1) = 2; 
t = [0:0.1:5];

y_dot = twoeq(t,y)    %This calls the below function 
y_dot = @twoeq        %This creates a function handle and this allows us to call function "twoeq" by typeing "y_dot"

f = y_dot(t,y)


                      %The whole point of this discussion is calling function handles.
%ode45(y_dot,t,y)     %This is a differential equation solver. see p.527
ode23t(y_dot,t,y)     %This is a differential equation solver. see p.527
hold on               %"hold on" plots each plot statement on top of each other 
%ode113(y_dot,t,y)    %This is a differential equation solver. see p.527

ode23t(@twoeq2,t,y)
hold on 






                                             %This is how one declares what is returned in the state equation. 
function dydt = twoeq(t,y)
    dydt(1) = y(2)
    dydt(2) = -2003.3*y(2)-16670*y(1)+66667; %State Equation 2
    dydt = dydt';                            %Transpose the result. 
end

function dydt2 = twoeq2(t,y)
    dydt2(1) = y(2)
    dydt2(2) = -500.3*y(2)-600*y(1)+66667;     %State Equation 2
    dydt2 = dydt2';                            %Transpose the result. 
end
