%{
k = 12N/m
m = 80kg
luftmotstånd koefficient C = 0.24kg/m
g = 9.82m/s^2
%}

function out = bungeemodel(t, x)
if x(2) < 0
    out = [x(2); -0.15*x(1)+0.003*(x(2)^2)];
else
    out = [x(2); -0.15*x(1)-0.003*(x(2)^2)];
end