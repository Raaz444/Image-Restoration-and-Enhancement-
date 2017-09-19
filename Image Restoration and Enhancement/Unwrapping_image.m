Z=zeros(480,480);
for i=1:380
for j=1:380
        x=j-190.5;
        y=190.5-i;
        %Converting Polar Coordinates (r,teta) to Cartesian Coordinates (x,y)
        rij=sqrt((x)^2+(y)^2); %pythagoras theorem
        teta=atan2(y,x); %Four quadrant inverse tangent
        r=abs((R0.*asin(rij/R0))); %given condition
        x1=(r.*cos(teta)); %r= x1/cos(teta)
        y1=(r.*sin(teta)); %r= y1/sin(teta)
        j1 =round(x1+225);
        i1 =round(225-y1);
        Z(i1,j1)= Image3(i,j);
    end
end

%%
figure
imshow(Z);
for p=1:4
Z = medfilt2(Z);% Passing image into a Cartesean coordinate system image, making the information on the image to be able to be directly implemented and understood. Image1 through a median filter
end
%Image5 = mat2gray(Image5);
figure
imshow(Z);
title('Output Image')
%%
for c=1:3
for i=1:380
for j=1:380
        x=j-190.5;
        y=190.5-i;
        %Converting Polar Coordinates (r,theta) to Cartesian Coordinates (x,y)
        rij=sqrt((x)^2+(y)^2); %cartesian points to polar amplitude
        teta=atan2(y,x); %Four quadrant inverse tangent
        r=abs((R0.*asin(rij/R0))); %given condition
        x1=(r.*cos(teta)); %r= x1/cos(teta)
        y1=(r.*sin(teta)); %r= y1/sin(teta)
        j1 =round(x1+225);
        i1 =round(225-y1);
        Z(i1,j1)= Image3(i,j);
end
end
end

%%
figure
imshow(Z);