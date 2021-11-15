%The MATLAB code includes the trainingdata for the manuscript
%Jingyang Yan et al 2021 Meas. Sci. Technol. 32 105405
%% 
clc,clear
% load training images
k = 1;
while k<=9
    filename = ['trainingdata' num2str(k) '.mat'];
    load(filename)
    img(:,:,:,1 + (k - 1 ) * 10000:k * 10000) = image_buff;
    k = k+1;
end
figure(1)
imshow(img(:,:,:,floor(90000 * rand)))

% load average radii
load r
figure(2)
plot(r)