% BME671L Lab #4: dlmread, switch, error, yticks, yticklabels, text,
%                   greek letters, varargin, nargin

% Your name:

% LABEL ALL AXIS WHERE APPROPRIATE
 
% NOTE: This lab may contain some longer commands that span more than
% a standard page. Your published PDF MUST contain all of your script.
% Use the '...' to break a single command into multiple lines if
% necessary.
close all, clear all

%%
% Q1: Use the 'dlmread' command to read the spectrum from the file
% 'lab4_spectrum.txt'. This is a spectrum from a real periodic signal.
% Extract the first column into a frequency vector, freq, and the
% second column into a vector of phasors, X.


%%
% Q2: We will be plotting a lot of spectra. To be more efficient,
% write a function that will plot spectra, label axis, set ranges,
% ect., so that you can plot spectra with a single function call:

% plot_spectra(freq, X, s)

% where the vector freq holds frequencies, X holds the phasors, and s
% is a character 'f' or 'w' for frequency in Hz or rad/s,
% respectively. Your functions should:
%   * use 'switch command' to label the x-axis with either frequency
%   	(Hz) or with the lowercase greek letter omega (rad/s).
%   * if the argument s is not 'f' or 'w' the function should give an
%       error message: "Third argument should be either 'f' or 'w'.
%       STOP"
%   * use subplot plot the magnitude (top) and phase (bottom) spectra 
%   * label the y-axes either 'magnitude' or  'phase'
%   * plot the spectra in black with a linewidth of 1.5
%   * add grid lines
%   * adjust the phase y-axis so that the yticks are at
%       [-pi -pi/2 0 pi/2 pi] and correspondingly labeled using the
%       greek letter pi
% TEST your function using freq and X assuming freq is in Hz


% ********************************************************************
%   SHOW YOUR SPECTRUM TO THE TA TO RECEIVE CREDIT FOR THE LAB
% ********************************************************************

%%
% Q3: A few questions about the spectrum:
%   * What is the fundamental frequency of the signal?
%       YOUR ANSWER: 

%   * Describe the symmetry you observe in the magnitude plot.
%       YOUR ANSWER: 

%   * Describe the symmetry you observe in the phase plot.
%       YOUR ANSWER: 

%   * Fill in the blank: 
%     This symmetry will be present for all _____ signals
%       YOUR ANSWER: 

%% 
% Q4: We may want to add a title to the top plot. Modify your function
% to take an optional fourth argument, which is a specified title
% i.e.: plot_spectra(freq,X,s,'plot title');

% TEST how your function deals with the fourth argument using freq and
% X with the title 'Lab #4'. This time assume frequency is in rad/s.


%% 
% Q5: Add comments to the beginning of the function so that the
% command 'help plot_spectra' (separate .m files) or 
% 'help lab4>plot_spectra' (if the function is in the same script) 
% prints information about your function. This should include what it 
% does, how to call it, and the inputs.


%%
% Q6: An alternative to having separate magnitude and phase plots is
% to plot only the magnitude and label each spectral line with the
% corresponding complex amplitude. Determine the complex exponential
% representation of the values in X. The values are all common
% fractions of pi (i.e. pi/3 or 3/4*pi). 

% Create figure with 2 plots:
%   * In the TOP plot show the magnitude spectrum of f and X. Add the
%       complex amplitudes as text elements centered above each
%       spectral line. 
% HINT: Cell arrays are a great way to store strings of different
% length. Ex: example = {'this','is','an','example'};
%
%   * In the BOTTOM plot display the real signal with respect to time
%       that corresponds with this spectrum assuming that freq is in
%       Hz. Plot the signal for t = 0:0.0001:0.1;


%% 
% Q7: Determine the function (sum of cosines) that this spectrum
% represents.

% YOUR ANSWER: 

%%
% When you are done:
%	* Show the indicated result/figure to the TA during the lab period
%       to receive credit
%   * For publishing/grading purposes include your function below
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs.

return

%%
% YOUR FUNCTION:




