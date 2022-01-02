%Displaydir.m
%5. Using Structs
function Displaydir 
a=dir;
for i=1:length(a)
    if ~a(i).isdir
        disp(['File ' a(i).name ' contains ' num2str(a(i).bytes) ' bytes.']); 
    end
end