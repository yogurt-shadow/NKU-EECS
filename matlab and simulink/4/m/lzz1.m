option=input('��������ת��ʽ��option=');

time=input('������ͣ��ʱ��ķ�������time=');

if option = '��ʱ�䶺��'then

switch fix(time/60)+1

case > 168

 fee=4200 

 week= fix((fix(time/60)+1)/24/7)+1

 day= fix((fix(time/60)+1)/24)+1

 hour= fix(time/60)+1

case >6

 fee=600* fix((fix(time/60)+1)/24)+1

week= fix((fix(time/60)+1)/24/7)+1

 day= fix((fix(time/60)+1)/24)+1

 hour= fix(time/60)+1

otherwise

   fee=100*(fix(time/60)+1)

   week= fix((fix(time/60)+1)/24/7)+1

 day= fix((fix(time/60)+1)/24)+1

 hour= fix(time/60)+1

   end

   else

   switch time

   case >60

   fee=300

 week= fix((fix(time/60)+1)/24/7)+1

 day= fix((fix(time/60)+1)/24)+1

hour= fix(time/60)+1

case >30

fee=100*(fix((time-30)/20)+1)

week= fix((fix(time/60)+1)/24/7)+1

 day= fix((fix(time/60)+1)/24)+1

hour= fix(time/60)+1

end

end