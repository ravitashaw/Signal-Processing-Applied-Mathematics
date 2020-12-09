% BME671L Lab #8: conv, conv2

% Your name:

clear

%%
% Q1: Use 'imread' command to read file 'dragon.jpg' into array A and display
% A using 'image'. Set the axis so that the image is not distorted.
% Set colormap to 'gray(256)' and add colorbar and the title.


%%
% Q2: Define vector f5 that will hold impulse response of a 5-pt averager:
%	y[n] = (x[n] + x[n-1] + x[n-2] + x[n-3] + x[n-4])/5


%%
% Q3: Use 'conv2' to apply 5-pt averager for ROWS and COLUMNS of image A.
% Display the result as an image.


% ********************************************************************
% SHOW YOUR IMAGE FOR Q3 TO THE TA TO RECEIVE CREDIT FOR THE LAB IF YOU
% ARE NOT PRESENT AT THE DISCUSSION SESSION ON FRIDAY.
% ********************************************************************

%%
% Q4: State what the 5-pt averages does to the image. Does this filter
% accentuate low or high frequencies? Explain.

% YOUR ANSWER: 


%%
% Q5: The 5-point averager adds a thin dark frame to the image.  Explain why
% this frame is added and why it is dark.  Hint: zoom in on this frame.

% YOUR ANSWER:

%%
% Q6: Define vector d1 that will hold impulse response of first-difference
% filter:
%	y[n] = x[n] - x[n-1];	


%%
% Q7: Use 'conv2' to apply first-difference filter to ROWS only of image A.
% On the same figure use subplot to display the image using:
% * image    (top image) 
% * imagesc  (bottom image)



%%
% Q8: Explain the reason why the result of the first-difference filter
% looks different when it is displayed with 'image' and 'imagesc'.

% YOUR ANSWER: 

%%
% Q9: Use 'conv2' to apply first-difference filter to COLUMNS only of image A.
% Display the result as an image.


%%
% Q10: State what the first-difference filter does to the image. Does this
% filter accentuate low or high frequencies? Explain.

% YOUR ANSWER: 


%%
% When you are done:
%	* upload your script to Sakai
%   * upload a pdf containing your script and outputs

