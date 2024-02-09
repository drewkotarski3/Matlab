% Andrew Kotarski 
% 10/02/2022
% Thatcher effect

subplot(2, 2, 1);

original = imread('johnny.jpg');  %load original image

imshow(original); 


subplot(2, 2, 2);
FaceDown = flip(original);  %make image upside down
imshow(FaceDown); 




tinypart = original(360:400, 100:275, :  );  %cordinates for mouth
b = size(tinypart);

Upside = flip(tinypart);                     % flip mouth


subplot(2,2,3)                                  % Faceup mouth down part
imshow(original); 
hold on; 
FaceUpMouthDown = image([100 275], [350 390], Upside);     
% original image line 7 with Upside image added using coordinates


subplot(2,2,4); 
imshow(FaceDown); 
hold on; 
FaceDownMouthUp = image([100 275], [100 150],  tinypart); 






shg; 