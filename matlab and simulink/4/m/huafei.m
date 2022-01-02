choice=input('请选择停留方式，长时间请输入1，短时间请输入0:ch=');

switch choice

    case 1

        w=input('输入停留的周数:w= ');

        d=input('输入停留的天数：d= ');

        h=input('输入停留的小时数：h= ');

        m=input('输入停留的分数数：m= ');

        s=0;

        sh=h+m/60;

        if 0<sh<6

        while sh>0

            sh=sh-1;

            s=s+100;

        end;

        disp(s)

        end;

        if sh>=6

            s=600*(7*w+d)

            disp(s)

        end

    case 0

      h=input('输入停留的小时数：h=');

      m=input('输入停留的分数数:m='); 

      s=0; 

      sm=60*h+m-30;   

      while s<=300,sm>0

      sm=sm-20;

      s=s+100;

      end

      disp(s);

end

