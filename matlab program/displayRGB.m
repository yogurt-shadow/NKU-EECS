%7.Image processing
function im=displayRGB(filename)   
a=imread(filename);    
A=size(a,1); 
B=size(b,2); 
x0=1:N; 
y0=1:M; 
[X0,Y0]=meshgrid(x0,y0);  
if A>=B
    x1=linspace(1,B,round(800*A/B));     
    y1=linspace(1,A,800); 
else
    x1=linspace(1,B,800);    
    y1=linspace(1,A,round(800*B/A)); 
end
[X1,Y1]=meshgrid(x1,y1);  
im1=zeros(length(y1),length(x1),3); 
for n=1:3     
    im1(:,:,n)=interp2(X0,Y0,a(:,:,n),X1,Y1,'cubic'); 
end
im=zeros(2*size(im1,1),2*size(im1,2),3);   
im(1:size(im1,1),1:size(im1,2),:)=im1; 
im(1:size(im1,1),size(im1,2)+1:end,1)=im1(:,:,1);
im(size(im1,1)+1:end,1:size(im1,2),2)=im1(:,:,2); 
im(size(im1,1)+1:end,size(im1,2)+1:end,3)=im1(:,:,3);  
im=uint8(im);
figure 
image(im);
axis equal 
axis tight 