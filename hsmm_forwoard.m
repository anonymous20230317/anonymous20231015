
function[a]=hsmm_forwoard(M,T,O,D,PAI,A,P,B,W)
%迭代α
	a=[];
    for j=W:T

        %初始值
        ALPHA=zeros(M,D); 
        ALPHA1=zeros(M,D); %非同类转移
        ALPHA2=zeros(M,D); %同类转移
        ALPHA(:,1:D)=repmat((PAI.*B(:,O(j-W+1))),1,D).*P;
        ALPHAm1=zeros(M,1);
        ALPHAmn=zeros(M,D);
        ALPHAm1(:,1)=ALPHA(:,1);
        ALPHAmn(:,1:D-1)=ALPHA(:,2:D);
        ALPHAm11=zeros(M,1);%中间变量

        for t=j-W+2:j
            for i=1:M
                ALPHAm11(i)=sum(ALPHAm1.*A(:,i));
            end
            ALPHA1(:,1:D)=repmat((ALPHAm11.*B(:,O(t))),1,D).*P;
            ALPHA2(:,1:D)=ALPHAmn.*repmat(B(:,O(t)),1,D);
            ALPHA=ALPHA1+ALPHA2;
            ALPHAm1(:,1)=ALPHA(:,1);
            ALPHAmn(:,1:D-1)=ALPHA(:,2:D);
        end
        s=sum(sum(ALPHA));
        a(end+1)=log2(s)/log2(2);
        
    end
end



