function y=judgemarkvo(s,c0,q)
m1=s-s*q;
if ~find(m1<0)
    y=1;
else
    if fjudgement(s,c0,q,0)
        y=1;
    else
        for i=1:100
            if fjudgement(s,c0,q,i)
                y=1;
                break
            end
                if ~ejudgement(s,c0,q,i)
                  y=0;
                  break
                end
        end
    end
end
                