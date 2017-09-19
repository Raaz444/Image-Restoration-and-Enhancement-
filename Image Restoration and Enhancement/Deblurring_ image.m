N=21;
h1=fir1(N-1,0.7,'low',boxcar(N));  %transformation method                                       
H=ftrans2(h1); %2d FIR filter using frequency transformation                                                           
figure
freqz2(H); %2-D frequency response
Image3=mat2gray(deconvwnr(Image1,H,0.1)); %Deblurring image using deconvweiner
figure;
imshow((Image3))
title('Deblurring image')
% Image4=mat2gray(deconvblind(Image2,H)); %Deblurring image using blind deconvolution
% figure;
% imshow((Image4))
% title('Deblurring image 2')
% Image5=mat2gray(deconvreg(Image2,H)); %Deblurring image using deconvreg method
% figure;
% imshow((Image5))
% title('Deblurring image 3')