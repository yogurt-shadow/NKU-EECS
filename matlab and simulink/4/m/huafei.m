choice=input('��ѡ��ͣ����ʽ����ʱ��������1����ʱ��������0:ch=');

switch choice

    case 1

        w=input('����ͣ��������:w= ');

        d=input('����ͣ����������d= ');

        h=input('����ͣ����Сʱ����h= ');

        m=input('����ͣ���ķ�������m= ');

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

      h=input('����ͣ����Сʱ����h=');

      m=input('����ͣ���ķ�����:m='); 

      s=0; 

      sm=60*h+m-30;   

      while s<=300,sm>0

      sm=sm-20;

      s=s+100;

      end

      disp(s);

end

