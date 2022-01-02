function [y] = calcsqrt(x)

%returns the sqrt of x

     lv=0;

     nv=x;

     while abs(nv-lv)>=10^-6

        lv=nv;

        nv=(lv+x/lv)/2;

     end

     disp(nv);

end

