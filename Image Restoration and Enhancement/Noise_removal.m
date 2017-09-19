clc;
clear all;
close all;
%% Loading an Image`
load('Image19'); %loading the given image
Image1= mat2gray(IMAGE); %converting the image to grayscale
figure(1)
imshow(Image1) %displaying the image
title('Input image')
% figure;
%J = imnoise(Image1,'gaussian',0,0.025);
% imshow(J)

%% Removal of noise from image
h1 = [0 -1 0; -1 5 -1; 0 -1 0];  % High Pass Filter_1
Image1 = mat2gray(filter2(h1,Image1));% Filtering the Image through High pass filter_1
[Image2,noise]=wiener2(Image1);% Passing Image1 through a adaptive wiener filter
figure(2)
imshow(mat2gray(Image2));
title('Removal of noise from image')
%variance=var(Image1)
% freqz2(noise)
NSR = sum(noise(:).^2)/sum(Image2(:).^2);