M=3;               %The total number of states
T=4;               %The length of the observation sequence
O=[1,2,1,2];        %The observation sequence
D=13;               %The maximum duration of states
K=6;               %The total number of observation values

PAI=[4/20;
    13/20;
    3/20];   %the initial probability of states

A=[0,1,0;
   0,0,1;
   1,0,0];    %The state Transition Probability Matrix

P=[0.5,0.5,0,0,0,0,0,0,0,0,0,0,0;
   1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13,1/13;
   1/3,1/3,1/3,0,0,0,0,0,0,0,0,0,0;];      %The probability of state duration

B=[1/2,1/2,0,0,0,0;
   0,0,1,0,0,0;
   0,0,0,1/3,1/3,1/3;];

ALPHA=zeros(M,D+1);         			% the forward variable
ALPHA(:,1:D)=repmat((PAI.*B(:,O(1))),1,D).*P;	%Equ.(3)
disp(ALPHA)
%c(1)=1/sum(sum(ALPHA));     			% scaling factor to avoid possible underflows
%ALPHA=ALPHA.*c(1);
ALPHAm1=zeros(M,T);
ALPHAm1(:,1)=ALPHA(:,1);
ALPHAm1Amn=zeros(M,T);
 
%---------------    Induction    ---------------
for t=2:T
    ALPHAm1Amn(:,t-1)=(ALPHA(:,1)'*A)';			
    EL=repmat((ALPHAm1Amn(:,t-1).*B(:,O(t))),1,D);
    EL=EL.*P;
    
    ALPHA(:,1:D)=ALPHA(:,2:D+1).*repmat(B(:,O(t)),1,D)+EL;	%Equ.(2)
   %disp(ALPHA)
    % c(t)=1/sum(ALPHA(:));
    %ALPHA=ALPHA.*c(t);
  
    ALPHAm1(:,t)=ALPHA(:,1);
   
end

