 a=input('请问您选择哪种逗留方式？（1.长时间逗留;2.短时间逗留）','s')
disp('您打算逗留几周、几天、几小时、几分钟呢？')
for i=1:4
b(i)=input('');
end
weeks=b(1);days=b(2);hours=b(3);minutes=b(4);
switch a
case '1'
disp('您的总费用是：');
if hours==0;
hmoney=minutes/60*100;
elseif hours==1
hmoney=100+minutes/60*(100+100);
elseif hours==2
hmoney=100+200+minutes/60*(100+100+100);
else
hmoney=600;
end
money=weeks*4200+600*days+hmoney
case '2'
disp('您的总费用是:');
if minutes<=30&hours==0
hmoney=0;
elseif minutes+60*hours<90
hmoney=(minutes+60*hours-30)/20*100;
else
hmoney=300;
end
money=weeks*7*300+days*300+hmoney
end
