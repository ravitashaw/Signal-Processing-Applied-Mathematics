% BME671L Lab #9: frequency response

% Your name: Ravitashaw Bathla (rb369)

close all, clear all
% In this lab we will analyze a system with the following frequency
% response as a function of w in radians/sample:
% H(w) = jw/(1 + j*w)
% The input to the system is x(t) = 4*cos(4*pi*t - pi/6), and the
% function is sampled at fs = 16 samples/second.


%% 
% Q1: Define the frequency response as a function with w as a parameter
H = @(w) (1j*w)./(1 + 1j*w);

%% 
%Q2: Define the vectors wx and X that store the frequencies and 
% phasors of the input
fs = 16;
wx = [-4*pi/fs, 4*pi/fs];

amp = 4;
ph = pi/6;
X = [(amp/2)*exp(1i*ph), (amp/2)*exp(-1i*ph)];

%%
% Q3: Using H and vectors wx and X compute the phasors of the output
% and store them in vector Y
H_wx = H(wx);
Y = H_wx.*X;

%%
% Q4: Plot the spectra of the systems frequency response of the input
% and of the output in one figure with 6 subplots
%   * In all plots use the range of frequencies from [-pi, pi]
%   * Row 1: amplitude and phase sepectra of the system's frequency
%   resoponse H(w).
%   * On the spectra of H(w) mark the values corresponding to
%   frequencies present in the input with a red 'o'
%   * Row 2: amplitude and phase spectrum of the input x[n]
%   * Row 3: amplitude and phase sepctrum of the output y[n]
%   * Make sure that the input and output have the same vertical
%   scale. Label axis and/or add titles where appropriate. Add grid
%   lines using 'grid on'.

ntot = 400;
n=1:1:ntot;
% Get w, the vector of all the angles 
w0 = -pi;
wf = pi;
deltaw = (wf-w0) / ntot;
w_cont = w0 + n * deltaw;

H_val=  H(w_cont);

figure(1), clf;

% Row 1
subplot(3, 2, 1);
plot(w_cont,abs(H_val));
hold on;
grid on;
plot(wx, abs(H_wx), 'o', 'color', 'red', 'Linewidth', 1.5);

xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
ylim([0 3]);
xlim([-pi pi]);
title('Amplitude of H(w)');
xlabel('$$\hat{\omega} (rad/sample)$$ ','Interpreter','Latex');
ylabel('Amplitude');

subplot(3, 2, 2);
plot(w_cont, angle(H_val));
hold on;
grid on;
plot(wx, angle(H_wx), 'o', 'color', 'red', 'Linewidth', 1.5);

xlim([-pi pi])
ylim([-pi/2 pi/2])
xticks([-pi -pi/2 0 pi/2 pi])
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
yticks([-pi/2 0 pi/2]);
yticklabels({'-\pi/2','0','\pi/2'});
title('Phase of H(w)');
xlabel('$$\hat{\omega}  (rad/sample)$$ ','Interpreter','Latex');
ylabel('Phase');

% Row 2
subplot(3, 2, 3);
stem(wx,abs(X));
hold on;
grid on;
xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
ylim([0 3]);
xlim([-pi pi]);
title('Amplitude of x[n])');
xlabel('$$\hat{\omega}  (rad/sample)$$ ','Interpreter','Latex');
ylabel('Amplitude');


subplot(3, 2, 4);
stem(wx, angle(X));
hold on;
grid on;
xlim([-pi pi])
ylim([-pi/2 pi/2])
xticks([-pi -pi/2 0 pi/2 pi])
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
yticks([-pi/2 0 pi/2]);
yticklabels({'-\pi/2','0','\pi/2'});
title('Phase of x[n]');
xlabel('$$\hat{\omega} (rad/sample)$$ ','Interpreter','Latex');
ylabel('Phase');

% Row 3
subplot(3, 2, 5);
stem(wx,abs(Y));
hold on;
grid on;
xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
ylim([0 3]);
xlim([-pi pi]);
title('Amplitude of y[n])');
xlabel('$$\hat{\omega} (rad/sample)$$ ','Interpreter','Latex');
ylabel('Amplitude');


subplot(3, 2, 6);
stem(wx, angle(Y));
hold on;
grid on;
xlim([-pi pi]);
ylim([-pi/2 pi/2]);
xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'});
yticks([-pi/2 0 pi/2]);
yticklabels({'-\pi/2','0','\pi/2'});
title('Phase of y[n]');
xlabel('$$\hat{\omega} (rad/sample)$$ ','Interpreter','Latex');
ylabel('Phase');

% ********************************************************************
% SHOW YOUR IMAGE FOR Q4 TO THE TA TO RECEIVE CREDIT FOR THE LAB IF YOU
% ARE NOT PRESENT AT THE DISCUSSION SESSION ON FRIDAY.
% ********************************************************************

%% 
% Q5: How are the magnitude and phase of the input and frequency
% response function combined to determine the output?

% YOUR ANSWER:
% The Amplitude is a result of multiplication (convolution) of the
% frequency response and the input signal. The phasors are direct
% addition/subtraction of the phases of phase from frequency response 
% and input signal. 

%%
% Q6: Reconstruct the input and output as a function of time over 4
% periods (start at t = 0). Plot x(t) and t(t) on the same graph, add
% grid lines, legend, and axis labels.

% x(t) = 4*cos(4*pi*t - pi/6)
T = (2*pi)/(4*pi);
t = 0:0.01:4*T;

X_abs = abs(X);
Y_abs = abs(Y);
X_ph = angle(X);
Y_ph = angle(Y);

x = @(t) (2*X_abs(2)*cos(wx(2)*fs*t+X_ph(2)));
y = @(t) (2*Y_abs(2)*cos(wx(2)*fs*t+Y_ph(2)));

x_t = x(t);
y_t = y(t);

figure(2) , clf;
plot(t, x_t);
grid on;
hold on;
plot(t, y_t);
title('Input x(t) and y(t)');
xlabel('t');
ylabel('Amplitude');
xlim([0 4*T]);
ylim([-5 5]);
legend('x(t)','y(t)');
%% 
% Q7: Is this a high-pass or low-pass filter?

% YOUR ANSWER:
% This is a High-pass filter as it can be observed in Figure(1) of H(w)
% that as H(w) approaches zero, the amplitude is decreasing. This implies
% that the filter will allow higher frequencies to pass through, therefore it
% is a high-pass filter. 


%%
% When you are done:
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs

