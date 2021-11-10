close all;
clc

img_Currency=imread('currencyImg.tif');
bit_First=bitget(img_Currency, 1);
bit_Secnd=bitget(img_Currency, 2);
bit_Third=bitget(img_Currency, 3);
bit_Foruth=bitget(img_Currency, 4);
bit_Fifth=bitget(img_Currency, 5);
bit_Sixth=bitget(img_Currency, 6);
bit_Seventh=bitget(img_Currency, 7);
bit_Eighth=bitget(img_Currency, 8);


firstFig = figure(1);
set(firstFig, 'Position', [30 50 600 600])

subplot(3,3,1); imshow(img_Currency);title('Original');%Show Orignial Image
subplot(3,3,2); imshow(bit_First, []);title('Bit-Plane 1');%Show Bitplane 1
subplot(3,3,3); imshow(bit_Secnd, []);title('Bit-Plane 2');%Show Bitplane 1

subplot(3,3,4); imshow(bit_Third, []);title('Bit-Plane 3');%Show Bitplane 1
subplot(3,3,5); imshow(bit_Foruth, []);title('Bit-Plane 4');%Show Bitplane 1
subplot(3,3,6); imshow(bit_Fifth, []);title('Bit-Plane 5');%Show Bitplane 1

subplot(3,3,7); imshow(bit_Sixth, []);title('Bit-Plane 6');%Show Bitplane 1
subplot(3,3,8); imshow(bit_Seventh, []);title('Bit-Plane 7');%Show Bitplane 1
subplot(3,3,9); imshow(bit_Eighth, []);title('Bit-Plane 8');%Show Bitplane 1


% Image reconstructed uing Bit plane 8 and 7
reImgA=zeros(size(img_Currency));
reImgA=bitset(reImgA,8,bitget(img_Currency,8));
reImgA=bitset(reImgA,7,bitget(img_Currency,7));
reImgA=uint8(reImgA);


% Image Reconstruced using Bit Planes 8, 7 , and 6
reImgB=zeros(size(img_Currency));
reImgB=bitset(reImgB,8,bitget(img_Currency,8));
reImgB=bitset(reImgB,7,bitget(img_Currency,7));
reImgB=bitset(reImgB,6,bitget(img_Currency,6));
reImgB=uint8(reImgB);



% Image Reconstruced using Bit Planes 8, 7 , 6 and 5
reImgC=zeros(size(img_Currency));
reImgC=bitset(reImgC,8,bitget(img_Currency,8));
reImgC=bitset(reImgC,7,bitget(img_Currency,7));
reImgC=bitset(reImgC,6,bitget(img_Currency,6));
reImgC=bitset(reImgC,5,bitget(img_Currency,5));
reImgC=uint8(reImgC);

% Reconstructed Image Plot

secFig = figure(2);
set(secFig, 'Position', [650 50 600 600])
subplot(2,3,1); imshow(reImgA);title('Bit-Plane 8, 7');
subplot(2,3,2); imshow(reImgB); title('Bit-Plane 8, 7, 6');
subplot(2,3,3); imshow(reImgC);title('Bit-Plane 8, 7, 6, 5');

subplot(2,3,4:6); imshow(img_Currency);title('Compare Bit-Plane 8, 7, 6, 5 with this Original Image');