close all;
clc;

A=imread('LenaFace.tif');
R = double(A); 
C = 1;
N=2.2;

figure, 
%Identity
subplot(3,2,1), imshow(A), title('Original');

%Image Negative
L=256;
img_Neg= (L-1)-A;
subplot(3,2,2), imshow(img_Neg), title('Negative');


%power
Img_Power=C*(R.^N);
Temp=255/(C*(255.^N));
I_P=Temp*Img_Power;%display image range [0 255]
subplot(3,2,3), imshow(uint8(I_P)), title('Power');


%Nth root
Img_NRoot=C*(R.^(1/N));
Temp1=255/(C*(255.^(1/N)));
I_NR=Temp1*Img_NRoot;
 subplot(3,2,4), imshow(uint8(I_NR)), title('Nth Root');

%log
Img_Log = C * log(1+R);
Temp2=255/(C*log(256));
I_L = Temp2*Img_Log;
subplot(3,2,5), imshow(uint8(I_L)), title('Log');

%inverse Log
img_invLog = exp(R/Temp2)-1;
 subplot(3,2,6), imshow(img_invLog), title('Inverse Log'); 



 



