function [sumsave,d,alarm]=CUSUMFunc(data,my)
summ=0;
temp=0;
sumsave=zeros(1,length(data));
minn=100;%��ʼ��ֵ
d=zeros(1,length(data));
alarm=zeros(1,length(data));
maxd=2.8;
miss=0.2;
 for i=1:length(data)
      temp=data(i)-my;
        if temp>0
          temp=temp-miss;
        else
          temp=temp+miss;
        end
        summ=summ+temp;
      %summ=summ+(data(i)-my); %�ۻ���
      %if summ>0
      %    summ=summ-miss;
      %end
      %if summ<=0
      %    summ=summ+miss;
      %end
      %%%%%%%%%%%%%%%%%%%%%%%%%%
      sumsave(i)=summ;
      %%%%%%%%%%%%%%%%%%%%%%%
   %   if sumsave(i)<minn   %Ѱ����С���
   %       minn=sumsave(i);
    %  end
    %  d(i)=sumsave(i)-minn;  %���������ۻ�������С�ۻ��͵Ĳ�d
           
     % if d(i)>=maxd
     %     alarm(i)=1;
     % else
      %    alarm(i)=0;
      %end
 
 end

end