function out = bungeemodel(t, x)
    g = 9.82;
    m = 80;
    k = 80;
    C = 0.24;
    if x(1) < 0
        out = [x(2); g-(C/m)*x(2)*x(2)];
    else 
        out = [x(2); g-(k/m)*x(1)-(C/m)*x(2)*abs(x(2))];
end
