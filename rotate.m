function [x, y] = rotate(xvec, yvec, ang)
%The function rotates points in the xy-plane counter-clockwise through an
%angle about the origin by a specified angle
%
%Inputs:  xvec and yvec are vectors of x and y coordinates
%Input:  ang is the rotation angle in degrees
%Outputs:  x and y are the resulting vectors of rotated coordinates

theta = ang*pi/180; % The rotation angle, converted to radians
b = [cos(theta), -sin(theta); sin(theta), cos(theta)]; %rotation matrix
mat = [xvec; yvec];  %matrix of coordinates

%perform matrix multiplication
rot = b*mat;
x = rot(1,:);  %output of x-coordinates
y = rot(2,:);  %output of y-coordinates

end