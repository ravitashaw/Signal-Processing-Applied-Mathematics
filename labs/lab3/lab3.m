% BME671L
% Lab #3: for, getframe, movie, input

% Your name: 

% LABEL ALL AXIS WHERE APPROPRIATE

%%
% Q1: Remember Q8-10 in Lab 2 involved the sum of 2 sinusoids with the
% same frequency. y2 + y3 can be written in the form A*cos(w*t + phi).
% Use phasor addition to determine the exact values for A, w, and phi
% (include units). How close were your numerical answers from last
% week?
% Recall: 
% y2: A = 5, f = 2 Hz, time shift = 1/6 s 
% y3: A = 8, f = 2 Hz, time shift = -1/12 s

y2 = @(t) 5*cos(4*pi*(t-1/6));
y3 = @(t) 8*cos(4*pi*(t+1/12));

% YOUR ANSWER:
% A = 
% w = 
% phi =

%%
% Q2: Double check your work. On the same figure plot y2 + y3 with
% enough points so that the curve appears smooth. Then use the time
% vector below to plot your simplified representation as black dots on
% top of the sinusoid. Change 'Linewidth' to 1.5 and the 'MarkerSize'
% to 20. Add a legend labeling the curve 'numerical' and the dots
% 'calculated'. Have the legend automatically appear in the upper left
% corner.

tt = 0:0.05:1;
figure(1), clf

%%
% Q3: z(t) is defined as z(t) = X*exp(j*w*t) with the parameters
% below. What is the phase shift of z(t)?

X = -2.5 + 1j*0;     % phasor at t = 0
w = 4*pi;            % radian frequency (rad/s)
fs = 48;             % sampling frequency (Hz)

% YOUR ANSWER:

%%
% Q4: Compute frequency (f), period (T), sampling interval (ts), and the
% number of samples taken in one period (N). Include units in the comments.

    % frequency: 
    % period: 
    % sampling interval: 
    % N: 
    
%%
% Q5: Define an anonymous complex function that evaluates z(t)



%%
% Q6: Next we will create a movie of the rotating phasor corresponding
% to z(t) along with a plot of the corresponding real signal. To
% begin, define a complex function zcirc(theta) that describes a
% circle with the radius equal to the amplitude of z(t). Create a
% corresponding vector, th, that contains the associated angles with a
% small enough increment that the circle has a smooth appearance.


%% 
% Create the first frame of the movie. Create a figure with two plots. 
% In the top plot show:
%   * the circle plotted with a dashed black line
%   * a phasor corresponding to the current time (t = 0)
%   * a title that includes a counter displaying the current time
%   * axis labels, square axis (use the 'axis' command)
% In the bottom plot show:
%   * z(t) from 0 to T plotted with enough points that the curve looks
%     smooth
%   * the current measurements of z(t) marked using the stem command
%   * x-axis labeled time


figure(2), clf
    

% ********************************************************************
%   SHOW YOUR FIRST FRAME TO THE TA TO RECEIVE CREDIT FOR THE LAB
% ********************************************************************

%%
% Q7: Now, use the 'for' loop to generate the frames of the movie. The
% movie should have 24 frames for time instances ts apart. For each 
% frame there will be two plots.
% Top plot will show:
%   * the circle and phasor corresponding to the current time
%   * a title that includes a counter displaying the current time
%   * axis labels, square axis (use the 'axis' command)
% Bottom plot will show:
%   * z(t) from 0 to T plotted with enough points that the curve looks
%     smooth
%   * the current measurements of z(t) marked using the stem command
%   * x-axis labeled time
% During every loop:
%   * save the current frame using 'getframe' command
%   * at the end of the loop, release the figure so that the next 
%     frame can be generated.
% HINT: if you put the pause statements in the loop you can pause the
% execution until any key is pressed.


%%
% Q8: Play movie for k cycles of z(t):
%   * use 'input' command to ask 'How many cycles should be played?'
%   * use 'movie' command to play the movie in figure 2 at the speed of
%     6 frames/s and for the requested number of cycles.
%   * use 'axis off' so that the movie appears in the correct part of
%     the figure
% 
% PUBLISHING: hard code the number of cycles played to 1 when you
% publish as a PDF to avoid an error. 

figure(2), clf
axis off
 

%%
% When you are done:
%	* Make sure to show the indicated result/figure to the TA before 11:59PM Friday to receive credit
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs

return