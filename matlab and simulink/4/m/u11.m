b=listdlg('PromptString','选择何种中转方式','ListSize',[160,300],'ListString',{'长期','短期'})
s=inputdlg({'输入停留时间：周','日','小时','分'},'停留时间',4,{'0','<7','<24','<60'}) ;
   options.Resize='on';
   options.WindowStyle='normal';
   options.Interpreter='tex';
   Snum=str2double(s)
   fee=0; 
   [~,f]=size(b);
   if f==1
   switch b
       
           
       case  1 
           if Snum(3,1)<6
           fee=4200*Snum(1,1)+600*Snum(2,1)+100*Snum(3,1);
           else
               fee=4200*Snum(1,1)+600*(Snum(2,1)+1);
           end
           if Snum(4,1)>0
               fee=fee+100;
            
           end
          
           
       case 2
        if Snum(1,1)>0||Snum(2,1)>0||(Snum(4,1)+Snum(3,1)*60)>=150
            fee=2100*Snum(1,1)+300*(Snum(2,1));
            if    (Snum(4,1)+Snum(3,1)*60)>=30&&(Snum(4,1)+Snum(3,1)*60)<=150
                fee=fee+((Snum(4,1)-30-mod(Snum(4,1)-30,20))/20+1)*100;
            end
            if  (Snum(4,1)+Snum(3,1)*60)>=150
                fee=fee+300;
            end
           end
       if Snum(1,1)==0&&Snum(2,1)==0&&(Snum(4,1)+Snum(3,1)*60)>=30&&(Snum(4,1)+Snum(3,1)*60)<=150
           fee=100*Snum(3,1)*3+((Snum(4,1)-30-mod(Snum(4,1)-30,20))/20+1)*100;
       end
   
   end
   
   end
  st=num2str(fee);
  msgbox(['需付款：',st,'元']);
