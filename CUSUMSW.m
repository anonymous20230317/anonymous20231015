data1=[2 3 2 3 2 3 2 3 3 3 2 3 2 3 2 3 2 3 4 3 2 3 2 3 2 3 2 3 4 2 2 3 2 3 2 3 2 3 2 3];
data2=[5 3 5 4 5 3 5 4 4 4 4 5 3 5 4 5 3 5 4 5 3 5 3 5 3 5 3 6 2 6 3 6 2 6 3 6 3 6 2 6];
data3=[2 3 1 4 0 4 1 3 2 2 2 2 2 2 2 2 2 2 2 2 3 1 4 0 4 1 3 2 2 2 2 2 2 2 2 2 2 2 2 3];
data4=[1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 2 0 1 1 1 1 1];
my=mean(data1(:));

[sumSave1,d1]=CUSUMFunc(data1,my);
maxd=max(d1);
threshold=[0:0.01:maxd+2];
bn=CUSUMDR_FPR(d1,[-2.5*(maxd+0.2):0.01:0]);  %FN


R=1-bn;
x=[1:1:length(data1)];
figure;
[sumSave2,d2,alarm2]=CUSUMFunc(data2,my);
b2=CUSUMDR_FPR(d2,[-2.5*(maxd+0.2):0.01:0]);  %TN
P_=2-bn-b2;
P=R./(P_);
plot(R,P,'linewidth',2);
set(gca,'XTick',[0:0.5:1]);%设置要显示坐标刻度
R2=R;
P2=P;


figure;
[sumSave3,d3,alarm3]=CUSUMFunc(data3,my);
b3=CUSUMDR_FPR(d3,[-2.5*(maxd+0.2):0.01:0]); %TN
P_=2-bn-b3;
P=R./(P_);
plot(R,P,'linewidth',2);
set(gca,'XTick',[0:0.5:1]);%设置要显示坐标刻度
R3=R;
P3=P;


figure;
[sumSave4,d4,alarm4]=CUSUMFunc(data4,my);
b4=CUSUMDR_FPR(d4,[-2.5*(maxd+0.2):0.01:0]); %TN
P_=2-bn-b4;
P=R./(P_);
plot(R,P,'linewidth',2);
set(gca,'XTick',[0:0.5:1]);%设置要显示坐标刻度
R4=R;
P4=P;

