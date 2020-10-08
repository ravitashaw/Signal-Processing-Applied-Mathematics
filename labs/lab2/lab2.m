% BME671L
% Lab #2: colon notation, anonymous functions, concatenation, clear, size,
% whos, stem

% Your name: Ravitashaw Bathla (rb369)

clear, close all

% In matlab one of the most useful operations is the colon. It can create
% vectors as well as be used for indexing. For more information see the
% matlab documentation on colon or type 'help colon' in the command line.
% EXAMPLES:
numbers = 1:10      % creates a vector with the integers 1:10;
even = 2:2:10       % creates a regularly spaced vector using 2 as the increment between elements
odd = numbers (1:2:end) % starts at the first value in numbers and takes every 2nd value until reaching the end


%%
% Q1: What is the sampling period for these two time vectors?
t1 = -4:1/50:2;
t2 = 1/20*(40:160);

% Your answer:
% The sampling period is the difference between two consequtive time
% samples. If the difference is same across all the time samples, the
% sampling period will be same as difference between any two samples.
% However, if the time difference varies across different samples, we take
% the mean of the difference between each sample. 

st1 = mean(diff(t1)) 
st2 = mean(diff(t2)) 

% Therefore, the sampling period for t1 is 0.0200
% and sampling period for t2 is 0.0500

%%
% Q2: We define an anonymous function below. What is the
% amplitude, frequency, radian frequency, and time shift of the sinusoid?

y = @(t) 2.5*cos(pi*t-1/4*pi);

% A = 2.5
% f = 0.5
% w = pi
% ts = 1/4

% % 
% Q3: We can now use y as a command and compute y for any value(s) of
% interest. EXAMPLE: x = y(1:10). Compute the values of this function at
% all the time points in t1, save this vector as x1. Repeat for t2, save as
% x2. Plot x1 and x2 as dots connected by a line using a single plot
% command. Turn the grid on and verify the parameters you calculated in Q2.
% Label the x-axis.

x1 = y(t1);
x2 = y(t2);

figure(1), clf
plot(t1, x1, 'b', t2, x2, 'r')
xlabel('Time')
ylabel('2.5*cos(pi*t-1/4*pi)')
xlim([-5 9])
ylim([-3 3])
grid on

%%
% Q4: We would prefer to have all the time values in a single vector.
% Use concatenation to construct vectors t3 that holds all of the time
% instances and y3 with all of the function values. 
% HINT: run the command 'help cat' to see two different ways of putting the
% vectors together. With 2D matrices I tend to use the shorter method that
% does not require 'cat'
t3 = [t1, t2];
x3 = [x1, x2];
% or
t3 = cat(2, t1, t2);
x3 = cat(2, x1, x2);
%%
% Q5: Verify that the vectors the concatenated correct using the Matlab
% commands "size" and "whos". What are the dimensions of t3 and y3? Are
% they row or column vectors?
 size(t3)
 size(x3)
 
% YOUR ANSWER:
% The dimensions of t3 and y3 are 1x422 for both. This is a representation
% of the row vectors for the given input. 

%%
% Q6: We want to create two new vectors, t4 and x4, that are comprised of
% every 5th point from t3 and x3. This can be done using a for loop. For
% example: 
% for k = 1:101
%   t4(k) = t3((k-1)*5+1);
%   x4(k) = x3((k-1)*5+1);
% end 
% However, one power of matlab is vectorization. Write this for loop in
% two lines using colon notation. Hint: think about matrix indexing.
t4 = t3(1:5:end);
x4 = x3(1:5:end);



%%
% Q7: On the same plot as Q3 (use hold on), add the subsampled results as
% black asterisks.
hold on
plot(t4, x4, 'k*')


% *************************************************************************
%   SHOW FIGURE 2 TO THE TA TO RECIEVE CREDIT FOR THE LAB
% *************************************************************************

%%
% Q8: Define two new anonymous functions y2 and y3 that are sinusoids with
% the following parameters:
% y2: A = 5, f = 2 Hz, time shift = 1/6 s
% y3: A = 8, f = 2 Hz, time shift = -1/12 s
% additionally define a new time vector tt that contains about 4 cycles of
% the sinusoids with a sampling period of 0.01 s.
y2 = @(t) 5*cos(4*pi*t-2/3*pi);
y3 = @(t) 8*cos(4*pi*t+1/3*pi);
tt = 0:0.01:2;

x5 = y2(tt);
x6 = y3(tt);

%%
% Q9: Using the subplot command create a single figure with 3 plots in a
% single column. Plot y2 in the first plot, y3 in the second, and y2+y3 in
% the bottom plot. Add a title and grid to each plot, and label the bottom
% x-axis. Set the y-axis range from -10 to 10.

figure(2), clf
subplot(3,1,1)
plot(tt, x5)
title('y2 between 0-2sec')
ylim([-10 10]);
grid on

subplot(3,1,2)
plot(tt, x6)
title('y3 between 0-2sec')
ylim([-10 10]);
grid on

subplot(3,1,3)
plot(tt, x5+x6)
title('y2+y3 between 0-2sec')
ylim([-10 10]);
grid on
xlabel('Time')


%%
% Q10: Using your plot estimate the amplitude, frequency, and time shift of
% y2+y3. You might find the "min" or "max" functions useful here. 

% YOUR ANSWER
% The Amplitude is approximately 3 for the y2+y3 wave. 
% The frequency of y2 and y3 is same, so the frequency of y2+y3 is also 
% same at 2Hz (4*pi*t)
% Phaseshift of the sum y2+y3 appears to be pi/3 = 1.0472
% therefore, the timeshift is 4*pi*t_s = pi/3
% => t_s = -1/12 sec
% Therefore, the timeshift is -1/12 seconds

%%
% Q11: y2 is the real part of a rotating complex exponential, z2. Write z2
% as an anonymous function. What is its phase shift?
% In a single figure create 3 plots that show the real, imaginary, and
% magnitude of z2. Use the same y-axis scaling for every plot. Add titles
% to each plot that describe the signal using trig functions such as
% 'cos(\omegat + \phi)'.

% Your answer:
z2 = @(t) 5*cos(4*pi*t-2/3*pi) + j*5*sin(4*pi*t-2/3*pi);
%z2 = @(t) 5*exp(j*(4*pi*t - 2/3*pi))

x7 = z2(tt);

figure(3), clf
subplot(3,1,1)
plot(tt, real(x7))
title('Real(z2) = 5*cos(4*pi*t-2/3*pi)')
grid on

subplot(3,1,2)
plot(tt, imag(x7))
title('Imag(z2) = 5*sin(4*pi*t-2/3*pi)')
grid on

subplot(3,1,3)
plot(tt, abs(x7))
title('Magnitude = sqrt(Real(z2)^2 + Imag(z2)^2)')
ylim([-5, 5])
grid on
xlabel('Time')


%%
% Q12: Plot one period of the real signal corresponding to the complex
% signal z2(t). Use a fine enough sampling period that the curve looks
% smooth. Then create a new time vector with a sampling period of 1/24 s.
% Use the stem function to mark the samples in red on the same plot. Grid
% on, label x-axis.

% sampling with 1/75sec for curve to look smooth
t_one = 0:1/75:0.5;
z2_s = z2(t_one);

t_new = 0:1/24:0.5;
z2_new = z2(t_new);

figure(4), clf
plot(t_one, real(z2_s))
hold on
stem(t_new, real(z2_new))
grid on
xlabel('Time')

% When you are done:
%	* Make sure to send the indicated result/figure to the TA before 11:59
%	PM on Friday (Aug 28)
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs before 11:59 PM on
%   next Tuesday.
return