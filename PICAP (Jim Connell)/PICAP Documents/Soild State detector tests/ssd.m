clc
clear

ssd=xlsread('ssd1.xlsx');

bin=ssd(:,2);
count=ssd(:,1);
Mult=ssd(:,3);

hold on
plot(bin, count);
title('Test 1')
xlabel('bin')
ylabel('count')
hold off

sum_count=sum(count);
sum_mult=sum(Mult);
mean = sum_mult/sum_count
dev=(bin(:)-mean).^2;
cd=((count(:).*dev(:)));
sum=sum(cd);
sd=(sum/sum_count)^.5




obj = gmdistribution.fit(bin,count)