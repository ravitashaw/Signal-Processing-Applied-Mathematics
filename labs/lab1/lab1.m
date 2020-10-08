% BME671L
% Lab #1: clear, close, plots, vectors, complex variables, real, imag,
% atan, angle

% Your name: 

clear, close all
% Plotting example with u = 1 - 3j, v = 2 + 4j
figure(1), clf
plot([0 1],[0 -3],'k',[0 2],[0 4],'k--')
xlabel('x-axis label goes here')
ylabel('y-axis label goes here')
xlim([-2 2])
ylim([-4 4])
grid on

%%
% Q1: Define 2 complex variables u and v where u = 2 + 3j, v = -5 + j.



%%
% Q2: calculate the sum of u and v. Do not suppress the output.


%%
% Q3: When an output is not assigned a variable it automatically gets
% designated as "ans". Save "ans" as a new variable z. This time suppress
% the output by adding a ";" to the end of the command


%%
% Q4: Print real and imagingary parts of z separately using the disp
% command. Use the matlab functions that return the components of z instead
% of hard coding the answer.

disp('real:')
disp()
disp('imag:')
disp()

%%
% Q5: Calculate the magnitude of z using its complex conjugate either with a
% "'" or using the conj() command. Is there any difference between these
% commands? What if input was a matrix?


% Your answer: 

%%
% Q6: Find the angle of z using Matlab's "angle" command


%%
% Q7: If you instead use the "atan" command to what result do you get? Why
% might these values disagree?


% Your answer: 


%%
% Q8: Plot u in red and v in blue as solid lines on the same plot. The
% vectors should originate from the origin. Label the x and y axis as real
% and imaginary. Set both the x and y axis to display +/- 6. Add a grid.
figure(1), clf


% Add z to the plot in black using the "hold on" command. 



% Add an additional vector to the plot that geometrically represents the
% addition of u to v. Make this vector a dashed green line. Hint:
% head-to-tail vector addition.


% *************************************************************************
%   SHOW FIGURE 1 TO THE TA TO RECIEVE CREDIT FOR THE LAB
% *************************************************************************


%%
% Q9: Create a function cart2polar with that has an input of a complex
% number in a cartesian format, z, and outputs the corresponding radius and
% angle for polar coordinates. The only built-in matlab commands you are
% allowed to use are real(), imag(), and atan(). Use if, elseif, and else.
% Remember that in Matlab any boolean statements require the symbol to
% appear twice (e.g. == or && or ||).


%%
% Q10: Convert the following values to polar coordinates by hand and
% compare the answers to output of your cart2polar function. Remeber that
% all angles should be between -pi and pi.
z1 = 1+1j;
z2 = -1+j;
z3 = -3-4j;
z4 = j;

% By hand:
% z1: r =     theta = 
% z2: r =     theta = 
% z3: r =     theta = 
% z4: r =     theta = 

% Using cart2polar:

[r1, theta1] = cart2polar(z1)

%%
% When you are done:
%	* Make sure to show the indicated result/figure to the TA during the
%     lab period to recieve credit
%	* upload your script to Sakai
%   * upload your cart2polar function
%   * upload a pdf containing your script and outputs
%   * PRINT a copy of your pdf to turn in at the beginning of class on
%     Wednesday
return
