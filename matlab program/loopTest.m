%loopTest.m
function loopTest(N)
for n=1:N
 if mod(n,2)==0
     if mod(n,3)==0
         disp([num2str(n) 'is divisible by 2 and 3']);
     else
         disp([num2str(n) 'is divisible by 2']);
     end
 elseif mod(n,3)==0
     disp([num2str(n) 'is divisible by 3']);
 elseif mod(n,3)~=0
     disp([num2str(n) 'is NOT divisible by 2 or 3']);
 end
end