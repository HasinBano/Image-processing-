close all;
clc;
img1 = imread('LenaFace.tif');
%img1=imread('cameraMan.tif');
figure, 

subplot(3,3,1), imshow(img1), title('Original Image');
p1 = subplot(3,3,2);
imhist(img1), title('Original Histogram');
axis([0 255 0 2400]);
set(p1, 'xtick' , 0:50:255); % for tick and labels
labels={'0' '1' '2' '3' '4' '5' '6'};
set(p1, 'YTick',0:400:2400, 'YTickLabel', labels);




%Show image after histogram equalization 
img1_eq = histeq(img1);
subplot(3,3,4), imshow(img1_eq), title('Equalized Image')

p2=subplot(3,3,5); 
imhist(img1_eq), title('Equalized Histogram');
axis([0 255 0 2400]);
set(p2, 'xtick' , 0:50:255); % for tick and labels
labels={'0' '1' '2' '3' '4' '5' '6'};
set(p2, 'YTick',0:400:2400, 'YTickLabel', labels);

p3=subplot(3,3,6);
m1 = ones(1,256)*.5;
plot(m1), title('Desired Histogram Shape');
axis([0 255 0 6]);
set(p3, 'xtick' , 0:50:255); % for tick and labels
labels={'0' '1' '2' '3' '4' '5' '6'};
set(p3, 'YTick',0:1:6, 'YTickLabel', labels);





% Show matched image and the desired histogram  consisting of  a straight line in the range of (0, 0) to (1, 1).
m2 = linspace(0,1,256);
img2 = histeq(img1,m2);

subplot(3,3,7), imshow(img2), title('Matched Image')
p4=subplot(3,3,8); 
imhist(img2), title('Matched Histogram');
axis([0 255 0 2400]);
set(p4, 'xtick' , 0:50:255); % for tick and labels
labels={'0' '1' '2' '3' '4' '5' '6'};
set(p4, 'YTick',0:400:2400, 'YTickLabel', labels);

p5=subplot(3,3,9);
plot(m2), title('Desired Histogram Shape'), ...
%ylim([0 1]), xlim([1 256]);
axis([0 255 0 6]);
set(p5, 'xtick' , 0:50:255); % for tick and labels
labels={'0' '1' '2' '3' '4' '5' '6'};
set(p5, 'YTick',0:1:6, 'YTickLabel', labels);

