function u=Sqrt20(m)

u=1;

if m>=0

    yn=[2,5];

    while abs(yn(2)-yn(1))>10e-6

        yn(2)=yn(1);

        yn(1)=0.5*(yn(1)+m/yn(1));

    end

    u=yn(1);

else

    disp('M<0!')

    u='no value';

    return;

end

