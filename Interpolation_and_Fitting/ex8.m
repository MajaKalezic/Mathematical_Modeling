% .     P95 .  ��5.8 .  lsqcurvefit
clc, clear
a=textread('data1.txt');
y0=a(:,[2,7]); %��������y������
y0=nonzeros(y0); %ȥ��������Ԫ�أ��ұ��������
x0=[a(:,[3:5]);a([1:end-1],[8:10])]; %�ɷֿ��������������ݵ�2�о���
canshu0=rand(2,1); %��ϲ����ĳ�ʼֵ������ȡ��
%��������ϵĴ��ǲ�Ψһ�ģ����������ϲ��������½磬
lb=zeros(2,1); %���������������ϲ������½�,���½�ʱ��Ĭ��ֵ�ǿվ���[]
ub=[20;2]; %��������������Ͻ磬���Ͻ�ʱ��Ĭ��ֵ�ǿվ���[]
canshu=lsqcurvefit(@fun1,canshu0,x0,y0,lb,ub)  