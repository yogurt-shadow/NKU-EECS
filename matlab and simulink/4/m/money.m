 a=input('������ѡ�����ֶ�����ʽ����1.��ʱ�䶺��;2.��ʱ�䶺����','s')
disp('�����㶺�����ܡ����졢��Сʱ���������أ�')
for i=1:4
b(i)=input('');
end
weeks=b(1);days=b(2);hours=b(3);minutes=b(4);
switch a
case '1'
disp('�����ܷ����ǣ�');
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
disp('�����ܷ�����:');
if minutes<=30&hours==0
hmoney=0;
elseif minutes+60*hours<90
hmoney=(minutes+60*hours-30)/20*100;
else
hmoney=300;
end
money=weeks*7*300+days*300+hmoney
end
