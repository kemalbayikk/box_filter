boxFilter(Img);
function boxFilter(Img)
[x,y] = size(Img);
weight = 1;
I = padarray(Img,[10 10]);
for i = 1:x-1
    for j = 1:y-1
        sum = uint16(0);
        for ii = i:i+21  
            for jj = j:j+21
                sum = sum + uint16(I(ii, jj))*weight;
            end
        end
        I2(i,j) = floor(sum/(441*weight));
    end
end
I2 = uint8(I2);
figure
imshow(I2)
end
