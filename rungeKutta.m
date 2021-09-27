%{
funktion som implementerar klassisk Runge-Kutta(RK4)

f - funktion som motsvarar problemets modell
tspan - vektor innehållandes start och stopptid för simuleringen
h - steglängden
u0 - begynnelsevillkoren
%}
function out = rungeKutta(f, tspan, h, u0)
    [m, ~] = size(u0);
    out = zeros((tspan(2) - tspan(1) )/h, m);
    un = u0; %senaste beräknade datapunkten
    t = tspan(1);
    iteration = 1; %steget algoritmen är på
    while t < tspan(2) - h
        %utför ett steg
        f1 = f(t, un);
        f2 = f(t + h/2, un + h*f1/2);
        f3 = f(t + h/2, un + h*f2/2);
        f4 = f(t + h, un + h*f3);
        un = un + h*(f1 + 2*f2 + 2*f3 + f4)/6;
        
        out(iteration,:) = un;
        iteration = iteration + 1;
        t = t + h;
    end
end
