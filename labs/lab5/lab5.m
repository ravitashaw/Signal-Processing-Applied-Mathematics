% BME671L Lab #5: arrays, logical indexing, linear algebra

% Your name:

% LABEL ALL AXES WHERE APPROPRIATE
 
close all, clear all

%%
% Q1: Use the 'dlmread' command to read the file 'lab5_spectrum.txt'. 


%%
% Q2: Extract the first column into a frequency vector (f_pos) and the
% second into a vector of Fourier coefficients (X_pos)


%%
% Q3: This file contains only the positive half of a spectrum. Use the
% 'wrev' and concatenation to reconstruct the full spectrum. Make sure
% that element corresponding to f = 0 appears only ONCE in the
% spectrum. 


%%
% Q4: To simplify this expansion write a function expand_spec that
% accepts two vectors as arguments: a vector of frequencies, a, and a
% vector of Fourier coefficients, b. Return two vectors p and q as
% outputs. Have your function check that the vectors passed as
% arguments are the same length. Use 'error' to stop execution if
% they are not. Make sure your function works even if f = 0 is not
% given. 


%%
% Q5: Add comments to the beginning of the function so that the
% command: 
% 'help expand_spec' (or 'help lab5>expand_spec')
% prints information about the function, what it does, and how to call
% it.


%%
% Q6: Use your function to create the full spectrum [f, X] that
% corresponds to the data in 'lab5_spectrum.txt'. Plot the spectrum
% using the plot_spectra function you designed last week. Assume the
% given frequencies are in Hz.


% ********************************************************************
%   SHOW YOUR SPECTRUM TO THE TA TO RECEIVE CREDIT FOR THE LAB
% ******************************************** ************************

%%
% Q7: Construct a vector X_neg that contains all of the Fourier
% Coefficients for the negative frequencies (f <= 0) from the vector
% X. Do NOT use conjugate symmetry, loops or if statements. Do it in
% ONE command. 


%%
% Q8: what are the sizes of vectors f, X, and X_neg?

% YOUR ANSWER:
% f: 
% X: 
% X_neg: 

%% 
% Q8: Which of the following operations are allowed? For each
% operation write down the size of the result and explain what
% mathematical operation is performed. For operations that are not
% allowed, explain the reason.

% f .* X: 
% X * f:
% X' * f:
% X * f':

%%
% Q9: In the previous lab we used Fourier synthesis to reconstruct a
% signal by hand (or method of choice). This method involved analyzing
% the spectral terms and determining the cosine representation. i.e.:
%
% y(n) = A_k(1)*cos(w_k(1)*t(n) + phi_k(1)) + 
%         A_k(2)*cos(w_k(2)*t(n)+phi_k(2))+... 
% -- or --
% y(n) = X_k(1)*exp(j*w_k(1)*t(n)) + X_k(2)*exp(j*w_k(2)*t(n)) + ...
%
% This time, we will synthesize the signal, y(t), from f and X using
% matrix multiplication. 
% HINT: You do not need a for loop.
% HINT: there are two transpose function (A.' and A') use the correct
% one! 
 
% Create a figure with a plot of the time-domain signal.

t = 0:0.01:4;	% time vector


%%
% Q10: What happens if we reconstruct the signal without using all of
% the frequency terms? Make a figure with 6 plots (3x2). In each plot
% synthesize y using a different number of frequencies n = [1, 2, 3,
% 4, 8, and 16] (each positive and negative pair counts as 1
% frequency term, always include the DC value).
%   * Always use the frequencies with the largest |X|, they
%       contain the majority of the "power" of the signal.
%   * The title of each plot should indicate how many frequency pairs
%       were used
%   * Comment on the differences between the graphs.
% HINT: You should be able to use a for loop instead of copy/pasting
% the same commands 6 times.


% YOUR ANSWER:



%%
% When you are done:
%	* Show the indicated result/figure to the TA during the lab period
%       to receive credit
%   * For publishing/grading purposes include your function below
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs.


%%
% YOUR FUNCTION:







