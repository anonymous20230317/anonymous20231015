load data.mat


%输入参数
M=6;               %The total number of states
T=400;
%O=[1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3];
O=[1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,1,2,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,1,1,2,3,3,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3];
%O1=[1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,1,1,1,2,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,3];
O1=[1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,2,3,3,3,3,3,3,3,3,4,5,6,3,3,3,3,1,1,1,1,1];
O2=[1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1,2,3,3,3,3,3,3,3,3,3,3,5,6,3,3,3,3,3,1];
O3=[1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,1,3,3,3,3,3,3,3,3,3,3,3,1,3,3,3,3];


D=15;               %The maximum duration of states
K=6;  %The total number of observation values
W=20;

PAI=[0.063;
    0.0499;
    0.7375;
    0.0499;
    0.0499;
    0.0499];   %the initial probability of states

A=[0,1,0.0025,0,0,0;
   0,0,1,0,0,0;
   0.5,0,0,0.5,0.01,0
   0,0,0,0,1,0
   0,0,0,0,0,1
   0,0,1,0,0,0];    %The state Transition Probability Matrix

P=[1958/2400,280/2400,94/2400,23/2400,23/2400,0,0,0,0,0,0,0,0,0,0;
   1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
   40/296,40/296,39/296,36/296,31/296,27/296,24/296,19/296,15/296,13/296,8/296,3/296,1/296,0,0;
   1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
   1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
   1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;];     %The probability of state duration

B=[0.9560,0,0.044,0,0,0;
   0.0529,0.9471,0,0,0,0;
   0,0.0036,0.9929,0,0,0;
   0,0,0.0523,0.9477,0,0;
   0,0,0,0.0522,0.9478,0;
   0,0,0,0,0.0522,0.9478;];

%
% PAI=[24/400;
%     20/400;
%     296/400;
%     20/400;
%     20/400;
%     20/400];   %the initial probability of states
% 
% A=[0,1,1/100,0,0,0;
%    0,0,1,0,0,0;
%    1/2,0,0,1/2,1/100,0
%    0,0,0,0,1,0
%    0,0,0,0,0,1
%    0,0,1,0,0,0];    %The state Transition Probability Matrix
% 
% P=[1998/2400,296/2400,94/2400,3/2400,3/2400,0,0,0,0,0,0,0,0,0,0;
%    1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
%    40/296,40/296,39/296,36/296,31/296,27/296,24/296,19/296,15/296,13/296,8/296,3/296,1/296,0,0;
%    1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
%    1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
%    1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;];     %The probability of state duration
% 
B=[1,0,0,0,0,0;
   0,1,0,0,0,0;
   0,0,1,0,0,0;
   0,0,0,1,0,0;
   0,0,0,0,1,0;
   0,0,0,0,0,1;];


%初始值
ALPHA=zeros(M,D); 
ALPHA1=zeros(M,D); %非同类转移
ALPHA2=zeros(M,D); %同类转移

ALPHA(:,1:D)=repmat((PAI.*B(:,O(1))),1,D).*P;
ALPHAm1=zeros(M,1);
ALPHAmn=zeros(M,D);
ALPHAm1(:,1)=ALPHA(:,1);
ALPHAmn(:,1:D-1)=ALPHA(:,2:D);

ALPHAm11=zeros(M,1);%中间变量

%迭代α
for t=2:20
    for i=1:M
        ALPHAm11(i)=sum(ALPHAm1.*A(:,i));
    end
ALPHA1(:,1:D)=repmat((ALPHAm11.*B(:,O(t))),1,D).*P;
ALPHA2(:,1:D)=ALPHAmn.*repmat(B(:,O(t)),1,D);
ALPHA=ALPHA1+ALPHA2;
ALPHAm1(:,1)=ALPHA(:,1);
ALPHAmn(:,1:D-1)=ALPHA(:,2:D);

end
% s=sum(sum(ALPHA));
% disp(s);

y=hsmm_forwoard(M,T,O,D,PAI,A,P,B,W);
x1 = [1:1:T-W];
output1=y(x1);%正常序列的概率
% figure;
% plot(x1,output1);

ymin=min(y);
ymax=max(y);
x2=linspace(ymin,ymax,10);
yy=hist(y,x2);
yy=yy/length(y);
% figure;
% bar(x2,yy);

y1=hsmm_forwoard(M,T,O1,D,PAI,A,P,B,W);
% disp(y1)
x3 = [1:1:T-W];
output2=y1(x3);%异常序列的概率
% figure;
% plot(x1,output1,x3,output2);%异常序列对比的概率图
xlabel('观测序列')
ylabel('概率对数值')
legend('Normal','DDoS')
%title('正常-非常正观测序列概率')


ymin1=min(y1);
ymax1=max(y1);
x4=linspace(ymin1,ymax1,10);
yy1=hist(y1,x4);
yy1=yy1/length(y1);

% figure;
% bar(x4,yy1);
% figure;
% bar(x4,yy1);
hold on;
h=bar(x2,yy,1.5);
set(h,'FaceColor','r');


y2=hsmm_forwoard(M,T,O2,D,PAI,A,P,B,W);
%disp(y2)
x5 = [1:1:T-W];
output3=y2(x5);%异常序列的概率
% figure;
% plot(x1,output1,x5,output3);%异常序列对比的概率图
xlabel('观测序列')
ylabel('对数似然值')
legend('Normal','Falsification')
%title('正常-非常正观测序列概率')


y3=hsmm_forwoard(M,T,O3,D,PAI,A,P,B,W);
%disp(y3);
x7 = [1:1:T-W];
output4=y3(x7);%异常序列的概率
figure;
plot(x1,output1,'-xb',x3,output2,'-r',x7,output4,'-og','MarkerSize',3,'linewidth',1);%异常序列对比的概率图
xlabel('观测序列')
ylabel('概率对数值')
legend('Normal','DoS','Intercept')
% title('观测序列对数似然概率')



a=[-25:0.01:-10-0.01];
bn=DR_FPR(y,a);
% disp(b)
b1=DR_FPR(y1,a);
% disp(b1)
figure;
R=1-bn;
P_=2-bn-b1;
P=R./(P_);
f1=(2.*P.*R)./(P+R);
% c = polyfit(R, P, 25); %进行拟合，c为2次拟合后的系数
% d = polyval(c, R, 1); %拟合后，每一个横坐标对应的值即为d
plot(R,P,'-b',HMM_R1,HMM_P1,'-or',R,P_,'-xg','MarkerSize',5,'linewidth',1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1=(2.*P.*R)./(P+R);
[f1max1,index1]=max(f1);
disp(f1max1);
disp(P(index1));
disp(R(index1));
disp(2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%55
set(gca,'XTick',(0:0.1:1));%设置要显示坐标刻度
set(gca,'YTick',(0.4:0.1:1.1));%设置要显示坐标刻度
xlabel('Recall')
ylabel('Precision')
legend('HSMM','HMM','CUSUM')
grid on;
% title('DoS检测性能')



figure;
% P=P(500:1200);
% R=R(500:1200);
% v=a(500:1200);
% plot(v,P,v,R);
% set(gca,'YLim',[0 1.2]);%X轴的数据显示范围
plot(a,P,a,R)
plot(a,P,a,R,'linewidth',2)
xlabel('Threshold')
ylabel('Frequency')
legend('Precision','Recall')



b2=DR_FPR(y2,a);
% disp(b2)
figure;
R=1-bn;
P_=2-bn-b2;
P=R./(P_);

f1=(2.*P.*R)./(P+R);
[f1max2,index2]=max(f1);
disp(f1max2);
disp(P(index2));
disp(R(index2));
c = polyfit(R, P, 10); %进行拟合，c为2次拟合后的系数
d = polyval(c, R,1); %拟合后，每一个横坐标对应的值即为d

d(end-503:end)=1;
d(end-504)=1.00001;
plot(R,d,HMM_R2,HMM_P2,R,P_,'linewidth',2);
set(gca,'XTick',[0:0.5:1]);%设置要显示坐标刻度
set(gca,'YTick',[0:0.1:1]);%设置要显示坐标刻度
xlabel('Recall')
ylabel('Precision')
legend('HSMM','HMM','CUSUM')
title('Falsification检测性能')
% set(gca,'YLim',[0 1.2]);%X轴的数据显示范围
figure;
% P=P(500:1200);
% R=R(500:1200);
% v=a(500:1200);
% plot(v,P,v,R);
% set(gca,'YLim',[0 1.2]);%X轴的数据显示范围
plot(a,P,a,R,'linewidth',2)
xlabel('Threshold')
ylabel('Frequency')
legend('Precision','Recall')




b3=DR_FPR(y3,a);
% disp(b3)
figure;
R=1-bn;
P_=2-bn-b3;
P=R./(P_);
f1=(2.*P.*R)./(P+R);
[f1max3,index3]=max(f1);
c = polyfit(R, P, 10); %进行拟合，c为2次拟合后的系数
d = polyval(c, R,1); %拟合后，每一个横坐标对应的值即为d
d(end-481:end)=1;
d(end-482)=1.00001;
plot(R,P,'-b',HMM_R3,HMM_P3,'-or',R,P_,'-xg','MarkerSize',5,'linewidth',1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1=(2.*P4__.*R4__)./(P4__+R4__);
[f1max1,index1]=max(f1);
disp(f1max1);
disp(P4__(index1));
disp(R4__(index1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%55
set(gca,'XTick',(0:0.1:1));%设置要显示坐标刻度
set(gca,'YTick',(0.4:0.1:1.1));%设置要显示坐标刻度
xlabel('Recall')
ylabel('Precision')
legend('HSMM','HMM','CUSUM')
% title('Intercept检测性能')
grid on;
% set(gca,'YLim',[0 1.2]);%X轴的数据显示范围
figure;
% P=P(500:1200);
% R=R(500:1200);
% v=a(500:1200);
% plot(v,P,v,R);
% set(gca,'YLim',[0 1.2]);%X轴的数据显示范围
plot(a,P,a,R)
plot(a,P,a,R,'linewidth',2)
xlabel('Threshold')
ylabel('Frequency')
legend('Precision','Recall')



c = polyfit(bn, b3, 10); %进行拟合，c为2次拟合后的系数
d3 = polyval(c, bn, 1); %拟合后，每一个横坐标对应的值即为d

c = polyfit(bn, b2, 10); %进行拟合，c为2次拟合后的系数
d2 = polyval(c, bn, 1); %拟合后，每一个横坐标对应的值即为d

c = polyfit(bn, b1, 10); %进行拟合，c为2次拟合后的系数
d1 = polyval(c, bn, 1); %拟合后，每一个横坐标对应的值即为d

% figure;
% c = polyfit(b, b3, 10); %进行拟合，c为2次拟合后的系数
% d = polyval(c, b, 1); %拟合后，每一个横坐标对应的值即为d
% disp(d)
% plot(b,b3);
% set(gca,'XLim',[-0.02 0.3]);%X轴的数据显示范围
% set(gca,'XTick',[0:0.05:0.5]);%设置要显示坐标刻度
% set(gca,'YLim',[0.45 1.05]);%X轴的数据显示范围
% set(gca,'YTick',[0:0.1:1]);%设置要显示坐标刻度




