% This is an example of plotting a circle in the complex plane in matlab. Make sure you change
% the phasor X and all other vectors and values into appropriate ones in your Lab2.

clear all

X = -3 + 4*j*0 % phasor
z = @(t) X * exp(1j*w*t); % define complex function z from phasor X
zcirc = @(theta) abs(X)*exp(1j*theta); % describes a circle with the radius equal to the amplitude of z(t)
th = 0:2*pi/50:2*pi; % range of theta

% plot the circle in black dashed lines
plot(real(zcirc(th)),imag(zcirc(th)),'--k')
axis square, axis tight % check these axis options on Mathworks
axis([-3 3 -3 3]) % change the axis limits in your work!