close all;
clc;

R = 0:255; 
C = 1;
N=2.2;

%Identity
figure, plot(R,R, 'k','LineWidth',2); % cuver black color='k' and width=2
annotation('textbox', [0.16,0.2,0.02,0.02],'String', 'Identity',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]);
hold on;

%Image Negative
L=256;
img_Neg= (L-1)-R;
plot(R,img_Neg, 'k','LineWidth',2);
annotation('textbox', [0.16,0.84,0.02,0.02],'String', 'Negative',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]);
hold on;


%power
img_power=C*(R.^N);
Temp=256/img_power(256);
I_P=Temp*img_power;
plot(R,I_P, 'k','LineWidth',2);
 annotation('textbox', [0.65,0.60,.15,0.00001],'String', 'nth power',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]); 
hold on;

%Nth root
img_NRoot=C*(R.^(1/N));
Temp1=256/img_NRoot(256);
I_NR=Temp1*img_NRoot;
plot(R,I_NR, 'k','LineWidth',2);
  annotation('textbox', [0.57,0.81,.15,0.00001],'String', 'nth root',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]);
hold on;


%log
img_Log = C * log(1+R);
Temp2=255/(C*log(256));
I_L = Temp2*img_Log; %uint8(S(R + 1));
plot(R,I_L, 'k','LineWidth',2);
annotation('textbox', [0.2,0.66,0.02,0.00001],'String', 'Log',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]);
hold on;

%inverse log
img_invLog = exp(R/Temp2)-1;
 plot(R,img_invLog,'k','LineWidth',2);
 annotation('textbox', [0.55,0.24,.15,0.00001],'String', 'Inverse Log',...
    'EdgeColor',[1 1 1],'LineWidth',0,'BackgroundColor',[1  1 1]);
hold on;
 
 title('Basic Gray Level Transformations');
xlabel('Input Intensity Level,r');
ylabel('Output Intensity Level,s');

 
 axis([0 255 0 255])
% for tick and labels
a=[0 63.75  127.5  191.25 255];
labels={'0' 'L/4' 'L/3' '2L/4' 'L-1'};
 set(gca, 'XTick',a, 'XTickLabel', labels);
set(gca, 'YTick',a, 'YTickLabel', labels);
