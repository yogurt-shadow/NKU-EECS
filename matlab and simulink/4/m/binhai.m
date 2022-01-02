 disp('Welcome to BinHai International Airport self-service department! We''re glad to help you.')     
 disp(' ')
 disp('This is the Arbitariec page, we have two types for charge, one for a long stay(L-type), and another for a short stop(S-type)')
 disp(' ')
 disp('Do you want to learn the details?')
 disp(' ')
 a=input('Type ''1'' for ''Yes, I want to know'', and ''0'' for ''No, I''ve already known that''\n');
 if a==1
     disp('The L-type goes as follows:')
     disp('     $100.00 per hour, less than an hour regard as an hour to collect fees;')
     disp('     the top charge for one day is no more than $600.00;')
     disp('     the top charge for one week is no more than $4200.00;')
     disp(' ')
     disp('The S-type goes as follows:')
     disp('     free for the first 30 minutes, $100.00 per score minutes for the over part;')
     disp('     less than a score regard as a score to collect fees')
     disp('     the top charge for one day is $300.00;')
     disp('     you can''t stay for more than one day')
     disp(' ')
 end
 b=input('Which type do you prefer? 1 for the L-type, 2 for the S-type, and 0 for ''No, thanks, I won''t stay here''\n');
if b==0
    disp('Thanks for your patronage!')
    return;
elseif b==1
    disp('Please tell me how long will you stay here. Example: ''0 1 15'' stands for 0 week, 1 day, 15 hours')
    disp(' ')
    w=input('week\n');d=input('day\n');h=input('hour\n');
    if d>=7||h>=24
        disp('Invalid number!')
        return;
    end
    fe=4200*w+600*d;
    if h<=6
        fee=fe+100*h;
    else
        fee=fe+600;
    end
    disp(['The total charge will be $' num2str(fee)]);
elseif b==2
    disp('Please tell me how long will you stay here. Example: ''15 2'' stands for 15 hours, 2 scores of minutes')
    disp(' ')
    h=input('hour\n');s=input('scores of minutes\n');
     if s>3||h>=24
        disp('Invalid number!')
        return;
     end
    if h==0||(h==1&&s==0)
       fee=100*(s-1+3*h); 
    else 
        fee=300.00;
    end
    disp(['The total charge will be $' num2str(fee)]);
end 