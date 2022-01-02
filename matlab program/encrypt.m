% encrypt
original='This is my top secret message!';   
abcde=randperm(length(original));   
encoded=original(abcde);   
temp=[abcde;1:length(original)].'; 
temp=sortrows(temp); 
decoding=temp(:,2);   
decoded=encoded(decoding);   
disp(['Original: ' original]); 
disp(['Encoded : ' encoded]); 
disp(['Decoded : ' decoded]);   
correct=strcmp(original,decoded); 
disp(['Decoded correctly (1 true, 0 false): ' num2str(correct)]); 