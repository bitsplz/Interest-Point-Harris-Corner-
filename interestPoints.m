function interestPoints( image )
if size(image,3)>1 %dimension check
    image=rgb2gray(image); %convert to garyscale
end
corners = detectHarrisFeatures(image); %find corner
figure;
imshow(image); 
hold on;
plot(corners); %plot corners on image
%plot(corners.selectStrongest(50));
end

