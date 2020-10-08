function [radius, angle_r] = cart2polar(c)
    x = real(c); % the real part
    y = imag(c); % the imaginart part
    
    radius = (x^2 + y^2)^(0.5); % radius
    
    if x > 0
        angle_r = atan(y / x);
    elseif x < 0
        if y>=0
            angle_r = pi + atan(y / x);
        elseif y<0
            angle_r = -pi + atan(y / x);
        end
    else  % x == 0 or NaN:
        angle_r = sign(y) * pi / 2;
    end
end